var keystone = require("keystone"),
    async = require("async");

exports = module.exports = function (req, res) {

    if (req.user) {
        return res.redirect('/');
    }

    var view = new keystone.View(req, res);
    var locals = res.locals;
    locals.section = 'join';
    locals.formData = req.body || {};

    view.on('post', function(next) {
        async.series([ 
            function (cb) {
                var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                if (!re.test(req.body.email)) {
                    req.flash('error', 'Please enter a valid email. e.g ben@gmail.com');
                    return cb(true);
                }
                return cb();
            },
            function(cb) {
                keystone.list('User').model.findOne({ email: req.body.email }, function(err, user) {
                    if (err || user) {
                        req.flash('error', 'User already exists with that email, please use a different email address.');
                        return cb(true);
                    }
                    return cb();
                });
            },
            function(cb) {
                if(req.body.avowed === null || req.body.avowed == '') {
                    req.flash('error', 'You must choose to avow yourself to the left or right.');
                    return cb(true);
                }
                return cb();
            },
            function (cb) {
                if (req.body.displayName.length < 5) {
                    req.flash('error', 'Please enter a display name of at least 5 characters.');
                    return cb(true);
                }
                return cb();
            },
            function (cb) {
                if (req.body.bio.length < 30) {
                    req.flash('error', 'Please use at least 30 characters in the Short Bio.');
                    return cb(true);
                }
                return cb();
            },
            function (cb) {
                if (req.body.password.length < 6) {
                    req.flash('error', 'Please use at least 6 characters for your password.');
                    return cb(true);
                }
                if (req.body.password != req.body.vpassword) {
                    req.flash('error', 'Passwords do not match. Please ensure you type the same password twice.');
                    return cb(true);
                }
                return cb();
            },
            function(cb) {
                var userData = {
                    name: {
                        first: req.body.firstname || null,
                        last: req.body.lastname || null
                    },
                    email: req.body.email,
                    displayName: req.body.displayName,
                    location: {
                        city: req.body.city || null,
                        state: req.body.state || null,
                        zip: req.body.zip || null
                    },
                    avow: {
                        avowed: req.body.avowed,
                        hasModified: false 
                    },
                    profession: req.body.profession,
                    shortbio: req.body.bio,
                    password: req.body.password,
                    isAdmin: false,
                    isMod: false,
                    isBlogAdmin: false
                };
                
                var User = keystone.list('User').model;
                var newUser = new User(userData);
                    
                    newUser.save(function(err) {
                        return cb(err);
                    });
            }
        ], function(err) {
            if (err) return next();
            
            var onSuccess = function() {
                req.flash('success', 'You\'ve successfully joined REVIWA! Thanks, enjoy, and try to be nice.');
                res.redirect('/home');
            }
            var onFail = function() {
                req.flash('error', 'There was a problem getting you signed up or logged in. Try logging in, if that doesn\'t work try signing up again.');
                return next();
            }

            keystone.session.signin({email: req.body.email, password: req.body.password}, req, res, onSuccess, onFail);
        });
    });
    
    view.render('join');
};