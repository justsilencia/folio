var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Follow = new keystone.List('Follow', {
    //hidden: true
});

Follow.add({
    follower: { type: Types.Relationship, ref: 'User', index: true, many: false },
    followee: { type: Types.Relationship, ref: 'User', index: true, many: false }
    // Add date added!!
});

Follow.register();