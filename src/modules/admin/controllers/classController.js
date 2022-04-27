const req = require('express/lib/request');
const Class = require('../models/class');

module.exports = {
    // get all classes
    getAll: (req, res) => {
        Class.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error get all classes',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success get all classes',
                    error: false,
                    data: result
                });
            }
        })
    },

    // get class by jurusan id
    getByJurusanId: (req, res) => {
        Class.getByJurusanId(req.con, req.params.jurusan_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error get class by jurusan id',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success get class by jurusan id',
                    error: false,
                    data: result
                });
            }
        })
    },

    // get image by kelas id
    getImageByKelasId: (req, res) => {
        Class.getImageByKelasId(req.con, req.params.kelas_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error get image by kelas id',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success get image by kelas id',
                    error: false,
                    data: result
                });
            }
        })
    }

}