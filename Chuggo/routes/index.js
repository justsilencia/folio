/**
 * This file is where you define your application routes and controllers.
 *
 * Start by including the middleware you want to run for every request;
 * you can attach middleware to the pre('routes') and pre('render') events.
 *
 * For simplicity, the default setup for route controllers is for each to be
 * in its own file, and we import all the files in the /routes/views directory.
 *
 * Each of these files is a route controller, and is responsible for all the
 * processing that needs to happen for the route (e.g. loading data, handling
 * form submissions, rendering the view template, etc).
 *
 * Bind each route pattern your application should respond to in the function
 * that is exported from this module, following the examples below.
 *
 * See the Express application routing documentation for more information:
 * http://expressjs.com/api.html#app.VERB
 */

var keystone = require('keystone');
var middleware = require('./middleware');
var importRoutes = keystone.importer(__dirname);
const webpack = require('webpack');
const webpackConfig = require('../webpack.config');
const compiler = webpack(webpackConfig);

var webpackDevMiddleware = require("webpack-dev-middleware");
var webpackHotMiddleware = require("webpack-hot-middleware");

// Common Middleware
keystone.pre('routes', middleware.initLocals);
keystone.pre('render', middleware.flashMessages);

// Import Route Controllers
var routes = {
	views: importRoutes('./views'),
	api: importRoutes('./api')
};

// Setup Route Bindings
exports = module.exports = function (app) {

	// Views
	app.get('/', routes.views.index);
	app.get('/blog/:category?', routes.views.blog);
	app.get('/blog/post/:post', routes.views.post);
	app.all('/contact', routes.views.contact);
	app.all('/join', routes.views.join);
	app.get('/home', middleware.requireUser, routes.views.home.homeView);
	app.get('/profileview/:id', routes.views.profileview);
	app.get('/challenge', routes.views.challenge);
	app.get('/alerts', middleware.requireUser, routes.views.alerts);

	// DB api routes
	app.post('/home/:imgtype', middleware.requireUser, routes.api.imgloader.uploadProfileImg(keystone.get('profilePhotos')));
	app.post('/postblurt', middleware.requireUser, keystone.middleware.api, routes.api.blurtapi.postBlurt);
	app.post('/upvoteblurt', middleware.requireUser, keystone.middleware.api, routes.api.blurtapi.upvoteBlurt);
	app.get('/getblurts/:skip', middleware.requireUser, routes.api.blurtapi.getBlurts);
	app.get('/followers', middleware.requireUser, routes.api.followapi.getFollowers());
	app.get('/followingimg', middleware.requireUser, routes.api.followapi.getFollowingImg());
	app.get('/getfollowingblurts/:date', middleware.requireUser, routes.api.blurtapi.getFollowingBlurts);
	app.get('/getrandomblurts/:date', middleware.requireUser, routes.api.blurtapi.getRandomBlurts);
	app.get('/getSmallProfileImg/:id', middleware.requireUser, routes.api.imgloader.getSmallProfileImg());
	app.post('/postcomment', middleware.requireUser, routes.api.commentapi.postComment);
	app.get('/getcomments/:id', middleware.requireUser, routes.api.commentapi.getComments);
	app.get('/getcommentcount/:id', middleware.requireUser, routes.api.commentapi.getCommentCount);
	app.get('/getalerts', middleware.requireUser, routes.api.alertapi.getAlerts);
	app.get('/getallalerts', middleware.requireUser, routes.api.alertapi.getAllAlerts);
	app.get('/getblurtcommentalerts', middleware.requireUser, routes.api.alertapi.getBlurtCommentAlerts);
	app.get('/getblurtupvotealerts', middleware.requireUser, routes.api.alertapi.getBlurtUpvoteAlerts);
	app.get('/getsimilarhashtags/:partialHashtag', middleware.requireUser, routes.api.hashtagapi.getSimilarHashtags);
	app.get('/getsimilarusers/:partialUser', middleware.requireUser, routes.api.usersapi.getSimilarUsers);
	app.get('/gettrendinghashtags', routes.api.hashtagapi.getTrendingHashtags);
	app.get('/gettrendingmentions', routes.api.usersapi.getTrendingMentions);

	// Delete. This route was for a side project..
	app.get('/testapi', routes.api.test.getAlerts);

	app.use(
		webpackDevMiddleware(compiler, {
		noInfo: true,
		publicPath: webpackConfig.output.publicPath
		})
	);
	
	app.use(webpackHotMiddleware(compiler));
	// NOTE: To protect a route so that only admins can see it, use the requireUser middleware:
	// app.get('/protected', middleware.requireUser, routes.views.protected);

};
