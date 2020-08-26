var keystone = require('keystone'),
    fs = require('fs'),
    guid = require('uuid/v1'),
    join = require('path').join,
    async = require("async");

exports.uploadProfileImg = function(dir) {
    
    return function(req, res) {
        // Verify user is logged in.

        var locals = res.locals,
            imgtype = req.params.imgtype,
            imgname, 
            view = new keystone.View(req, res),
            isMain = imgtype == 'lgimg' ? true : false;

        view.on('post', function(next) {
            async.series([
                function(cb) {
                    // First create new image name, then disable old image
                    // by setting main = null
                    if (imgtype) {
                        imgname = guid() + '.png';
                        var imgModel = keystone.list('UserImage').model;
                        // Set main to null in order to retrieve image later.
                        imgModel.findOne({ owner: req.user._id, main: isMain }, function(err, img) {
                            if (!img) {
                                cb();
                            } else {
                                img.main = null;
                                img.save();
                                cb();
                            }
                        });
                    } else { return cb('There was an error, please try again later.'); }
                },
                function(cb) {
                    // Receive base64 data and convert to .png image.
                    if (req.body.base64lg !== undefined || req.body.base64sm !== undefined) {
                        var base64data = req.body.base64lg !== undefined ? req.body.base64lg.replace(/^data:image\/png;base64,/, "") : req.body.base64sm.replace(/^data:image\/png;base64,/, "");
                        
                        fs.writeFile(join(dir, imgname), base64data, {encoding: 'base64'}, function(err) {
                            if (err) {
                                console.log(err);
                                return cb(err);
                            }
                        });
                        // Create new record for new profile image.
                        var imgData = {
                            owner: req.user._id,
                            name: imgname,
                            alt: req.user.name + ' profile image.',
                            main: isMain
                        };
                        // Set current image values in user table for simple access
                        // enabling the avoidance of joing and hence mongo aggregates.
                        if (!isMain) {
                            keystone.list('User').model.update(
                                {'_id': req.user._id},
                                { $set: { 'smImg' : imgData.name}}
                            ).exec(function(err, result) {
                                if(err) {
                                    console.log(err);
                                }
                            });
                        } else {
                            console.log('ismain');
                            keystone.list('User').model.update(
                                {'_id': req.user._id},
                                { $set: { 'lgImg' : imgData.name}}
                            ).exec(function(err, result) {
                                console.log(result);
                                if(err) {
                                    console.log(err);
                                }
                            });
                        }
                        var userImg = keystone.list('UserImage').model;
                        var newImg = new userImg(imgData);
                        newImg.save(function(err) {
                            return err ? cb(err) : cb();
                        });
                    } else { return cb('There was an error, please try again later.'); }
                },
                function(cb) {
                    // Next two async operations grab image name value for
                    // locals object.
                    locals.profileInfo = {
                        lgImg: '',
                        smImg: ''
                    };
                    keystone.list('UserImage').model.findOne({ owner: req.user._id, main: true }, function(err, img) {
                        if (!err) {
                            locals.profileInfo.lgImg = img ? join('/images/profiles/', img.name) : '/images/profiles/Default-Lg.png';
                            cb();
                        } else { cb(err) }
                    });
                },
                function(cb) {
                    keystone.list('UserImage').model.findOne({ owner: req.user._id, main: false }, function(err, img) {
                        if (!err) {
                            locals.profileInfo.smImg = img ? join('/images/profiles/', img.name) : '/images/profiles/prof1.png';
                            cb();
                        } else { cb(err) }
                    });
                }
            ], function(err) {
                if (err) {
                    req.flash('error', 'There was a problem uploading your image. Please try again later.');
                    return next();
                } 
                req.flash('success', 'Image cropped and uploaded successfully!');
                res.redirect('/home');
            });
        });

        view.render('home');
        //var img = req.files.image;
        //  var rs = fs.createReadStream(img.path);
        //  var ws = fs.createWriteStream(join(dir, img.name));

        //  rs.pipe(ws);
        //  rs.on('end', function() {
        //      console.log('good upsy daisy!');
        //  });
    }
}

exports.getSmallProfileImg = function() {
    return function(req, res) {
        const userId = req.params.id;
        console.log(userId);
        keystone.list('UserImage').model.findOne({
            owner: userId,
            main: false
        }).exec(function(err, results) {
            if (!err) {
                res.json(results);
            } else {
                console.log(err);
            }
        });
    }
}