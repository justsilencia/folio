var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Notice = new keystone.List('Notice', {
    hidden: true
});

Notice.add({
    user: { type: Types.Relationship, ref: 'User', index: true, many: false },
    noticeType: { type: String, index: true },
    refId:  { type: String },
    dateStamp: { type: Types.Date}
});

Notice.register();