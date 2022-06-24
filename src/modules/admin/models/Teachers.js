let importExcel = require("convert-excel-to-json");

module.exports = {
  // get all teachers
  getAll: (con, callback) => {
    con.query(`SELECT * FROM guru`, callback);
  },

  // get teacher by id
  getById: (con, id, callback) => {
    con.query(`SELECT * FROM guru WHERE guru_id = ${id}`, callback);
  },

  // get count teachers
  getCount: (con, callback) => {
    con.query(`SELECT COUNT(*) AS jumlah FROM guru`, callback);
  },

  // get Kaprog
  getKaprog: (con, callback) => {
    con.query(`SELECT * FROM guru WHERE guru_jabatan LIKE '%Kepala Program%'`, callback)
  },

  // create teacher
  create: (con, data, image, res, callback) => {
    // check if data is already exist in database
    con.query(
      `SELECT * FROM guru WHERE guru_nama = '${data.nama}'`,
      (err, result) => {
        if (err) {
          res.status(500).json({
            message: "Failed to create teacher",
            error: err,
          });
        } else if (result.length === 0) {
          // check if image is empty
          if (!image) {
            res.status(500).json({
              message: "Image cannot be empty",
              error: true,
            });
          } else {
            // check extension image
            const extension = image["image"].mimetype.split("/")[1];
            const allowedExtension = ["jpg", "jpeg", "png"];
            if (allowedExtension.indexOf(extension) === -1) {
              res.status(500).json({
                message: "Extension image not allowed",
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
                    error: err,
                  });
                } else {
                  // insert data to database
                  con.query(
                    `INSERT INTO guru SET guru_nama = '${data.nama}', guru_gambar = '${filename}', guru_jabatan = '${data.jabatan}'`,
                    callback
                  );
                }
              });
            }
          }
        } else {
          res.status(500).json({
            message: "Teacher name already exist",
            error: true,
          });
        }
      }
    );
  },

  // update teacher by id
  update: (con, data, res, id, image, callback) => {
    // check if there is data in database
    con.query(`SELECT * FROM guru WHERE guru_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Failed to update teacher",
          error: err,
        });
      } else if (result.length === 0) {
        res.status(500).json({
          message: "Teacher not found",
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
          // check extension image
          const extension = image["image"].mimetype.split("/")[1];
          const allowedExtension = ["jpg", "jpeg", "png"];
          if (allowedExtension.indexOf(extension) === -1) {
            res.status(500).json({
              message: "Extension image not allowed",
              error: true,
            });
          } else {
            // move image to public/images/ with name image using file.mv()
            let file = image["image"];
            let filename = file.name;
            file.mv(`public/images/` + filename, (err) => {
              if (err) {
                res.status(500).json({
                  message: "Error move image",
                  error: err,
                });
              } else {
                // insert data to database
                con.query(
                  `UPDATE guru SET guru_nama = '${data.nama}', guru_gambar = '${filename}', guru_jabatan = '${data.jabatan}' WHERE guru_id = ${id}`,
                  callback
                );
              }
            });
          }
        }
      }
    });
  },

  // delete teacher by id
  delete: (con, id, res, callback) => {
    // check if there is data in database
    con.query(`SELECT * FROM guru WHERE guru_id = ${id}`, (err, result) => {
      if (err) {
        res.status(500).json({
          message: "Failed to delete teacher",
          error: err,
        });
      } else if (result.length === 0) {
        res.status(500).json({
          message: "Teacher not found",
          error: true,
        });
      } else {
        // delete data from database
        con.query(`DELETE FROM guru WHERE guru_id = ${id}`, callback);
      }
    });
  },

  upload: (con, data, res, callback) => {
    let file = data;
    let filename = file.name;

    file.mv("./public/excel/single/" + filename, (err) => {
      if (err) {
        return res.status(500).json({
          message: "Failed to upload file",
          error: err,
        });
      }

      let result = importExcel({
        sourceFile: "./public/excel/single/" + filename,
        header: { rows: 1 },
        columnToKey: {
          A: "nama_guru",
          B: "gambar",
          C: "jabatan",
        },
        sheets: ["Sheet1"],
      });

      for (let i = 0; i < result.Sheet1.length; i++) {
        //   insert to database
        con.query(
          `INSERT INTO guru SET guru_nama = '${result.Sheet1[i].nama_guru}', guru_gambar = '${result.Sheet1[i].gambar}', guru_jabatan = '${result.Sheet1[i].jabatan}'`,
          (err) => {
            if (err) {
              throw err;
            }
          }
        );
      }
      callback();
    });
  },
};
