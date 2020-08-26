var keystone = require('keystone');

exports = module.exports = function (req, res) {

	var view = new keystone.View(req, res);
	var locals = res.locals;
	locals.data = {};

	// locals.section is used to set the currently selected
	// item in the header navigation.
	locals.section = 'home';

	view.on('init', function (next) {
		var q = keystone.list('Post').model.find()
			.sort('-publishedDate')
			.limit(2);

		q.exec(function (err, results) {
			locals.data.posts = results;
			next(err);
		});
	});

	view.on('init', function(next) {
		var q = keystone.list('Post').model
					.find().sort('-publishedDate')
					.limit(6)
					.populate('author categories');

		if (locals.data.category) {
			q.where('categories').in([locals.data.category]);
		}

		q.exec(function(err, results) {
			var num = 1;
			results.forEach(function(o) {
				o['css'] = 'blog-panel' + num++;
			});
			
			locals.data.blogs = results;
			next(err);
		});
	});

	view.on('init', function(next) {
		var marqQ = keystone.list('MarqueeQuotes').model.find()
						.where('active').equals('active');

		marqQ.exec(function(err, results) {
			locals.data.quotes = results;
			next(err)
		});
	});

	view.on('init', function(next) {
		
		var discObj = {
				'disc1': {
					'date': '1/15/19',
					'img': 'prof1.jpg',
					'user': 'Mr. Paine',
					'title': 'Perhaps we should leave them...',
					'comments': 16,
					'commentList': {},
					'votecount': 3
				},
				'disc2': {
					'date': '1/8/19',
					'img': 'prof2.jpg',
					'user': 'Mr. Franklin',
					'title': "They aren't incapable of learning, however much more is to be considered.",
					'comments': 12,
					'commentList': {
						"Jerrymander": {
							"burpComment": "It's a good point, we can't recreate evo."
						}
					},
					'votecount': 8
				},
				'disc3': {
					'date': '1/2/19',
					'img': 'prof3.jpg',
					'user': 'Mr. Lincoln',
					'title': "Why is racism considered hateful? Seems the opposite.",
					'comments': 10,
					'commentList': {},
					'votecount': 8
				}
			}	
		
		locals.data.discourse = discObj;

		next();
	});

	// Render the view
	view.render('index');
};
