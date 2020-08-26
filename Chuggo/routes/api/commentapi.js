const keystone = require('keystone'),
      moment = require('moment'),
      alertapi = require('./alertapi'),
      async = require('async');

exports.postComment = function(req, res) {
    const newComment = req.body.comment,
          checkTime = moment().subtract(45, 'seconds');

    if (newComment) {
        var frequency = false,
            commentData = {};
        async.series([
            function(cb) {
                keystone.list('Comment').model.find({
                    postedDate: {$gte: checkTime},
                    parentPost: {$eq: newComment.blurtId}
                })
                .exec(function(err, results) {
                    if (err) {
                        return cb(err);
                    } else {
                        if (results.length !== 0) {
                            frequency = true;
                            return cb('freq', frequency);
                        } else {
                            return cb();
                        }
                    }
                })
            },
            function(cb) {
                commentData = {
                    parentPost: newComment.blurtId,
                    postedDate: new Date(),
                    author: {
                        id: req.user._id,
                        displayName: req.user.displayName
                    },
                    text: newComment.txt
                }
                var comment = keystone.list('Comment').model,
                    addComment = new comment(commentData);
        
                addComment.save(function(err) {
                    if (err) {
                        return cb(err, frequency);
                    } else {
                        return cb();
                    }
                });

            },
            function(cb) {
                const newAlert = {
                    user: newComment.blurtAuthor,
                    alertType: alertapi.alertTypes.blurtComment,
                    refId: newComment.blurtId,
                    dateStamp: new Date()
                }
                alertapi.postAlert(newAlert).then(val => {
                    val? cb('An error occurred saving the alert.') : cb();
                });
            }
        ], function(err) {
            if (err) {
                if (frequency) {
                    res.json({success: false, msg: 'Please wait a bit...', spam: true});
                } else {
                    console.log('Error posting comment: --> ' + err);
                    res.json({success: false, msg: 'Error posting comment.'});
                }
            } else {
                // Fix for making user info available in comment component. Probably a temp fix.
                commentData.author.id = {
                    id: req.user._id,
                    displayName: req.user.displayName,
                    smImg: req.user.smImg
                }
                res.json({success: true, msg: 'Comment posted!', commentData: commentData});
            }
        });

    } else {
        res.json({success: false, msg: 'Type something in order to leave a comment.'});
    }
}

exports.getComments = function(req, res) {
    keystone.list('Comment').model.find({parentPost: { $eq: req.params.id }})
    .populate('author.id').sort({postedDate: -1})
    .exec(function(err, results) {
        if (!err) {
            res.json(results);
        } else {
            res.json({success: false});
        }
    });
}

exports.getCommentCount = function(req, res) {
    keystone.list('Comment').model.find({parentPost: { $eq: req.params.id }})
    .populate('author.id').sort({postedDate: -1})
    .exec(function(err, results) {
        if (!err) {
            res.json(results.length);
        } else {
            res.json({success: false});
        }
    });
}

