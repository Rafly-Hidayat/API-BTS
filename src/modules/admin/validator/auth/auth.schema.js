const joi = require('joi')

const schema = {
    // schema for login admin
    login: joi.object({
        email: joi.string().email().required(),
        password: joi.string().required()
    })
}

module.exports = schema