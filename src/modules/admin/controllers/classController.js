const req = require('express/lib/request');
const Class = require('../models/class');

module.exports = {
    // get all classes
    getAll: (req, res) => {
        Class.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get all classes',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success to get all classes',
                    error: false,
                    data: result
                });
            }
        })
    },

    getById: (req, res) => {
        Class.getById(req.con, req.params.kelas_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get class',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Class not found',
                    error: true
                });
            } else {
                res.status(200).json({
                    message: 'Success to get class by id',
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
                    message: 'Failed to get class by jurusan id',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success to get class by jurusan id',
                    error: false,
                    data: result
                });
            }
        })
    },

    getJumlah: (req, res) => {
        Class.getJumlah(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get jumlah kelas',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success to get jumlah kelas',
                    error: false,
                    data: result
                });
            }
        })
    },

}