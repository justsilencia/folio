var keystone = require('keystone'),
    Types = keystone.Field.Types;


var UserImage = new keystone.List('UserImage', {
    //hidden: true
});

UserImage.add({
    owner: { type: Types.Relationship, ref: 'User', index: true, many: false },
    name: { type: Types.Key, index: true },
    alt: { type: String },
    main: { type: Boolean },
    timeStamp: { type: String }
});

UserImage.defaultColumns = 'name, timeStamp';
UserImage.register();

