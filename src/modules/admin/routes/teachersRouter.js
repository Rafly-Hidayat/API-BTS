const express = require("express");
const router = express.Router();
const teachersController = require("../controllers/teachersController");
const teachersValidator = require("../validator/teacher/teacher.validation");

// Router Teachers
router.get("/guru", teachersController.getAll); // get all teachers
router.get("/guru/:guru_id", teachersController.getById); // get teacher by id
router.post("/guru/tambah", teachersValidator.create, teachersController.create); // create teacher
router.put("/guru/ubah/:guru_id", teachersValidator.create, teachersController.update); // update teacher
router.delete("/guru/hapus/:guru_id", teachersController.delete); // delete teacher
router.post("/guru/upload", teachersController.upload); // upload teacher
router.get("/jumlah/guru", teachersController.getCount); // get count teacher
router.get("/kaprog", teachersController.getKaprog); // get Kaprog

module.exports = router;