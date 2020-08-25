const sqlite = require('sqlite3').verbose();

module.exports = function(req, res) {

    res.locals.firstName = req.params.firstname;
    res.locals.lastName = req.params.lastname;
    res.locals.currAM = req.params.curram;
    res.locals.currPM = req.params.currpm;
    res.locals.newJobAM = (req.params.amjob !== 'na')? req.params.amjob : '';
    res.locals.newJobPM = (req.params.pmjob !== 'na')? req.params.pmjob : '';
    res.locals.dc = req.params.dc? req.params.dc : '';
    res.locals.reason = (req.params.reason !== 'na')? req.params.reason : '';

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    if (req.params.amjob.includes('E15')) {
        let qry = 'select * from jobcodes where jobcode = ?';
        db.get(qry, [req.params.amjob], (err, row) => {
            if (row) {
                let updateClass = [row.class, req.params.dc];
                let sql2 = 'update roster set classam = ? where dc = ?';

                db.run(sql2, updateClass, (err) => {
                    if (err) return console.error(err);
                    console.log('Updated class.');
                });
            }
        });
    }

    if (req.params.pmjob.includes('E15')) {
        let qry = 'select * from jobcodes where jobcode = ?';
        db.get(qry, [req.params.pmjob], (err, row) => {
            if (row) {
                let updateClass = [row.class, req.params.dc];
                let sql2 = 'update roster set classpm = ? where dc = ?';

                db.run(sql2, updateClass, (err) => {
                    if (err) return console.error(err);
                    console.log('Updated class.');
                });
            }
        });
    }

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
    });

    res.render('jobchangeform');
}