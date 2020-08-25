const sqlite = require('sqlite3');
const async = require('async');

exports.getAllGroups = function(req, res) {

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    let groups = [];

    let sql = "select * from groups where groupname <> 'UUU' order by groupname";

    // CALLBACK HELL!
    // Get all the groups

    db.all(sql, (err, rows) => {

        // Iterate over each group.
        rows.forEach((currGroup, ii) => {

            groups.push({
                group: currGroup.groupname,
                classes: []
            });
            
            let qryClasses = 'select * from classes where "group" = ? order by classname';

            // Get all the classes within the current group.
            db.all(qryClasses, [currGroup.groupname], (err, rows) => {

                // Iterate over each class.
                rows.forEach((currClass, i) => {

                    groups[ii].classes.push({
                        className: currClass.classname,
                        teacher: currClass.teacher,
                        studentsAM: [],
                        studentsPM: []
                    });

                    let qryJob ='select * from jobcodes where "class" = ? order by jobcode';

                    // Get job code for current class.
                    db.get(qryJob, [currClass.classname], (err, row) => {
                
                        // If there is no job code, do not attempt to populate students.
                        if (row) {
                            let jobCode = row.jobcode;
                            
                            jobCode = jobCode.match(/^[A-Z0-9]{3}/g);

                            let stuQuery = "select * from roster where housing <> '' and jobam = ? and classam = ? order by lastname";
            
                            db.all(stuQuery, [jobCode[0], currClass.classname], (err, stuRows) => {
                                if (err) {
                                    console.log(err);
                                } else {
                                    groups[ii].classes[i].studentsAM = stuRows;
                                }
                            });

                            stuQuery = "select * from roster where housing <> '' and jobpm = ? and classpm = ? order by lastname";
                    
                            db.all(stuQuery, [jobCode[0], currClass.classname], (err, stuRows) => {
                                if (err) {
                                    console.log(err);
                                } else {
                                    groups[ii].classes[i].studentsPM = stuRows;
                                }
                            });

                        }
                    });
                });
            });
        });
    });

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
        res.json(groups);
    });
}

exports.getUnnasigned = function(req, res) {

    let students = [];

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });
              
    let sqlJobs = 'select * from jobcodes where "class" <> ""';

    db.all(sqlJobs, (err, rows) => {

        let jobArr = [];
        rows.forEach((job) => {
            let getCode = job.jobcode.match(/^[A-Z0-9]{3}/g);
            jobArr.push(getCode[0]);
        });
        
        let finalJobArr = jobArr.reduce((acc, curr) => {
            const found = acc.find((i) => (i === curr));
            if (!found) acc.push(curr);
            return acc;
        }, []);
        
        finalJobArr.forEach((item) => {

            let jobCode = item;
            let sql = "select * from roster where jobam = '"+jobCode+"' and classam = '' and housing <> '' " +
              "or jobam = '"+jobCode+"' and classam is null and housing <> '' " +
              "or jobam = '"+jobCode+"' and classam = 'UUU' and housing <> '' " +
              "or jobpm = '"+jobCode+"' and classpm = '' and housing <> '' " +
              "or jobpm = '"+jobCode+"' and classpm is null and housing <> '' " +
              "or jobpm = '"+jobCode+"' and classpm = 'UUU' and housing <> '' order by lastname";

              db.all(sql, (err, rows) => {
                students.push(rows);
            });
        });
    });

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
        let results = [];
        students.forEach((item) => {
            results.push(...item);
        });
        
        res.json(results);
    });
}

exports.getGroupStudents = function(req, res) {
    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    const group = req.params.groupname;
    let classStudents = [];

    let qryClasses = 'select * from classes where "group" = ? order by classname';

    db.all(qryClasses, [group], (err, rows) => {

        rows.forEach((item, i) => {

            let qryJob ='select * from jobcodes where "class" = ? order by jobcode';
        
            db.get(qryJob, [item.classname], (err, row) => {
                
                let jobCode = row.jobcode;
                
                jobCode = jobCode.match(/^[A-Z0-9]{3}/g);

                let strQuery = "select * from roster where housing <> '' and jobam = ? and classam = ? order by lastname";
        
                db.all(strQuery, [jobCode[0], item.classname], (err, rows) => {
                    if (err) {
                        console.log(err);
                    } else {
                        classStudents.push({
                            classname: item.classname,
                            students: rows,
                            shift: 'AM'
                        });
                    }

                    // Had to nest this query to ensure proper order of am/pm on display..
                    let strQuerypm = "select * from roster where housing <> '' and jobpm = ? and classpm = ? order by lastname";
        
                    db.all(strQuerypm, [jobCode[0], item.classname], (err, rows) => {
                        if (err) {
                            console.log(err);
                        } else {
                            classStudents.push({
                                classname: item.classname,
                                students: rows,
                                shift: 'PM'
                            });
                        }
                    });

                });
            });
        });
    });

    db.close((err) => {
        if (err) console.error(err.message);
        console.log('Database connection closed');
        res.json(classStudents);
    });
}


exports.getClassStudents = function(req, res) {

    const className = req.params.classname;
    let jobCode = '';
    let results = {
        AM: [],
        PM: []
    }

    let db = new sqlite.Database('./server/comas.db', (err) => {
        if (err) console.log(err.message);
        console.log('connected');
    });

    
    let qryJob = "select * from jobcodes where class = ?";

    db.get(qryJob, [className], (err, row) => {
        
        if (row) {
            jobCode = row.jobcode;

            jobCode = jobCode.match(/^[A-Z0-9]{3}/g);
            
            queryAMStu(jobCode[0]);
            queryPMStu(jobCode[0]);
            closeDB();
        } else {
            closeDB();
        }
    });

    function queryAMStu(jobCode) {
        let strQuery = "select * from roster where housing <> '' and jobam = ? and classam = ? order by lastname";
    
        db.all(strQuery, [jobCode, className], (err, rows) => {
            if (err) {
                console.log(err);
            } else {
                results.AM = rows;
            }
        });
    }

    function queryPMStu(jobCode) {
        strQuery = "select * from roster where housing <> '' and jobpm = ? and classpm = ? order by lastname";

        db.all(strQuery, [jobCode, className], (err, rows) => {
            if (err) {
                console.log(err);
            } else {
                results.PM = rows;
            }
        });
    }

    function closeDB() {
        db.close((err) => {
            if (err) console.error(err.message);
            console.log('Database connection closed');
            res.json(results);
        });
    }
}