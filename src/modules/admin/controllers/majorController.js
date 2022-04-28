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
    }
}