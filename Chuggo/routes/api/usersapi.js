const keystone = require('keystone'),
      moment = require('moment'),
      urlMetadata = require('url-metadata');

exports.getSimilarUsers = function(req, res) {
    const userSearch = req.params.partialUser;
    
    keystone.list('User').model.aggregate([
        {
            $match: {
                'displayName': new RegExp(userSearch, 'i')
            }
        },
        {
            $sort: { displayName: -1 }
        }
    ]).cursor().exec()
    .toArray(function(err, data) {
        if (err) console.log(err);
        res.json(data);
    });
}

exports.getTrendingMentions = function(req, res) {
    var qryDateFrom;

    // urlMetadata('https://creditscoremaestro.com/Blog/2019/Credit-Scores-Vary-Depending-Who-Pulls.aspx')
    //     .then(function (metadata) { // success handler
    //             console.log(metadata)
    //         },
    //         function (error) { // failure handler
    //             console.log(error)
    //     });
    
    // This 3 month metric would obviously need to change based on site traffic.
    qryDateFrom = new Date(moment().subtract(3, 'months').format());
     
    keystone.list('Blurt').model.aggregate([
        {
            $match: {'blurtDate': { $gte: qryDateFrom, $lte: new Date() }}
            
        },
        {
            $unwind: '$mentions'
        },
        {
            $group: {
                //_id: {$toLower: '$mentions'},
                _id: '$mentions',
                tagCount: { $sum: 1 } 
            }
        },
        {
            $sort: {
                tagCount: -1
            }
        }
    ]).cursor().exec()
    .toArray(function(err, data) {
        if (err) console.log(err);
        res.json(data);
    });
}