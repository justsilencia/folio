var keystone = require('keystone');


// Delete. This was just for a side project.
exports.getAlerts = function(req, res) {
    keystone.list('Alert').model.find().exec((err, data) => {
        console.log(data);
        res.json(data);
    });
}