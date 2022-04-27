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
    create: (con, data, res, callback) => {
        // check if data is already exist in database
        con.query(`SELECT * FROM siswa WHERE siswa_nis = '${data.nis}'`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error create student',
                    error: err
                });
            } else if (result.length === 0) {
                // insert data to database
                con.query(`INSERT INTO siswa SET siswa_nis = '${data.nis}', siswa_nama = '${data.nama}', siswa_gambar = '${data.gambar}', siswa_quote = '${data.quote}', kelas_id = ${data.kelas_id}`, callback)
            } else {
                res.status(500).json({
                    message: 'Student NIS already exist',
                    error: true
                });
            }
        }
        )
    },

    // update student by id
    update: (con, data, res, id, callback) => {
        // check if there is data in database
        con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error update student',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Student not found',
                    error: true
                });
            } else {
                // update data to database
                con.query(`UPDATE siswa SET siswa_nama = '${data.nama}', siswa_gambar = '${data.gambar}', siswa_quote = '${data.quote}', kelas_id = ${data.kelas_id} WHERE siswa_id = ${id}`, callback)
            }
        })
    },

    // delete student by id
    delete: (con, id, res, callback) => {
        // check if there is data in database
        con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error delete student',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Student not found',
                    error: true
                });
            } else {
                // delete data from database
                con.query(`DELETE FROM siswa WHERE siswa_id = ${id}`, callback)
            }
        })
    }

}