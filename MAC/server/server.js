const express = require('express');
const bodyParser = require('body-parser');
const compression = require('compression');
const cors = require('cors');
const helmet = require('helmet');
const multer = require('multer');
const importAlphaRoute = require('../routes/import-alpha');
const getAlpha = require('../routes/alpha-run');
const jobRoute = require('../routes/job-codes');

const upload = multer({});

// Import routes
//const booksRouter = require('./routes/books-route');

// Set default port for express app
const PORT = process.env.PORT || 4001;

// Create express app
const app = express();

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
app.post('/randomize', jobRoute.makeRandom);

app.get('/getalpha/:search', getAlpha);
app.get('/getjobs', jobRoute.getJobCodes);


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