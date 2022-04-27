const express = require('express')
const router = express.Router()
const studentsController = require('../controllers/studentsController')
const studentValidator = require('../validator/student/student.validation')

// router students
router.get('/siswa', studentsController.getAll) // get all students
router.get('/siswa/:siswa_id', studentsController.getById) // get student by id
router.get('/siswa/kelas/:kelas_id', studentsController.getByKelasId) // get student by kelas id
router.post('/siswa/tambah', studentValidator.create, studentsController.create) // create student
router.put('/siswa/ubah/:siswa_id', studentValidator.update, studentsController.update) // update student by id
router.delete('/siswa/hapus/:siswa_id', studentsController.delete) // delete student by id

module.exports = router