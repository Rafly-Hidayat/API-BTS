// import stundents model
const Students = require('../models/students');

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
                    message: 'Success to get student by jurusan',
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
                    message: 'Success to get student by jurusan',
                    error: false,
                    data: result
                });
            }
        });
    },

    // create students
    create: (req, res) => {
        Students.create(req.con, req.body, res, req.files, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to create student',
                    error: err
                });
            } else {
                res.status(201).json({
                    message: 'Success create student',
                    error: false
                });
            }
        });
    },

    // update student by id
    update: (req, res) => {
        Students.update(req.con, req.body, res, req.params.siswa_id, req.files, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to update students',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success update student',
                    error: false
                });
            }
        });
    },

    // delete student by id
    delete: (req, res) => {
        Students.delete(req.con, req.params.siswa_id, res, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to delete student',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success delete student',
                    error: false
                });
            }
        });
    },

    upload: (req, res) => {
        Students.uploadValidation(req.con, res, req.files.filename, (filename,jurusan, d_kelas, kelas) => {
            console.log("Students upload validation success!", jurusan, d_kelas)
            Students.upload(req.con, res, filename, jurusan, d_kelas, kelas)
        })
    }

}