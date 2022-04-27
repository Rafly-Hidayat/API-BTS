module.exports = {
    // get all classes
    getAll : (con, callback) => {
        con.query(`SELECT * FROM kelas`, (callback))
    },

    // get class by jurusan id
    getByJurusanId : (con, jurusan_id, callback) => {
        con.query(`SELECT * FROM kelas WHERE jurusan_id = ${jurusan_id}`, (callback))
    }
    
}