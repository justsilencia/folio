const express = require('express');
const bodyParser = require('body-parser');
const compression = require('compression');
const cors = require('cors');
const helmet = require('helmet');
const multer = require('multer');

// Import routes.
const importAlphaRoute = require('../routes/import-alpha');
const alphaRoute = require('../routes/alpha-run');
const jobRoute = require('../routes/job-codes');
const classesRoute = require('../routes/class-lists');
const jobChangeRoute = require('../routes/create-jobchange');
const studentListRoute = require('../routes/student-lists');

const upload = multer({});

// Set default port for express app
const PORT = process.env.PORT || 4001;

// Create express app
const app = express();
app.set('view engine', 'ejs');

// Apply middleware
// Note: Keep this at the top, above routes
app.use(cors());
app.use(helmet());
app.use(compression());
app.use(bodyParser.urlencoded({ extended: true, limit: '5mb' }));
app.use(bodyParser.json({limit: '5mb'}));

// Implement routes
app.post('/importalpha', upload.any(), importAlphaRoute);
app.post('/postjobcode', jobRoute.postJobCode);
app.post('/deletejobcode/:code', jobRoute.deleteJobCode);
app.post('/postclass', classesRoute.postClass);
app.post('/postgroup', classesRoute.postGroup);
app.post('/deletegroup/:delgroup', classesRoute.deleteGroup);
app.post('/deleteclass/:delclass', classesRoute.deleteClass);
app.post('/updatestuclass', alphaRoute.updateStuClass);

app.get('/getclassstudents/:classname', studentListRoute.getClassStudents);
app.get('/getgroupstudents/:groupname', studentListRoute.getGroupStudents);
app.get('/getallgroups', studentListRoute.getAllGroups);
app.get('/getunassigned', studentListRoute.getUnnasigned);
app.get('/getalpha/:search', alphaRoute.searchAlpha);
app.get('/getindperson/:dc', alphaRoute.getIndPerson);
app.get('/getjobs', jobRoute.getJobCodes);
app.get('/getclasses', classesRoute.getClasses);
app.get('/getgroups', classesRoute.getGroups);
app.get('/createjobchange/:amjob/:pmjob/:firstname/:lastname/:dc/:curram/:currpm/:reason', jobChangeRoute);

// Route for job change page
app.get('/jobchangeform', (req, res) => {
  //res.sendFile('../public/jobchange/index.html');
  res.render('/jobchangeform');
});

// Implement 500 error route
app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.status(500).send('Something is broken.');
});

// Implement 404 error route
app.use(function (req, res, next) {
  res.status(404).send('Sorry, it seems that page does not exist.');
});


// Start express app
app.listen(PORT, function() {
  console.log(`Server is running on: ${PORT}`);
});