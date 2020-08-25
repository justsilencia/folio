const fs = require('fs');
const pdf = require('pdf-parse');
const txtReader = require('line-by-line');
const join = require('path').join;
const sqlite3 = require('sqlite3').verbose();

module.exports = function(req, res) {

  const files  = req.files;

  // Repeat entire algorithm for each file. 
  files.forEach(file => {
    
    fs.writeFileSync(join(__dirname, file.originalname), file.buffer);

    let dataBuffer = fs.readFileSync(join(__dirname, file.originalname));

    let rawArr = [];
    let rosterArr = [];
    let compound = '';
    
    pdf(dataBuffer).then(function(data) {

        let pdfData = data.text;
        pdfData = pdfData.replace(/ +/g, ' '); // replace(/\s\s+/g, ' '); Replaces tabs, newlines, etc...

        // Create file name for text file by removing current extension and replacing with .txt
        let txtFileName = file.originalname.replace(/\.[^/.]+$/, '.txt');
        
        // Deletes file if it exists. Probably redundant since writeFile method automatically overwrites..
        if (fs.existsSync(join(__dirname, txtFileName))) {
          fs.unlinkSync(join(__dirname, txtFileName));
        }
        
        fs.writeFile(join(__dirname, txtFileName), pdfData, (err) => {
          if (err) {
            console.log('error!');
          }
          else {
            console.log('File created! ' + Date());
            let lr = new txtReader(join(__dirname, txtFileName));

              // Store each line as array into a parent array.
              lr.on('line', (line) => {

                if (line.includes('DCPGM25760Z365N')) {
                  compound = '365';
                }
                if (line.includes('DCPGM25760Z307N')) {
                  compound = '307';
                }
                if (line.includes('DCPGM25760Z308N')) {
                  compound = '308';
                }
                if (line.includes('DCPGM25760Z305N')) {
                  compound = '305';
                }

                let currentLine = line.trim().split(' '); // .split(/\s+/); //Handles multiple spaces...

                if (currentLine[0].includes(',')) {
                  rawArr.push(currentLine);
                }
              });

              lr.on('end', () => {
                  
                  // By ensuring compound isn't empty, we know it's a genuine alpha run pdf.
                  if (compound != '') {

                  for(let i=0; i<=rawArr.length-1; i++) {

                    let lastName = rawArr[i][0].slice(0, -1);
                    let firstName = rawArr[i][1];
                    let dcNumber;
                    let housing;
                    let jobCodes;

                    // Regex to extract dc number.
                    dcNumber = rawArr[i].join('|').match(/[A-Z0-9]\d{5}/g);

                    // Regex to extract housing.
                    housing = rawArr[i].join('|').match(/[A-Z]\d-\d{3}[A-Z|0-9]{1}/g);

                    // Regex to extract job codes.
                    jobCodes = rawArr[i].join('~').match(/~[A-Z]{1}\d{2}~|~UUU~/g);

                    if (jobCodes) {
                      rosterArr[i] = [dcNumber[0], lastName, firstName, housing[0],
                                    jobCodes[0].slice(1, -1), jobCodes[1].slice(1, -1), compound];
                    }
                }
              
              let db = new sqlite3.Database('./server/comas.db', sqlite3.OPEN_READWRITE, (err) => {
                if (err) console.log(err.message);
              });

              // Check if inmate isn't on current roster. If not, add him.
              let sql = "insert into roster(dc, lastname, firstname, housing, jobam, jobpm, compound) values (?,?,?,?,?,?,?)"
              for (let ii=0;ii<rosterArr.length;ii++) {
                db.get("select * from roster where dc = '"+ rosterArr[ii][0] +"'", (err, row) => {
                    if (err) console.error(err.message);
                    if (!row) {
                      db.run(sql,rosterArr[ii], (err) => {
                        if (err) console.error(err);
                        console.log('Added ' + rosterArr[ii][0] + ' to aplha run.');
                      });
                    } else {

                      // If inmate compound changed, update compound field.
                      if (row.compound != rosterArr[ii][6]) {
                        let updateParams = [rosterArr[ii][6], row.dc];
                        db.run("update roster set compound = ? where dc = ?", updateParams, (err) => {
                          if (err) console.error(err);
                          console.log("Updated compound facility for " + row.dc + ".");
                        });
                      }

                      // If inmate housing has changed update housing field.
                      if (row.housing != rosterArr[ii][3]) {
                        let updateParams = [rosterArr[ii][3], row.dc];
                        db.run("update roster set housing = ? where dc = ?", updateParams, (err) => {
                          if (err) console.error(err);
                          console.log("Updated housing for " + row.dc + ".");
                        });
                      }

                      // If AM job has changed, update AM job field.
                      if (row.jobam != rosterArr[ii][4]) {
                        let updateParams = [rosterArr[ii][4], row.dc];
                        db.run("update roster set jobam = ? where dc = ?", updateParams, (err) => {
                          if (err) console.error(err);
                          console.log("Updated AM job for " + row.dc + ".");
                        });
                      }

                      // If PM job has changed, update PM job field.
                      if (row.jobpm != rosterArr[ii][5]) {
                        let updateParams = [rosterArr[ii][5], row.dc];
                        db.run("update roster set jobpm = ? where dc = ?", updateParams, (err) => {
                          if (err) console.error(err);
                          console.log("Updated PM job for " + row.dc + ".");
                        });
                      }

                    }
                  }); 
              }

              // Check if inmate who is housed on current alpha is on new alpha. If not, remove housing.
              let isHoused = false;
              db.all("select * from roster where compound = ? and housing is not null and housing <> ''", [compound], (err, rows) => {
                if (err) console.error(err);
                rows.forEach(row => {

                  for (let l=0;l<rosterArr.length;l++) {
                    if (row.dc === rosterArr[l][0]) {
                      isHoused = true;
                    } 
                  }
                  
                  if (!isHoused) {
                    db.run("update roster set housing = '' where dc = ?", row.dc, (err) => {
                      if (err) console.error(err);
                      console.log("Removed housing for " + row.dc + ".");
                    });
                  }
                  isHoused = false;
                });
              });

              db.close((err) => {
                if (err) console.error(err.message);
                console.log('Database connection closed');
              });
            }
            });
          }
        });
    });
  });
  
  // End of forEach. End of request.
  res.end('ok');
}




