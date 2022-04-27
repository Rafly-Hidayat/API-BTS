const schema = require('./student.schema')

module.exports = {
    // validate create student
    create: async (req, res, next) => {
        const value = await schema.create.validate(req.body)
        if(value.error) {
            res.json({
                error: true,
                message: value.error.details[0].message
            })
        } else {
            next()
        }
    },
    
    // validate update student
    update: async (req, res, next) => {
        const value = await schema.update.validate(req.body)
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