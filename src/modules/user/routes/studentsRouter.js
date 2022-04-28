const express = require('express')
const router = express.Router()
const studentsController = require('../controllers/studentsController')

// router students
router.get('/siswa', studentsController.getAll) // get all students
router.get('/siswa/:siswa_id', studentsController.getById) // get student by id
router.get('/siswa/kelas/:kelas_id', studentsController.getByKelasId) // get student img by kelas id

module.exports = router