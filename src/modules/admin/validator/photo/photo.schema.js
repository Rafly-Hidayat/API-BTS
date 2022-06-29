const joi = require('joi');

module.exports = {
    // schema for create teacher
    create: joi.object({
        jenis: joi.string().required(),
        kelas_id: joi.number().required(),
    })
}