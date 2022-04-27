const joi = require('joi')

module.exports = {
    // schema for create student
    create: joi.object({
        nis: joi.string().required(),
        nama: joi.string().required(),
        gambar: joi.string().required(),
        quote: joi.string().max(100).required(),
        kelas_id: joi.number().required()
    }),
    // schema for update student
    update: joi.object({
        nama: joi.string().required(),
        gambar: joi.string().required(),
        quote: joi.string().max(100).required(),
        kelas_id: joi.number().required()
    })
}

