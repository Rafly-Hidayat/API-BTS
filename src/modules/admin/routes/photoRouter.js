const express = require('express')
const router = express.Router()
const photoController = require('../controllers/photoController')

// photo routers
router.get('/gambar/kelas', photoController.getAll) // get all photo class
router.get("/kelas/gambar/:kelas_id", photoController.getBykelasId); // get photo class by kelas id
router.get("/gambar/kelas/:gambar_id", photoController.getById); // get photo class by id
router.post("/gambar/kelas/tambah", photoController.create); // create photo class
router.post('/gambar/kelas/upload', photoController.upload) // upload photo class
router.put('/gambar/kelas/ubah/:gambar_id', photoController.update) // update photo class by id
router.delete('/gambar/kelas/hapus/:gambar_id', photoController.delete) // delete photo class by id

module.exports = router