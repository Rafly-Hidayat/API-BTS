const schema = require('./auth.schema')

module.exports = {
    // validate login admin
    login: async (req, res, next) => {
        const value = await schema.login.validate(req.body)
        if(value.error) {
            res.json({
                error: true,
                message: value.error.details[0].message
            })
        } else {
            next()
        }
    }
}