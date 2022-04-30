const express = require("express");
const router = express.Router();
const classController = require("../controllers/classController");

// Router Class
router.get("/kelas", classController.getAll); // get all classes
router.get("/kelas/jurusan/:jurusan_id", classController.getByJurusanId); // get class by jurusan id

module.exports = router;