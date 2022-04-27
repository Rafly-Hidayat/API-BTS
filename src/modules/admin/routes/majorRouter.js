const express = require("express");
const router = express.Router();
const majorController = require("../controllers/majorController");

// Router Major
router.get("/jurusan", majorController.getAll); // get all majors

module.exports = router;