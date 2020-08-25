const sqlite = require('sqlite3').verbose();

exports.searchAlpha = function(req, res) {

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    let strQuery = 'select * from roster';
    let searchParam = req.params.search ? req.params.search : '';
    
    if (searchParam.match(/^[A-Z0-9]\d{5}/g)) { // Qery by dc.
        strQuery = "select * from roster where dc = '"+ searchParam +"'";
    } else if (searchParam.match(/^[A-Z]{1}\d{2}|UUU/g)) { // Query by job code.
        strQuery = "select * from roster where jobam = '"+ searchParam +"' and housing <> '' or jobpm = '"+ searchParam +"' and housing <> ''";
    } else { // Query by last name.
        strQuery = "select * from roster where lastname like '%"+ searchParam +"%' and housing <> ''";
    }

    db.all(strQuery, [], (err, rows) => {
        if (err) throw err;
        res.json(rows);
    });

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
    });
}

exports.updateStuClass = function(req, res) {

    if (req.body.updateAMClass && req.body.dc) {

        const newClass = [req.body.updateAMClass, req.body.dc];
        let sql = 'update roster set classam = ? where dc = ?';

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.run(sql, newClass, (err) => {
            if (err) return console.error(err);
            console.log('Updated class.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
        });
    } 

    if (req.body.updatePMClass && req.body.dc) {

        const newClass = [req.body.updatePMClass, req.body.dc];
        let sql = 'update roster set classpm = ? where dc = ?';

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.run(sql, newClass, (err) => {
            if (err) return console.error(err);
            console.log('Updated class.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
        });
    }

    res.json('success');
}

exports.getIndPerson = function(req, res) {

    if (req.params.dc) {

        let sql = 'select * from roster where dc = ?';
        let dc = req.params.dc;

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.get(sql, [dc], (err, row) => {
            if (err) return console.error(err);
            console.log('Retrieved record.');
            res.json(row);
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
        });

    }

}