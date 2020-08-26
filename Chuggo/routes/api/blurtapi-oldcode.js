var keystone = require('keystone'),
    mongoose = require('mongoose'),
    Schema = mongoose.Schema,
    fs = require('fs'),
    guid = require('uuid/v1'),
    join = require('path').join,
    async = require("async");

exports.getBlurts = function(req, res) {

    // keystone.list('Blurt').model.aggregate([
    //     {
    //         $lookup:{
    //             from: "users",       
    //             localField: "author.id",   
    //             foreignField: "_id", 
    //             as: "userImg"         
    //         }
    //     }
    //     ,
    //     {
    //         $unwind: '$userImg'
    //     },
    //     {
    //         $match: { 'author.id': {$ne: req.user._id}}
    //     },
    //     {
    //         $sample: {'size': 3}
    //     },
    //     {
    //         $project: {
    //             _id: '$userImg._id',
    //             name: '$userImg.name',
    //             text: 1,
    //             vote: 1,
    //             blurtDate: 1,
    //             smImg: '$userImg.smImg'
    //         }
    //     }
    //     ]).sort({ blurtDate: -1 })
    //     .cursor().exec()
    //     .toArray(function(err, data) {
    //         console.log(data);
    //         res.json(data);
    //     });

    var qry, userid,
    specificid = (req.params.id === 'false');
    userid = specificid ? req.user._id : req.params.id;

    if (req.params.skip == 'false') {
        qry = keystone.list('Blurt').model.aggregate([
            {
                $lookup:{
                    from: "users",       
                    localField: "author.id",   
                    foreignField: "_id", 
                    as: "userImg"         
                }
            }
            ,
            {
                $unwind: '$userImg'
            },
            {
                $match: { 'author.id': {$eq: req.user._id}}
            },
            {
                $project: {
                    _id: '$userImg._id',
                    name: '$userImg.name',
                    smImg: '$userImg.smImg',
                    text: 1,
                    vote: 1,
                    blurtDate: 1,
                    blurtImg: 1
                }
            }
            ]).sort({ blurtDate: -1 })
            .limit(parseInt(req.params.limit))
            .cursor()
            
    } else {
        qry = keystone.list('Blurt').model.aggregate([
            {
                $lookup:{
                    from: "users",       
                    localField: "author.id",   
                    foreignField: "_id", 
                    as: "userImg"         
                }
            }
            ,
            {
                $unwind: '$userImg'
            },
            {
                $match: { 'author.id': {$eq: req.user._id}}
            },
            {
                $project: {
                    _id: '$userImg._id',
                    name: '$userImg.name',
                    smImg: '$userImg.smImg',
                    text: 1,
                    vote: 1,
                    blurtDate: 1,
                    blurtImg: 1
                }
            }
            ]).sort({ blurtDate: -1 })
            .skip(parseInt(req.params.skip))
            .limit(parseInt(req.params.limit))
            .cursor()
    }

    qry.exec().toArray(function(err, results) {
        if (!err) {
            res.json(results);
        } else {
            res.json('Error getting user blurts --> ' + err);
        }
    });


    // OLD WORKING VERSION
    // var qry, userid,
    //     specificid = (req.params.id === 'false');
    // userid = specificid ? req.user._id : req.params.id;
    // if (req.params.skip == 'false') {
    //     qry = keystone.list('Blurt').model.find()
    //     .where('author.id').equals(userid)
    //     .sort('-blurtDate')
    //     .limit(parseInt(req.params.limit))
    //     .populate('author.id')
    // } else {
    //     qry = keystone.list('Blurt').model.find()
    //     .where('author.id').equals(userid)
    //     .sort('-blurtDate')
    //     .skip(parseInt(req.params.skip))
    //     .limit(parseInt(req.params.limit))
    //     .populate('author.id')
    // }
    // qry.exec(function(err, results) {
    //     if (!err) {
    //         res.json(results);
    //     } else {
    //         res.json(err);
    //     }
    // });

    // qry = keystone.list('Blurt').model.find()
    //     .where('author.id').equals(userid)
    //     .sort('-blurtDate')
    //     .skip(parseInt(req.params.skip))
    //     .limit(parseInt(req.params.limit))
    //     .populate('author.id')
}

exports.getFollowingBlurts = function(req, res) {
    async.waterfall([
        function(cb) {
            keystone.list('Follow').model.find({"follower": req.user._id}, cb)
        },
        function(users, cb) {
            keystone.list('Blurt').model.find({
                'author.id': { '$in': users.map((i) => {
                    return i.followee;
                })}
            }, cb).populate('author.id').sort({ blurtDate: -1 });
        }
    ], function(err, results) {
        if (!err) {
            res.json(results);
        } else {
            console.log('Error getting following blurts --> ' + err);
        }
    });
}

exports.getRandomBlurts = function(req, res) {

    // -------------------------------------------
    // SOLUTION WITH KEYSTONE MODEL. LACKS AGGREGATE ABILITY.
    // keystone.list('Blurt').model.find({'author.id': {$ne: req.user._id}})
    //         .populate('author.id')
    //         .exec(function(err, results) {
    //             if (!err) {
    //                 console.log(results);
    //                 res.json(results);
    //             } else {
    //                 console.log('Error getting random blurts --> ' + err);
    //             }
    //         });    
     
    // Working aggregate with keystone instance.!
    // keystone.list('Blurt').model.aggregate([
    //     {
    //         $match: { 'author.id': {$ne: req.user._id}}
    //     },
    //     {
    //         $sample: {'size': 3}
    //     }
    //     ]).sort({ blurtDate: -1 })
    //     .cursor().exec()
    //     .toArray(function(err, data) {
    //         res.json(data);
    //     });

    // Working aggregate with all features!!
    keystone.list('Blurt').model.aggregate([
        {
            $lookup:{
                from: "users",       
                localField: "author.id",   
                foreignField: "_id", 
                as: "userImg"         
            }
        }
        ,
        {
            $unwind: '$userImg'
        },
        {
            $match: { 'author.id': {$ne: req.user._id}}
        },
        {
            $sample: {'size': 3}
        },
        {
            $project: {
                _id: '$userImg._id',
                name: '$userImg.name',
                smImg: '$userImg.smImg',
                text: 1,
                vote: 1,
                blurtDate: 1,
                blurtImg: 1
            }
        }
        ]).sort({ blurtDate: -1 })
        .cursor().exec()
        .toArray(function(err, data) {
            if (!err) {
                res.json(data);
            } else {
                console.log('Error getting random blurts -->' + err);
            }
            
        });
}

exports.postBlurt = function(req, res) {
        var blurtData = {msg: 'Failed!'};
        var base64data = false;
        
        base64data = req.body.blurt.img.replace(/(^data:image\/jpeg;base64,)|(^data:image\/png;base64,)/, "");
        
        if (req.body.blurt) {
            var imgname = false;
            async.series([
                function(cb) {
                    if (base64data) {
                        const dir = keystone.get('blurtPhotos');
                        imgname = guid() + '.png';
                        
                        fs.writeFile(join(dir, imgname), base64data, {encoding: 'base64'}, function(err) {
                            if (err) {
                                console.log(err);
                                return cb(err);
                            }
                            return cb();
                        });
                    } else {return cb();}
                },
                function(cb) {
                        blurtData = {
                        author: {
                            id: req.user._id,
                            name: req.user.name.full
                        },
                        text: req.body.blurt.txt,
                        blurtDate: new Date(),
                        blurtImg: imgname ? imgname : false,
                        vote: 0
                    }
                    var userBlurt = keystone.list('Blurt').model,
                        newBlurt = new userBlurt(blurtData);
                    newBlurt.save(function(err) {
                        return err ? cb(err) : cb();
                    });
                }
            ], function(err) {
                if (err) {
                    console.log('error')
                    res.json(JSON.stringify({'error': 'Error submitting post.'}));
                } else {
                    res.json(blurtData);
                }
            });

            
        } else {
            res.json({msg: 'Please enter something before submitting a blurt!'});
        }
}

exports.deleteBlurt = function() {
    return function(req, res) {

    }
}

exports.upvoteBlurt = function() {

}
