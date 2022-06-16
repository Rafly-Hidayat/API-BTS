const Teachers = require('../models/teachers');

module.exports = {
    // get all teachers
    getAll: (req, res) => {
        Teachers.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get all teachers',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success to get all teachers',
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
                    message: 'Failed to get teacher by id',
                    error: err
                });
            } else if (result.length === 0) {
                res.status(404).json({
                    message: 'Teacher not found',
                    error: true
                });
            } else {
                res.status(200).json({
                    message: 'Success to get teacher by id',
                    error: false,
                    data: result
                });
            }
        });
    },

    getCount: (req, res) => {
        Teachers.getCount(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get count teachers',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success to get count teachers',
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
                    message: 'Failed to create teacher',
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
                    message: 'Failed to update teacher',
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
                    message: 'Failed to delete teacher',
                    error: err
                });
            } else {
                res.status(200).json({
                    message: 'Success delete teacher',
                    error: false
                });
            }
        });
    },

    upload: (req,res) => {
        Teachers.upload(req.con, req.files.filename, res, () => {
            res.status(200).json({
                message: 'Success upload teacher',
                error: false
            });
        });
    }

}