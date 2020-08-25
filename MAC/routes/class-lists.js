const sqlite = require('sqlite3');


exports.getClasses = function(req, res) {

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    const strQuery = 'select * from classes order by classname';

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

exports.getGroups = function(req, res) {

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    const strQuery = 'select * from groups order by groupname';

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

exports.postClass = function(req, res) {
    if (req.body.classname && req.body.teacher) {
        
        const newClass = [
                     req.body.classname.toUpperCase(), 
                     req.body.teacher.toUpperCase(),
                     req.body.group.toUpperCase()
                    ];

        let sql = 'insert into classes(classname,teacher,"group") values (?,?,?)';

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.run(sql,newClass, (err) => {
            if (err) return console.error(err);
            console.log('Added class to classes table.');
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

exports.postGroup = function(req, res) {
    if (req.body.groupname) {
        
        const newGroup = req.body.groupname.toUpperCase();

        let sql = 'insert into groups(groupname) values (?)';

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        db.run(sql,newGroup, (err) => {
            if (err) return console.error(err);
            console.log('Added group to groups table.');
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

exports.deleteClass = function(req, res) {
    if (req.params.delclass) {
        const delclass = req.params.delclass;

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        let sql = "delete from classes where classname = ?"

        db.run(sql,delclass, (err) => {
            if (err) console.error(err);


            // REMOVED CODE FOR UNASSIGNING STUDENTS, IN CASE CLASS NEEDS A SIMPLE TEACHER CHANGE.
            // let stusql = "update roster set classam = 'UUU' where classam = ?"

            // db.run(stusql,delclass, (err) => {
            //     if (err) console.log(err);
            //     console.log('Students unassigned for ' + delclass);
            // });

            // let stusqlpm = "update roster set classpm = 'UUU' where classpm = ?"

            // db.run(stusqlpm,delclass, (err) => {
            //     if (err) console.log(err);
            //     console.log('Students unassigned for ' + delclass);
            // });

            console.log('Deleted class.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
            res.json('success');
        });
    }
}

exports.deleteGroup = function(req, res) {
    if (req.params.delgroup) {
        const delgroup = req.params.delgroup;

        let db = new sqlite.Database('./server/comas.db', (err) => {
            if (err) console.log(err.message);
            console.log('connected');
        });

        let sql = "delete from groups where groupname = ?"

        db.run(sql,delgroup, (err) => {
            if (err) console.error(err);

            let classsql = 'delete from classes where "group" = ?';

            db.run(classsql,delgroup, (err) => {
                if (err) console.log(err);
                console.log('Deletes classes related to group.');
            });

            console.log('Deleted group from groups table.');
        });

        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
            res.json('success');
        });
    }
}