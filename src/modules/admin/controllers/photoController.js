const photo = require('../models/photo')
const Photo = require('../models/photo')

module.exports = {
    upload: (req, res) => {
        Photo.uploadValidation(req.con, res, req.files.filename, (filename, kelas) => {
            Photo.upload(req.con, res, filename, kelas)
        })
    }
}