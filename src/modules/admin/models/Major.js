module.exports = {
    // get all majors
    getAll: (con, callback) => {
        con.query(`SELECT * FROM jurusan`, (callback))
    }
}