// Import NPM
const express = require("express");
const cors = require("cors");
const path = require("path");
const upload = require("express-fileupload");

// Import file
const con = require("./src/config/db"); // Database

const app = express(); // Create express app
const port = 8000; // port localhost

// use NPM
app.use("/public", express.static(path.join(__dirname, "/public"))); // Static folder for file public
app.use(express.json()); // for parsing application/json
app.use(express.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(cors()); // use cors for cross origin
app.use(upload({
    createParentPath: true
})); // use express-fileupload for upload file

// connecting route to database
app.use(function (req, res, next) {
    req.con = con;
    next();
});
// import admin router
const adminAuth = require("./src/modules/admin/routes/authRouter"); // Router Login Admin
const students = require("./src/modules/admin/routes/studentsRouter"); // Router Students

// use admin router
app.use(adminAuth); // use router login admin
app.use(students); // use router students

app.listen(port, () => { console.log(`Server is running on port ${port}`) }); // listen port