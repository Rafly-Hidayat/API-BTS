// connect to database
const mysql = require('mysql')
require('dotenv').config() // config dotenv for enviroment variable

// create connection
const con = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
})

// connect to database
con.connect((err) => {
    err ? console.log(err) : console.log('CONNECTED TO DATABASE!')
}) 

module.exports = con