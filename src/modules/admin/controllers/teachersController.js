const Teachers = require('../models/teachers');

module.exports = {
    // get all teachers
    getAll: (req, res) => {
        Teachers.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error get all teachers',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success get all teachers',
                    error: false,
                    data: result
                });
            }
        });
    },

    // get teacher by id
    getById: (req, res) => {
        Teachers.getById(req.con, req.params.guru_id, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Error get teacher by id',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Teacher not found',
                    error: true
                });
            } else {
                res.status(200).json({
                    message: 'Success get teacher by id',
                    error: false,
                    data: result
                });
            }
        });
    },

    // create teacher
    create: (req, res) => {
        Teachers.create(req.con, req.body, req.files, res, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Error create teacher',
                    error: err
                });
            } else {
                res.status(201).json({
                    message: 'Success create teacher',
                    error: false
                });
            }
        });
    },

    // update teacher
    update: (req, res) => {
        Teachers.update(req.con, req.body, res, req.params.guru_id, req.files, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Error update teacher',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success update teacher',
                    error: false
                });
            }
        });
    },

    // delete teacher
    delete: (req, res) => {
        Teachers.delete(req.con, req.params.guru_id, res, (err) => {
            if (err) {
                res.status(500).json({
                    message: 'Error delete teacher',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success delete teacher',
                    error: false
                });
            }
        });
    }

}