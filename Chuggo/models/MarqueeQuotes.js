var keystone = require('keystone');
var Types = keystone.Field.Types;


// Model for marquee quotes.

var MarqueeQuotes = new keystone.List('MarqueeQuotes', {
//  hidden: true
});

MarqueeQuotes.add({
  author: { type: Types.Text, initial: true, required: true, min: 5, max: 30 },
  quote: { type: String },
  dateAdded: { type: Types.Date, index: true },
  active: { type: Types.Select, options: 'active, inactive', default: 'inactive', index: true }
});

MarqueeQuotes.defaultColumns = 'active, dateAdded|20%, author|20%, quote|40%';

MarqueeQuotes.register();