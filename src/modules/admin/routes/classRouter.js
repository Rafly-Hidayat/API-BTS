const express = require("express");
const router = express.Router();
const classController = require("../controllers/classController");

// Router Class
router.get("/kelas", classController.getAll); // get all classes
router.get("/kelas/:kelas_id", classController.getById); // get class by id")
router.get("/kelas/jurusan/:jurusan_id", classController.getByJurusanId); // get class by jurusan id
router.get("/jumlah/kelas", classController.getJumlah); // get jumlah kelas
module.exports = router;