var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Comment = new keystone.List('Comment');

Comment.add({
    parentPost: { type: Types.Relationship, ref: 'Blurt', index: true, many: false },
    postedDate: { type: Types.Date, index: true },
    author: {
        id: { type: Types.Relationship, ref: 'User', index: true, many: false },
        displayName: { type: String, index: true }
    },
    text: { type: String, index: true }
});

Comment.defaultColumns = 'postedDate, author, text';

Comment.register();