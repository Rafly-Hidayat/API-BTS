const Graduation = require('../models/Graduation');

module.exports = {
    // get all Graduation moment
    getAll: (req, res) => {
        Graduation.getAll(req.con, (err, result) => {
            if (err) {
                res.status(500).json({
                    message: 'Failed to get all graduation moment',
                    error: err
                    });
            } else {
                res.status(200).json({
                    message: 'Success to get all graduation moment',
                    error: false,
                    data: result
                });
            }
        })
    }
}