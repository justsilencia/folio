const sqlite = require('sqlite3').verbose();
const fs = require('fs');

exports.makeRandom = function(req, res) {
    console.log(req.body.dirname);
    
    const mupath = req.body.dirname;
    fs.readdir(mupath, (files) => {
        console.log(files);
    });
    
}

exports.getJobCodes = function(req, res) {
    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    const strQuery = 'select * from jobcodes order by jobcode';

    db.all(strQuery, [], (err, rows) => {
        if (err) {
            console.log(err);
        } else {
            res.json(rows);
        }
    });

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
    });
}

exports.postJobCode = function(req, res) {
    console.log('called');
    if (req.body.jobcode && req.body.jobdesc) {
        
        const job = [
                     req.body.jobcode.toUpperCase(), 
                     req.body.jobdesc.toUpperCase(), 
                     req.body.assocclass.toUpperCase(),
                     req.body.shift.toUpperCase()
                    ];

        let sql = "insert into jobcodes(jobcode, jobdesc, class, shift) values (?,?,?,?)"

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.run(sql,job, (err) => {
            if (err) console.error(err);
            console.log('Added job to job table.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
            res.json('success');
        });

    } else {
        console.log('Error receiving job code information');
    }
}

exports.deleteJobCode = function(req, res) {
    if (req.params.code) {
        const jobcode = req.params.code;

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        let sql = "delete from jobcodes where jobcode = ?"

        db.run(sql,jobcode, (err) => {
            if (err) console.error(err);
            console.log('Added job to job table.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
            res.json('success');
        });
    }
}