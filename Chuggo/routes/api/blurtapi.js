var keystone = require('keystone'),
    fs = require('fs'),
    guid = require('uuid/v1'),
    join = require('path').join,
    async = require("async"),
    alertapi = require('./alertapi'),
    moment = require('moment');

exports.getBlurts = function(req, res) {

    var qry,
        limit = 42;

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
                    _userid: '$userImg._id',
                    name: '$userImg.name',
                    displayName: '$userImg.displayName',
                    smImg: '$userImg.smImg',
                    text: 1,
                    vote: 1,
                    blurtDate: 1,
                    blurtImg: 1
                }
            }
            ]).sort({ blurtDate: -1 })
            .limit(limit)
            .cursor()
            
     } else {
        var skip = limit * req.params.skip;
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
                    _userid: '$userImg._id',
                    name: '$userImg.name',
                    displayName: '$userImg.displayName',
                    smImg: '$userImg.smImg',
                    text: 1,
                    vote: 1,
                    blurtDate: 1,
                    blurtImg: 1
                }
            }
            ]).sort({ blurtDate: -1 })
            .skip(skip)
            .limit(limit)
            .cursor()
    }

    qry.exec().toArray(function(err, results) {
        if (!err) {
            res.json(results);
        } else {
            res.json('Error getting user blurts --> ' + err);
        }
    });
}

exports.getFollowingBlurts = function(req, res) {

    const fromDate = (req.params.date == 'false') ? false : new Date(req.params.date);
    var qryDateFrom, qryDateTo;
    if (fromDate) {
        qryDateFrom = new Date(moment(fromDate).subtract(1, 'months').format());
        qryDateTo = new Date(moment(fromDate).subtract(1, 'days').format());
    } else {
        qryDateFrom = new Date(moment().subtract(1, 'months').format());
        qryDateTo = new Date();
    }
    
    var pipeline = [
        {
            $lookup: {
                from: 'blurts',
                localField: 'followee',
                foreignField: 'author.id',
                as: 'followerBlurts'
            }
        },
        {
            $unwind: '$followerBlurts'
        },
        {
            $lookup: {
                from: 'users',
                localField: 'followee',
                foreignField: '_id',
                as: 'usertbl'
            }
        },
        {
            $unwind: '$usertbl'
        },
        {
            $match: {
                'follower': { $eq: req.user._id },
                'followerBlurts.blurtDate': { $gte: qryDateFrom, $lte: qryDateTo }
            }
        },
        {
            $sample: { 'size': 42 }
        },
        {
            $project: {
                _id: '$followerBlurts._id',
                _userid: '$usertbl._id',
                name: '$usertbl.name',
                displayName: '$usertbl.displayName',
                smImg: '$usertbl.smImg',
                text: '$followerBlurts.text',
                vote: '$followerBlurts.vote',
                blurtDate: '$followerBlurts.blurtDate',
                blurtImg: '$followerBlurts.blurtImg'
            }
        }
    ];

    keystone.list('Follow').model.aggregate(pipeline)
    .sort({blurtDate: -1})
    .cursor().exec()
    .toArray(function(err, data) {
        if (!err) {
            res.json(data);
        } else {
            console.log('Error getting following blurts --> ' + err);
            res.json({msg: 'Error getting blurts..'});
        }
    });
}

exports.getRandomBlurts = function(req, res) {
    const fromDate = (req.params.date == 'false') ? false : new Date(req.params.date);
    var qryDateFrom, qryDateTo;
    
    if (fromDate) {
        qryDateFrom = new Date(moment(fromDate).subtract(3, 'months').format());
        qryDateTo = new Date(moment(fromDate).subtract(1, 'days').format());
    } else {
        qryDateFrom = new Date(moment().subtract(3, 'months').format());
        qryDateTo = new Date();
    }
    
    var pipeline = [
        {
            $lookup: {
                from: 'users',
                localField: 'author.id',
                foreignField: '_id',
                as: 'userImg'
            }
        },
        {
            $unwind: '$userImg'
        },
        {
            $match: { 
                $and: [
                    {'author.id': { $ne: req.user._id }},
                    {'blurtDate': { $gte: qryDateFrom, $lte: qryDateTo }}
                ]
            }
        },
        {
            $sample: { 'size': 42 }
        },
        {
            $project: {
                _id: 1,
                _userid: '$userImg._id',
                name: '$userImg.name',
                displayName: '$userImg.displayName',
                smImg: '$userImg.smImg',
                text: 1,
                vote: 1,
                blurtDate: 1,
                blurtImg: 1
            }
        }
    ];

    keystone.list('Blurt').model.aggregate(pipeline).sort({ blurtDate: -1 })
        .cursor().exec()
        .toArray(function(err, data) {
            if (!err) {
                res.json(data);
            } else {
                console.log('Error getting random blurts --> ' + err);
                res.json({msg: 'Error getting blurts..'});
            }
        });
}

exports.postBlurt = function(req, res) {
        var blurtData = {msg: 'Failed!'};
        var base64data = false;
        
        if (typeof req.body.blurt.img == 'string') {
            base64data = req.body.blurt.img.replace(/(^data:image\/jpeg;base64,)|(^data:image\/png;base64,)/, "");
        }
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
                        // Remove the hashtags and mentions from the blurt for storing in db.
                        var hashtags, mentions;

                        if (req.body.blurt.hashtags) {
                            hashtags = req.body.blurt.hashtags.map(item => {
                                return String(item).replace('#', '');
                            });
                        }
                        if (req.body.blurt.mentions) {
                            mentions = req.body.blurt.mentions.map(item => {
                                return String(item).replace('@', '');
                            });
                        }
                        
                        blurtData = {
                        author: {
                            id: req.user._id,
                            displayName: req.user.displayName
                        },
                        text: req.body.blurt.txt,
                        blurtDate: new Date(),
                        blurtImg: imgname ? imgname : 'false',
                        vote: {
                            tally: 0
                        },
                        hashtags: hashtags? [...hashtags] : [],
                        mentions: mentions? [...mentions] : []
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
                    blurtData._id = '484ty784jkg4';
                    blurtData.name = {
                        first: req.user.name.first
                    }
                    blurtData.displayName = req.user.displayName;
                    blurtData.smImg = req.user.smImg;
                    res.json(blurtData);
                }
            });
        } else {
            res.json({msg: 'Please enter something before submitting a blurt!'});
        }
}

exports.deleteBlurt = function(req, res) {
    
}

exports.upvoteBlurt = function(req, res) {
    const blurtId = req.body.blurt.id,
          blurtModel = keystone.list('Blurt').model;
    
    blurtModel.findOne(
        { _id: blurtId, 'vote.voters': {$ne: req.user._id} },
        (err, blurt) => {
            if ((blurt) && (!err)) {
                if (blurt.author.id != req.user._id) {
                    var blurtVote  = blurt.vote.tally + 1;
                    blurt.vote = {
                        tally: blurtVote,
                        voters: req.user._id
                    }
                    blurt.save();

                    const newAlert = {
                        user: blurt.author.id,
                        alertType: alertapi.alertTypes.blurtUpvote,
                        refId: blurtId,
                        dateStamp: new Date()
                    }
                    alertapi.postAlert(newAlert).then(val => {
                        val? console.log('An error occurred saving the upvote alert for userId --> ' + blurt.author._id + '.') : null;
                    });

                    res.json({success: true});
                } else {
                    res.json({success: false});
                }
                
            } else {
                if (err) console.log('Error upvoting blurt --> ' + err);
                res.json({success: false});
            }
    });
}
