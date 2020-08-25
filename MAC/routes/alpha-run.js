const sqlite = require('sqlite3').verbose();
//const join = require('path').join;

module.exports = function(req, res) {

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    let strQuery = 'select * from roster';
    let searchParam = req.params.search ? req.params.search : '';
    
    if (searchParam.match(/[A-Z0-9]\d{5}/g)) {
        strQuery = "select * from roster where dc = '"+ searchParam +"'";
    } else {
        strQuery = "select * from roster where lastname like '%"+ searchParam +"%'";
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