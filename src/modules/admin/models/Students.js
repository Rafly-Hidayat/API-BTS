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
                    message: 'Error create student',
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
                                    message: 'Error move image',
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
                    message: 'Student NIS already exist',
                    error: true
                });
            }
        });
    },

    // update student by id
    update: (con, data, res, id, image, callback) => {
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
                                    message: 'Error move image',
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