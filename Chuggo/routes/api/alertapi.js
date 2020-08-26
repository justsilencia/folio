const keystone = require('keystone');

exports.alertTypes = {
    allAlerts: 'all',
    blurtComment: 'blurtcomment',
    blurtUpvote: 'blurtupvote'
}

exports.postAlert = async function(obj) {
    var Alert = keystone.list('Alert').model,
        addAlert = new Alert(obj),
        isErr = false;
        
    await addAlert.save(function(err) { 
        if (err) {
            isErr = true;
        }
    });

    return isErr;
}

exports.getAlerts = function(req, res) {
    keystone.list('Alert').model
    .aggregate([
        {
            $match : { 'user': {$eq : req.user._id}}
        },
        {
            $group : { 
                '_id' : {
                    'refId' : '$refId',
                    'alertType' : '$alertType'
                }
            }
        }
    ])
    .cursor()
    .exec()
    .toArray(function(err, results) {
        if (!err) {
            res.json(results);
        } else {
            console.log('Error getting user alerts --> ' + err);
            res.json({msg: 'Error getting alerts.'});
        }
    });
}

exports.getAllAlerts = function(req, res) {
    keystone.list('Alert').model
    .aggregate([
        {
            $addFields: {
                convertedId: { $toObjectId: '$refId' }
            }
        },
        {
            $lookup: {
                from: 'blurts',
                localField: 'convertedId',
                foreignField: '_id',
                as: 'alertBlurts'
            }
        },
        {
            $unwind: '$alertBlurts'
        },
        {
            $match: {
                $and: [
                    { 'user': { $eq: req.user._id }}
                ]
            }
        },
        {
            $project: {
                _id: '$alertBlurts._id',
                user: '$usertbl._id',
                name: req.user.name,
                displayName: req.user.displayName,
                smImg: req.user.smImg,
                text: '$alertBlurts.text',
                vote: '$alertBlurts.vote',
                blurtDate: '$alertBlurts.blurtDate',
                blurtImg: '$alertBlurts.blurtImg'
            }
        }
    ])
    .sort({blurtDate: -1})
    .cursor().exec()
    .toArray(function(err, data) {
        if (!err) {
            res.json(data);
        } else {
            console.log('Error getting alert blurts --> ' + err);
            res.json({msg: 'Error getting alerts..'});
        }
    })
}

exports.getBlurtCommentAlerts = function(req, res) {
    keystone.list('Alert').model
    .aggregate([
        {
            $addFields: {
                convertedId: { $toObjectId: '$refId' }
            }
        },
        {
            $lookup: {
                from: 'blurts',
                localField: 'convertedId',
                foreignField: '_id',
                as: 'alertBlurts'
            }
        },
        {
            $unwind: '$alertBlurts'
        },
        {
            $match: {
                $and: [
                    { 'user': { $eq: req.user._id }},
                    { 'alertType': { $eq: 'blurtcomment' } }
                ]
            }
        },
        {
            $project: {
                _id: '$alertBlurts._id',
                user: '$usertbl._id',
                name: req.user.name,
                displayName: req.user.displayName,
                smImg: req.user.smImg,
                text: '$alertBlurts.text',
                vote: '$alertBlurts.vote',
                blurtDate: '$alertBlurts.blurtDate',
                blurtImg: '$alertBlurts.blurtImg'
            }
        }
    ])
    .sort({blurtDate: -1})
    .cursor().exec()
    .toArray(function(err, data) {
        if (!err) {
            res.json(data);
        } else {
            console.log('Error getting alert blurts --> ' + err);
            res.json({msg: 'Error getting alerts..'});
        }
    })
}

exports.getBlurtUpvoteAlerts = function(req, res) {
    keystone.list('Alert').model
    .aggregate([
        {
            $addFields: {
                convertedId: { $toObjectId: '$refId' }
            }
        },
        {
            $lookup: {
                from: 'blurts',
                localField: 'convertedId',
                foreignField: '_id',
                as: 'alertBlurts'
            }
        },
        {
            $unwind: '$alertBlurts'
        },
        {
            $match: {
                $and: [
                    { 'user': { $eq: req.user._id }},
                    { 'alertType': { $eq: 'blurtupvote' } }
                ]
            }
        },
        {
            $project: {
                _id: '$alertBlurts._id',
                user: '$usertbl._id',
                name: req.user.name,
                displayName: req.user.displayName,
                smImg: req.user.smImg,
                text: '$alertBlurts.text',
                vote: '$alertBlurts.vote',
                blurtDate: '$alertBlurts.blurtDate',
                blurtImg: '$alertBlurts.blurtImg'
            }
        }
    ])
    .sort({blurtDate: -1})
    .cursor().exec()
    .toArray(function(err, data) {
        if (!err) {
            res.json(data);
        } else {
            console.log('Error getting alert blurts --> ' + err);
            res.json({msg: 'Error getting alerts..'});
        }
    })
}