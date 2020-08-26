var keystone = require('keystone');
var Types = keystone.Field.Types;

/**
 * User Model
 * ==========
 */
var User = new keystone.List('User', {
	//hidden: true
});

User.add({
	name: { type: Types.Name, required: true, index: true },
	email: { type: Types.Email, initial: true, required: true, unique: true, index: true },
	displayName: { type: String, min: 2, max: 20, required: true, unique: true, initial: true, index: true },
	location: { 
		city: { type: String, max: 41 },
		state: { type: String, max: 3 },
		zip: { type: String, max: 6 }
	},
	avow: {
		 avowed: { type: String },
		 hasModified: { type: Boolean }
	},
	smImg: { type: String },
	lgImg: { type: String },
	profession: { type: String, max: 51 },
	shortbio: { type: Types.Html, wysiwig: true, height: 200, max: 5000 },
	password: { type: Types.Password, initial: true, required: true }
}, 'Permissions', {
	isAdmin: { type: Boolean, label: 'Can access Keystone', index: true },
	isMod: { type: Boolean, label: 'Forum moderator', index: true },
	isBlogAdmin: { type: Boolean, label: 'Blog admin', index: true },
});

// Provide access to Keystone
User.schema.virtual('canAccessKeystone').get(function () {
	return this.isAdmin;
});


/**
 * Relationships
 */
User.relationship({ ref: 'Follow', path: 'follows', refPath: 'follower' });
User.relationship({ ref: 'Follow', path: 'follows', refPath: 'followee' });
User.relationship({ ref: 'Post', path: 'posts', refPath: 'author' });
User.relationship({ ref: 'UserImage', path: 'userimages', refPath: 'owner' });
User.relationship({ ref: 'Blurt', path: 'blurts', refPath: 'author.id' });
User.relationship({ ref: 'Comment', path: 'comments', refPath: 'author.id' });
User.relationship({ ref: 'Hashtag', path: 'hashtags', refPath: 'user' });
/**
 * Registration
 */
User.defaultColumns = 'name, email, isAdmin';
User.register();
