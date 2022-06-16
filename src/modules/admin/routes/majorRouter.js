const express = require("express");
const router = express.Router();
const majorController = require("../controllers/majorController");

// Router Major
router.get("/jurusan", majorController.getAll); // get all majors
router.get("/jurusan/:jurusan_id", majorController.getById); // get major by id
router.get("/jumlah/jurusan", majorController.getJumlah); // get jumlah majors

module.exports = router;