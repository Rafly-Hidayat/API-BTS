const express = require("express");
const router = express.Router();
const teachersController = require("../controllers/teachersController");

// Router Teachers
router.get("/guru", teachersController.getAll); // get all teachers
router.get("/guru/:guru_id", teachersController.getById); // get teacher by id
router.post("/guru/tambah", teachersController.create); // create teacher
router.put("/guru/ubah/:guru_id", teachersController.update); // update teacher
router.delete("/guru/hapus/:guru_id", teachersController.delete); // delete teacher

module.exports = router;