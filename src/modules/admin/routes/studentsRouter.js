const express = require('express')
const router = express.Router()
const studentsController = require('../controllers/studentsController')
const studentValidator = require('../validator/student/student.validation')

// router students
router.get('/siswa', studentsController.getAll) // get all students
router.get('/siswa/:siswa_id', studentsController.getById) // get student by id
router.get('/siswa/kelas/:kelas_id', studentsController.getByKelasId) // get student img by kelas id
router.get('/jumlah/siswa', studentsController.getTotal) // get total students
router.post('/siswa/tambah', studentValidator.create, studentsController.create) // create student
router.put('/siswa/ubah/:siswa_id', studentValidator.update, studentsController.update) // update student by id
router.delete('/siswa/hapus/:siswa_id', studentsController.delete) // delete student by id
router.post('/siswa/upload', studentsController.upload) // upload image

module.exports = router