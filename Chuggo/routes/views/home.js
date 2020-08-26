var keystone = require('keystone'),
    fs = require('fs'),
    join = require('path').join,
    async = require("async");

exports.homeView = function(req, res) {

    var view = new keystone.View(req, res),
        locals = res.locals;

    
    async.series([
        function(cb) {
            locals.profileInfo = {
                lgImg: '',
                smImg: ''
            };
            keystone.list('User').model.findOne({ _id: req.user._id }, function(err, user) {
                if (!err) {
                    locals.profileInfo.lgImg = user.lgImg ? join('/images/profiles/', user.lgImg) : '/images/profiles/Default-Lg.png';
                    cb();
                } else { cb(err) }
            });
        },
        function(cb) {
            keystone.list('User').model.findOne({ _id: req.user._id }, function(err, user) {
                if (!err) {
                    locals.profileInfo.smImg = user.smImg ? join('/images/profiles/', user.smImg) : '/images/profiles/prof1.png';
                    cb();
                } else { cb(err) }
            });
        }
    ], function(err) {
        if (err) console.log(err);
        view.render('home');
    });
    
}
