const joi = require('joi');

module.exports = {
    // schema for create teacher
    create: joi.object({
        nama: joi.string().required(),
        jabatan: joi.string().required(),
    })
}