const express = require('express')
const router = express.Router()
const adminAuth = require('../auth/auth')
const validator = require('../validator/auth/auth.validation')

// Router auth
router.post('/admin/login', validator.login, adminAuth.login)

module.exports = router