var fs = require("fs");
let importExcel = require("convert-excel-to-json");

module.exports = {
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

  upload: (con, res, filename, kelas) => {
    con.beginTransaction((err) => {
      if (err) return res.status(500).json({ message: "error", error: err });
      //   let error = 0;
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

      //   get kelas_id
      for (let i = 0; i < result.Sheet1.length; i++) {
        con.query(
          `SELECT kelas_id FROM kelas WHERE kelas_nama = '${kelas[i]}'`,
          (err, rows) => {
            if (err)
              return res.status(500).json({ message: "EROR", error: err });

            if (rows.length > 0) {
              let kelasId = rows[0].kelas_id;
              // insert into database
              con.query(
                `INSERT INTO gambar SET gambar_nama = '${result.Sheet1[i].gambar}', gambar_jenis = '${result.Sheet1[i].jenis}', kelas_id = ${kelasId}`,
                (err, rows) => {
                  if (err) throw err;
                }
              );
            } else {
              con.rollback();
              return res.status(500).json({message:"kelas_id not found", error:true})
            }
          }
        );
      }

      con.commit((err) => {
        if (err) return res.status(500).json({ message: "error", error: true });
        return res.status(200).json({message:"Upload Photos SUCCESS", error:false})
      });
    });
  },
};
