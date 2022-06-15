let importExcel = require("convert-excel-to-json");

module.exports = {
  // get all photo class
  getAll: (con, callback) => {
    con.query("SELECT * FROM gambar", (callback));
  },

  // get photo class by kelas id
  getBykelasId: (con, kelas_id, callback) => {
    con.query(`SELECT * FROM gambar WHERE kelas_id = ${kelas_id}`, (callback))
  },

  getJurusanPhoto: (con, jurusan_id, callback) => {
    con.query(`SELECT gambar_id, gambar_nama, gambar_jenis, gambar.kelas_id, jurusan_nama FROM gambar JOIN kelas ON gambar.kelas_id = kelas.kelas_id JOIN jurusan ON jurusan.jurusan_id = kelas.jurusan_id WHERE kelas.jurusan_id = ${jurusan_id}`, (callback))
  },

  // get photo class by id
  getById: (con, id, callback) => {
    con.query(`SELECT * FROM gambar WHERE gambar_id = ${id}`, (callback))
  },

  // create photo class
  create: (con, data, image, res, callback) => {
    // check if photo class is over then 9 or not
    con.query(`SELECT * FROM gambar WHERE kelas_id = ${data.kelas_id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Failed to get photo class",
          error: err
        });
      } else {
        if (result.length > 9) {
          res.status(500).json({
            message: "Photo for this class is already more than 9 photos",
            error: true
          });
        } else {
          // check if photo class over then 3 where is same kelas id and same type
          con.query(`SELECT * FROM gambar WHERE kelas_id = ${data.kelas_id} AND gambar_jenis = '${data.jenis}'`, (err, result) => {
            if (err) {
              res.status(500).json({
                message: "Failed to get photo class",
                error: err
              });
            } else {
              if (result.length > 3) {
                res.status(500).json({
                  message: "Photo for this class for type 'wajib' is already more than 3 photos",
                  error: true
                });
              } else {
                // check if image is empty or not
                if (!image) {
                  res.status(500).json({
                    message: "Image cannot be empty",
                    error: true,
                  });
                } else {
                  // check extension of image
                  const extension = image["image"].mimetype.split("/")[1];
                  const allowedExtension = ["jpg", "jpeg", "png"];
                  if (!allowedExtension.includes(extension)) {
                    res.status(500).json({
                      message: "Extension of image is not allowed",
                      error: true,
                    });
                  } else {
                    // move image to public/images/ with name image using file.mv()
                    let file = image["image"];
                    let filename = file.name;
                    file.mv(`public/images/` + filename, (err) => {
                      if (err) {
                        res.status(500).json({
                          message: "Failed to move image",
                          error: err
                        });
                      } else {
                        // insert data to database with image name using set
                        con.query(`INSERT INTO gambar SET gambar_nama = '${filename}', gambar_jenis = '${data.jenis}', kelas_id = ${data.kelas_id}`, (callback));
                      }
                    });
                  }
                }
              }
            }
          })
        }
      }
    })
  },

  // update photo class by id
  update: (con, data, image, id, res, callback) => {
    // check if id is in database or not
    con.query(`SELECT * FROM gambar WHERE gambar_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Failed to get photo class",
          error: err
        });
      } else {
        if (result.length === 0) {
          res.status(500).json({
            message: "Photo class is not found",
            error: true
          });
        } else {
          // check if image is empty or not
          if (!image) {
            res.status(500).json({
              message: "Image cannot be empty",
              error: true,
            });
          } else {
            // check extension of image
            const extension = image["image"].mimetype.split("/")[1];
            const allowedExtension = ["jpg", "jpeg", "png"];
            if (!allowedExtension.includes(extension)) {
              res.status(500).json({
                message: "Extension of image is not allowed",
                error: true,
              });
            } else {
              // move image to public/images/ with name image using file.mv()
              let file = image["image"];
              let filename = file.name;
              file.mv(`public/images/` + filename, (err) => {
                if (err) {
                  res.status(500).json({
                    message: "Failed to move image",
                    error: err
                  });
                } else {
                  // update data to database with image name using set
                  con.query(`UPDATE gambar SET gambar_nama = '${filename}', gambar_jenis = '${data.jenis}', kelas_id = ${data.kelas_id} WHERE gambar_id = ${id}`, (callback));
                }
              });
            }
          }
        }
      }
    })
  },

  // delete photo class by id
  delete: (con, id, res, callback) => {
    // check if id is in database or not
    con.query(`SELECT * FROM gambar WHERE gambar_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Failed to get photo class",
          error: err
        });
      } else {
        if (result.length === 0) {
          res.status(500).json({
            message: "Photo class is not found",
            error: true
          });
        } else {
          // delete data from database
          con.query(`DELETE FROM gambar WHERE gambar_id = ${id}`, (callback));
        }
      }
    })
  },

  // validation for upload photo class
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

      file.mv("./public/excel/group/" + filename, (err) => {
        if (err)
          return res.status(500).json({
            message: "ERROR WHILE MOVING FILE TO ./public",
            error: true,
          });

        let result = importExcel({
          sourceFile: "./public/excel/group/" + filename,
          header: { rows: 1 },
          columnToKey: {
            A: "gambar",
            B: "jenis",
            C: "jurusan",
            D: "d_kelas",
          },
          sheets: ["Sheet1"],
        });

        let jurusan = [];
        let d_kelas = [];
        let kelas = [];
        for (let i = 0; i < result.Sheet1.length; i++) {
          //  check major
          let major = ["AK", "RPL", "TKJ", "TEI", "TBSM", "TET"];
          if (major.includes(result.Sheet1[i].jurusan.toUpperCase()) == true) {
            console.log("SUCCESS VALIDATING MAJOR");

            if (result.Sheet1[i].jurusan.toUpperCase() == "RPL") {
              jurusan.push("Rekayasa Perangkat Lunak");
            }
            if (result.Sheet1[i].jurusan.toUpperCase() == "AK") {
              jurusan.push("Akuntansi");
            }
            if (result.Sheet1[i].jurusan.toUpperCase() == "TKJ") {
              jurusan.push("Teknik Komputer dan Jaringan");
            }
            if (result.Sheet1[i].jurusan.toUpperCase() == "TEI") {
              jurusan.push("Teknik Elektronika Industri");
            }
            if (result.Sheet1[i].jurusan.toUpperCase() == "TBSM") {
              jurusan.push("Teknik dan Bisnis Sepeda Motor");
            }
            if (result.Sheet1[i].jurusan.toUpperCase() == "TET") {
              jurusan.push("Teknik Energi Terbarukan");
            }
            //  Check d_kelas
            con.query(
              `SELECT d_kelas_nama FROM d_kelas WHERE d_kelas_nama = '${result.Sheet1[i].d_kelas}'`,
              (err, rows) => {
                if (err)
                  return res.status(500).json({ message: "ERROR", error: err });
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
            //   ABORT
            con.rollback();
            return res
              .status(404)
              .json({ message: "Major Not Found.", error: true });
          }
        }
        con.commit((err) => {
          if (err)
            return res.status(500).json({ message: "error", error: err });
          if (error == true) {
            con.rollback();
            return res
              .status(500)
              .json({ message: "d_kelas not found", error: true });
          } else {
            return callback(filename, kelas);
          }
        });
      });
    });
  },

  // upload photo class
  upload: (con, res, filename, kelas) => {
    let result = importExcel({
      sourceFile: "./public/excel/group/" + filename,
      header: { rows: 1 },
      columnToKey: {
        A: "gambar",
        B: "jenis",
        C: "jurusan",
        D: "d_kelas",
      },
      sheets: ["Sheet1"],
    });

    let isValid = [];
    let kelasId = [];

    function isError(kelas) {
      return new Promise((resolve) => {
        console.log(kelas);
        con.query(
          `SELECT kelas_id FROM kelas WHERE kelas_nama = '${kelas}'`,
          (err, rows) => {
            if (err) throw err;
            if (rows.length > 0) {
              kelasId.push(rows[0].kelas_id);
              isValid.push(true);
            } else {
              isValid.push(false);
            }
            resolve(isValid, kelasId);
          }
        );
      });
    }

    function checkMaxData() {
      return new Promise((resolve) => {
        for (let i = 0; i < result.Sheet1.length; i++) {
          con.query(
            `SELECT * FROM gambar WHERE kelas_id = ${kelasId[i]}`,
            (err, rows) => {
              if (err) throw err;
              console.log(rows.length);
              if (rows.length < 9) {
                resolve(true)
              } else {
                resolve(false)
              }
            }
          );
        }
      })
    }

    function insertDb() {
      for (let i = 0; i < result.Sheet1.length; i++) {
        con.query(
          `INSERT INTO gambar SET gambar_nama = '${result.Sheet1[i].gambar}', gambar_jenis = '${result.Sheet1[i].jenis}', kelas_id = ${kelasId[i]}`,
          (err) => {
            if (err) throw err;
          }
        );
      }
    }

    // Async function
    async function check() {
      for (let i = 0; i < result.Sheet1.length; i++) {
        await isError(kelas[i]);
      }
      console.log("isValid :", isValid);
      console.log("kelasId :", kelasId);
      if (isValid.includes(false) == false) {
        checkMaxData().then(
          (resolve) => {
            console.log(resolve)
            if (resolve == true) {
              insertDb();
              return res
              .status(200)
              .json({ message: "Upload Success!", error: false });
            } else {
              return res.status(500).json({ message: "Max Data", error:true });
            }
          }
        )
      } else {
        con.rollback();
        return res.status(500).json({
          message: "kelas not found",
          error: true,
        });
      }
    }
    check();
  },
};
