var fs = require("fs");
let importExcel = require("convert-excel-to-json");

module.exports = {
    // get all students
    getAll: (con, callback) => {
        con.query(`SELECT * FROM siswa`, (callback))
    },

    // get students by id
    getById: (con, id, callback) => {
        con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (callback))
    },

    // get students by kelas id
    getByKelasId: (con, id, callback) => {
        con.query(`SELECT * FROM siswa WHERE kelas_id = ${id}`, (callback))
    },

    // create students
    create: (con, data, res, image, callback) => {
        // check if data is already exist in database
        con.query(`SELECT * FROM siswa WHERE siswa_nis = '${data.nis}'`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to create student',
                    error: err
                });
            } else if (result.length === 0) {
                // check if image is empty
                if (!image) {
                    res.status(500).json({
                        message: 'Image cannot be empty',
                        error: true
                    });
                } else {
                    // check extension image
                    const extension = image['image'].mimetype.split('/')[1];
                    const allowedExtension = ['jpg', 'jpeg', 'png',];
                    if (allowedExtension.indexOf(extension) === -1) {
                        res.status(500).json({
                            message: 'Extension image not allowed',
                            error: true
                        });
                    } else {
                        // move image to public/images/ with name image using file.mv()
                        let file = image['image'];
                        let filename = file.name;
                        file.mv(`public/images/` + filename, (err) => {
                            if (err) {
                                res.status(500).json({
                                    message: 'Failed to move image',
                                    error: err
                                });
                            } else {
                                // insert data to database
                                con.query(`INSERT INTO siswa SET siswa_nis = '${data.nis}', siswa_nama = '${data.nama}', siswa_gambar = '${filename}', siswa_quote = '${data.quote}', kelas_id = ${data.kelas_id}`, callback)
                            }
                        })
                    }
                }
            } else {
                res.status(500).json({
                  message: "Error move image",
                  error: err,
                });
              } else {
                // insert data to database
                con.query(
                  `INSERT INTO siswa SET siswa_nis = '${data.nis}', siswa_nama = '${data.nama}', siswa_gambar = '${filename}', siswa_quote = '${data.quote}', kelas_id = ${data.kelas_id}`,
                  callback
                );
              }
            });
          }
        } else {
          res.status(500).json({
            message: "Student NIS already exist",
            error: true,
          });
        }
      }
    );
  },

  // update student by id
  update: (con, data, res, id, image, callback) => {
    // check if there is data in database
    con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Error update student",
          error: err,
        });
      } else if (result.length === 0) {
        res.status(404).json({
          message: "Student not found",
          error: true,
        });
      } else {
        // check if image is empty
        if (!image) {
          res.status(500).json({
            message: "Image cannot be empty",
            error: true,
          });
        } else {
          // move image to public/images/ with name image using file.mv()
          let file = image["image"];
          let filename = file.name;
          file.mv(`public/images/` + filename, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to update student',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Student not found',
                    error: true
                });
            } else {
                // check if image is empty
                if (!image) {
                    res.status(500).json({
                        message: 'Image cannot be empty',
                        error: true
                    });
                } else {
                    // check extension image
                    const extension = image['image'].mimetype.split('/')[1];
                    const allowedExtension = ['jpg', 'jpeg', 'png',];
                    if (allowedExtension.indexOf(extension) === -1) {
                        res.status(500).json({
                            message: 'Extension image not allowed',
                            error: true
                        });
                    } else {

                        // move image to public/images/ with name image using file.mv()
                        let file = image['image'];
                        let filename = file.name;
                        file.mv(`public/images/` + filename, (err) => {
                            if (err) {
                                res.status(500).json({
                                    message: 'Failed to move image',
                                    error: err
                                });
                            } else {
                                // update data to database
                                con.query(`UPDATE siswa SET siswa_nama = '${data.nama}', siswa_gambar = '${filename}', siswa_quote = '${data.quote}', kelas_id = ${data.kelas_id} WHERE siswa_id = ${id}`, callback)
                            }
                        })
                    }
                }
            }
          });
        }
      }
    });
  },

  // delete student by id
  delete: (con, id, res, callback) => {
    // check if there is data in database
    con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Error delete student",
          error: err,
        });
      } else if (result.length === 0) {
        res.status(404).json({
          message: "Student not found",
          error: true,
        });
      } else {
        // delete data from database
        con.query(`DELETE FROM siswa WHERE siswa_id = ${id}`, callback);
      }
    });
  },

  uploadValidation: (con, res, data, callback) => {
    con.beginTransaction((err) => {
      if (err)
        return res.status(500).json({
          message: "Error Validating Excel File.",
          error: err,
        });

      let error = false;

      let file = data;
      let filename = file.name;

      file.mv("./public/excel/" + filename, (err) => {
        if (err)
          return res.status(500).json({
            message: "Error Uploading Excel File.",
            error: err,
          });
        let result = importExcel({
          sourceFile: "./public/excel/" + filename,
          header: { rows: 1 },
          columnToKey: {
            A: "nis",
            B: "nama",
            C: "gambar",
            D: "quote",
            E: "jurusan",
            F: "d_kelas",
          },
          sheets: ["Sheet1"],
        });

        con.query("SELECT siswa_nis FROM siswa", (err, rows) => {
          if (err)
            return res.status(500).json({
              message: "ERROR",
              error: err,
            });
          let nis = rows.map((obj) => {
            return obj.siswa_nis;
          });
          console.log(nis);

          let jurusan = [];
          let d_kelas = [];
          let kelas = [];
          for (let i = 0; i < result.Sheet1.length; i++) {
            console.log(result.Sheet1[i].nis);
            // CEK NIS
            if (nis.includes(result.Sheet1[i].nis) == false) {
              // SUCCESS
              console.log("Validating NIS Success");
              let major = ["AK", "RPL", "TKJ", "TEI", "TBSM", "TET"];
              console.log(result.Sheet1[i].jurusan);
              console.log(major);
              // CEK JURUSAN (MAJOR)
              if (major.includes(result.Sheet1[i].jurusan) == true) {
                console.log("SUCCESS VALIDATING MAJOR");

                if (result.Sheet1[i].jurusan == "RPL") {
                  jurusan.push("Rekayasa Perangkat Lunak");
                }
                if (result.Sheet1[i].jurusan == "AK") {
                  jurusan.push("Akuntansi");
                }
                if (result.Sheet1[i].jurusan == "TKJ") {
                  jurusan.push("Teknik Komputer dan Jaringan");
                }
                if (result.Sheet1[i].jurusan == "TEI") {
                  jurusan.push("Teknik Elektronika Industri");
                }
                if (result.Sheet1[i].jurusan == "TBSM") {
                  jurusan.push("Teknik dan Bisnis Sepeda Motor");
                }
                if (result.Sheet1[i].jurusan == "TET") {
                  jurusan.push("Teknik Energi Terbarukan");
                }
                console.log(jurusan);

                // CEK d_kelas
                con.query(
                  `SELECT d_kelas_nama FROM d_kelas WHERE d_kelas_nama = '${result.Sheet1[i].d_kelas}'`,
                  (err, rows) => {
                    if (err)
                      return res
                        .status(500)
                        .json({ message: "ERROR", error: err });

                    if (rows.length > 0) {
                      d_kelas.push(rows[0].d_kelas_nama);
                      console.log(rows);
                      kelas.push(jurusan[i] + " ".concat(d_kelas[i]));
                     
                      console.log("kelas :", kelas);
                    } else {
                      // ABORT
                      error = true;
                    }
                  }
                );
              } else {
                // ABORT
                con.rollback();
                return res.status(404).json({
                  message: "Major Not Found",
                  error: true,
                });
              }
            } else {
              // ABORT
              con.rollback();
              return res.status(500).json({
                message: "NIS Already Exist",
                error: true,
              });
            }
          }
          con.commit((err) => {
            if (err) throw err;
            if (error == true) {
              con.rollback();
              return res
                .status(500)
                .json({ message: "d_kelas not found", error: true });
            }
            return callback(filename, jurusan, d_kelas, kelas);
          });
        });
      });
    });
  },

  upload: (con, res, filename, jurusan, d_kelas, kelas) => {
    con.beginTransaction((err) => {
      if (err)
        return res.status(500).json({ message: "Upload error", error: err });
      let error = 0;
      let result = importExcel({
        sourceFile: "./public/excel/" + filename,
        header: { rows: 1 },
        columnToKey: {
          A: "nis",
          B: "nama",
          C: "gambar",
          D: "quote",
          E: "jurusan",
          F: "d_kelas",
        },
        sheets: ["Sheet1"],
      });

      for (let i = 0; i < result.Sheet1.length; i++) {
        //   Check quote's length
        let quote = result.Sheet1[i].quote;
        console.log(quote.length);
        if (quote.length <= 100) {
          console.log("quotes allowed");
          // get kelas_id
          con.query(`SELECT kelas_id FROM kelas WHERE kelas_nama = '${kelas[i]}'`, (err, rows) => {
              if(err) throw err
              if(rows.length > 0) {
                  let kelasId = rows[0].kelas_id
                  // insert into database
                    con.query(`INSERT INTO siswa SET siswa_nis = ${result.Sheet1[i].nis}, siswa_nama = '${result.Sheet1[i].nama}', siswa_gambar = '${result.Sheet1[i].gambar}', siswa_quote = '${result.Sheet1[i].quote}', kelas_id = ${kelasId}`, (err, rows) => {
                        if(err) throw err
                    })

              } else {
                con.rollback()
                error = 2;
              }
          })
        } else {
          //   ABORT
          con.rollback();
          error = 1;
        }
      }

      con.commit((err) => {
        if (err) con.rollback();
        if (error == 0) {
          return res.status(200).json({ message: "Uploaded !", error: false });
        } else if(error == 1){
          return res.status(500).json({
            message: "Quote's length exceed the maximum value.",
            error: true,
          });
        } else if (error = 2) {
            return res.status(404).json({
              message: "Kelas not found",
              error: true,
            });

        }
      });
    });
  },
};
