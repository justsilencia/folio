var keystone = require('keystone'),
    Types = keystone.Field.Types;

var Alert = new keystone.List('Alert', {
    hidden: true
});

Alert.add({
    user: { type: Types.Relationship, ref: 'User', index: true, many: false },
    alertType: { type: String, index: true },
    //refBlurtId:  { type: Types.Relationship, ref: 'Blurt' },
    refId: { type: String },
    dateStamp: { type: Types.Date}
});

Alert.register();