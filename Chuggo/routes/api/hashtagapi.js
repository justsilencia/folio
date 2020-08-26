const keystone = require('keystone'),
      moment = require('moment');

exports.getSimilarHashtags = function(req, res) {
    const tagSearch = req.params.partialHashtag;
    
    keystone.list('Blurt').model.aggregate([
        {
            $unwind: '$hashtags'
        },
        {
            $match: {
                'hashtags': new RegExp(tagSearch, 'i')
            }
        },
        {
            $group: {
                _id: '$hashtags',
                tagCount: { $sum: 1 }
            }
        },
        {
            $sort: { tagCount: -1 }
        }
    ]).cursor().exec()
    .toArray(function(err, data) {
        if (err) console.log(err);
        
        // The following code ensures that only the most popular spelling
        // of a given hashtag is included in the search results.
        
        const returnData = data.reduce((acc, cur) => {
            const found = acc.find((i) => (i.toLowerCase() === cur._id.toLowerCase()));
            if (!found) acc.push(cur._id);
            return acc
        }, []);
        
        res.json(returnData);
    });
}

exports.getTrendingHashtags = function(req, res) { 

    var qryDateFrom;
    
    // This 3 month metric would obviously need to change based on site traffic.
    qryDateFrom = new Date(moment().subtract(3, 'months').format());
     
    keystone.list('Blurt').model.aggregate([
        {
            $match: {'blurtDate': { $gte: qryDateFrom, $lte: new Date() }}
        },
        {
            $unwind: '$hashtags'
        },
        {
            $group: {
                //_id: {$toLower: '$hashtags'},
                _id: '$hashtags',
                tagCount: { $sum: 1 }
            }
        },
        {
            $sort: {
                tagCount: -1
            }
        }
    ]).limit(10).cursor().exec()
    .toArray(function(err, data) {
        if (err) console.log(err);


        // The following code ensures that only the most popular spelling
        // of a given hashtag is included in the search results.
        
        const returnData = data.reduce((acc, cur) => {
            const found = acc.find(({ _id }) => (_id.toLowerCase() === cur._id.toLowerCase()));
            if (found) {
                found.tagCount += cur.tagCount;
            }
            else {
                acc.push(cur);
            }
            return acc;
        }, []).sort((a, b) => (b.tagCount - a.tagCount));
        
        res.json(returnData);
    });
}