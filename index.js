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
app.use(upload({
    createParentPath: true
})); // use express-fileupload for upload file

// set up cors
// const whiteList = [ 'https://www.google.com/', 'http://localhost:3000/' ];
const corsOptions = {
    origin: '*',
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true
};
app.use(cors(corsOptions));

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
const photoRouter = require("./src/modules/admin/routes/photoRouter") // Router Photos Admin

// import user router
const studentsUserRouter = require("./src/modules/user/routes/studentsRouter"); // Router Students User
const classUserRouter = require("./src/modules/user/routes/classRouter"); // Router Class User
const majorsUserRouter = require("./src/modules/user/routes/majorRouter"); // Router Majors User

// use admin router
app.use(adminAuthRouter); // use router login admin
app.use(studentsRouter); // use router students admin
app.use(classRouter); // use router class admin
app.use(teachersRouter); // use router teachers admin
app.use(majorsRouter); // use router majors admin
app.use(photoRouter); // use router Photos admin

// use user router
app.use("/user", studentsUserRouter); // use router students user
app.use("/user", classUserRouter); // use router class user
app.use("/user", majorsUserRouter); // use router majors user

app.listen(port, () => { console.log(`Server is running on port ${port}`) }); // listen port