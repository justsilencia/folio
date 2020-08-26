var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Hashtag = new keystone.List('Hashtag', {
    hidden: true
});

Hashtag.add({
    tag: { type: String, index: true },
    dateAdded: { type: Types.Date },
    user: { type: Types.Relationship, ref: 'User', index: true }
});

Hashtag.schema.index({ "dateAdded": 1 }, { expireAfterSeconds: 2592000 });

Hashtag.register();

// var newrec = {
//     tag: "poop",
//     dateAdded: new Date(),
//     user: "gutfuk"
// }

// var hashmodel = keystone.list('Hashtag').model;
// var instance = new hashmodel(newrec);
// instance.save(function(err) {
//     if(err) console.log(err)
// })

// Create a TTL of 1 month (2592000 seconds) for the documents in this collection.
// This collection will be used to determine hashtags that are trending.

// Another hashtag archive collection will be created with a TTL of 6 months.

// Another hashtag archive collection will be created with no TTL. It will be a complete
// history of hashtags ever used.