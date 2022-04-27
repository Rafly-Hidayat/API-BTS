module.exports = {
    // get all teachers
    getAll: (con, callback) => {
        con.query(`SELECT * FROM guru`, (callback))
    },

    // get teacher by id
    getById: (con, id, callback) => {
        con.query(`SELECT * FROM guru WHERE guru_id = ${id}`, (callback))
    },

    // create teacher
    create: (con, data, image, res, callback) => {
        // check if data is already exist in database
        con.query(`SELECT * FROM guru WHERE guru_nama = '${data.nama}'`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error create teacher',
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
                                con.query(`INSERT INTO guru SET guru_nama = '${data.nama}', guru_gambar = '${filename}', guru_jabatan = '${data.jabatan}'`, callback)
                            }
                        })
                    }
                }
            } else {
                res.status(500).json({
                    message: 'Teacher name already exist',
                    error: true
                });
            }
        });
    },

    // update teacher by id
    update: (con, data, res, id, image, callback) => {
        // check if there is data in database
        con.query(`SELECT * FROM guru WHERE guru_id = ${id}`, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error update teacher',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(500).json({
                    message: 'Teacher not found',
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
                                // insert data to database
                                con.query(`UPDATE guru SET guru_nama = '${data.nama}', guru_gambar = '${filename}', guru_jabatan = '${data.jabatan}' WHERE guru_id = ${id}`, callback)
                            }
                        })
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
                    message: 'Error delete teacher',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(500).json({
                    message: 'Teacher not found',
                    error: true
                });
            } else {
                // delete data from database
                con.query(`DELETE FROM guru WHERE guru_id = ${id}`, callback)
            }
        });
    }

}