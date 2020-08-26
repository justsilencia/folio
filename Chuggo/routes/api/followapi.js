var keystone = require('keystone');
var async = require('async');

exports.getFollowingImg = function() {
    return function(req, res) {
        
        async.waterfall([
            function(callback) {
                keystone.list('Follow').model.find({"follower": req.user._id}, callback)
            },
            function(users, callback) {
                keystone.list('UserImage').model.find({
                    owner: { "$in": users.map(function(i) {
                        return i.followee
                    })},
                    main: false
                }, callback).limit(5)
            }
        ],
        function(err, results) {
            res.json(results);
        });
    }
}

exports.getFollowers = function() {
    return function(req, res) {
        keystone.list('Follow').model.find()
        .exec(function(err, results) {
            if (!err) {
                res.json(results);
            }
        });
    }
}