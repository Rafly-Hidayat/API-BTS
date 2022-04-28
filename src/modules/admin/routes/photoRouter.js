const express = require('express')
const router = express.Router()
const photoController = require('../controllers/photoController')
// photo routers
router.post('/gambar/upload', photoController.upload)

module.exports = router