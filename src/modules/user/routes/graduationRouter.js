const express = require("express");
const router = express.Router();
const graduationController = require("../controllers/graduationController");

// Router Class
router.get("/wisuda", graduationController.getAll); // get all graduation moment

module.exports = router;