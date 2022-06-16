const Majors = require('../models/Major')

module.exports = {
    // get all majors
    getAll: (req, res) => {
        Majors.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: "Failed to get all majors",
                    error: err
                })
            } else {
                res.status(200).json({
                    message: "Success to get all majors",
                    data: result
                })
            }
        })
    },

    getById: (req, res) => {
        Majors.getById(req.con, req.params.jurusan_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: "Failed to get major",
                    error: err
                })
            } else if (result.length === 0) {
                res.status(404).json({
                    message: "Major not found",
                    error: true
                })
            } else {
                res.status(200).json({
                    message: "Success to get major by id",
                    error: false,
                    data: result
                })
            }
        })
    },

    getJumlah: (req, res) => {
        Majors.getJumlah(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: "Failed to get jumlah",
                    error: err
                })
            } else {
                res.status(200).json({
                    message: "Success to get jumlah",
                    error: false,
                    data: result
                })
            }
        })
    }
}