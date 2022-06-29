const schema = require('./photo.schema');

module.exports = {
    // validate create teacher
    create: async(req, res, next) => {
        const value = await schema.create.validate(req.body)
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
