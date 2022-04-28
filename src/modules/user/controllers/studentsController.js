const Students = require("../models/Students");

module.exports = {
     // get all students
     getAll: (req, res) => {
        Students.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get all students',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success to get all students',
                    error: false,
                    data: result
                });
            }
        });
    },

    // get students by id
    getById: (req, res) => {
        Students.getById(req.con, req.params.siswa_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get student',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Student not found',
                    error: true
                });
            } else {
                res.status(200).json({
                    message: 'Success to get student by id',
                    error: false,
                    data: result
                });
            }
        });
    },

    // get students by kelas id
    getByKelasId: (req, res) => {
        Students.getByKelasId(req.con, req.params.kelas_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get student',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Student not found',
                    error: true
                });
            } else {
                res.status(200).json({
                    message: 'Success to get students by class',
                    error: false,
                    data: result
                });
            }
        });
    },
}