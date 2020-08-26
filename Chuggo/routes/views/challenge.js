var keystone = require('keystone'),
    fs = require('fs');

module.exports = function(req, res) {
    var view = new keystone.View(req, res);
    var locals = res.locals;
    // var imgs = fs.readdirSync('./public/images/test');

    // locals.data = {
    //     imgs: []
    // }

    // imgs.forEach((img) => {
    //     locals.data.imgs.push(img);
    // });

    
    
    view.render('challenge');
}