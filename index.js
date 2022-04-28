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
app.use(cors({
    origin: "*",
    methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
    preflightContinue: false,
    optionsSuccessStatus: 204
})); // use cors for cross origin
app.use(upload({
    createParentPath: true
})); // use express-fileupload for upload file

// connecting route to database
app.use(function (req, res, next) {
    req.con = con;
    next();
});
// import admin router
const adminAuthRouter = require("./src/modules/admin/routes/authRouter"); // Router Login Admin
const studentsRouter = require("./src/modules/admin/routes/studentsRouter"); // Router Students Admin
const classRouter = require("./src/modules/admin/routes/classRouter"); // Router Class Admin
const teachersRouter = require("./src/modules/admin/routes/teachersRouter"); // Router Teachers Admin
const majorsRouter = require("./src/modules/admin/routes/majorRouter"); // Router Majors Admin

// import user router
const studentsUserRouter = require("./src/modules/user/routes/studentsRouter"); // Router Students User
const classUserRouter = require("./src/modules/user/routes/classRouter"); // Router Class User
const majorsUserRouter = require("./src/modules/user/routes/majorRouter"); // Router Majors User

// use admin router
app.use(cors(), adminAuthRouter); // use router login admin
app.use(cors(), studentsRouter); // use router students admin
app.use(cors(), classRouter); // use router class admin
app.use(cors(), teachersRouter); // use router teachers admin
app.use(cors(), majorsRouter); // use router majors admin

// use user router
app.use("/user", cors(),  studentsUserRouter); // use router students user
app.use("/user", cors(),  classUserRouter); // use router class user
app.use("/user", cors(),  majorsUserRouter); // use router majors user

app.listen(port, () => { console.log(`Server is running on port ${port}`) }); // listen port