var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Blurt = new keystone.List('Blurt');

Blurt.add({
    author: { 
        id: { type: Types.Relationship, ref: 'User', index: true, many: false },
        displayName: { type: String, index: true } 
    },
    text: { type: String, index: true },
    blurtDate: { type: Types.Date, index: true },
    blurtImg: { type: Types.Key },
    vote: {
        tally: { type: Number },
        voters: { type: Types.Relationship, ref: 'User', index: true, many: true }
    },
    hashtags: { type: Types.TextArray, index: true },
    mentions: { type: Types.TextArray, index: true }
});

Blurt.relationship({ ref: 'Comment', path: 'comments', refPath: 'parentPost' });
//Blurt.relationship({ ref: 'Alert', path: 'alerts', refPath: 'alertBlurt'});

Blurt.defaultColumns = 'author, blurtDate, text';
Blurt.register();