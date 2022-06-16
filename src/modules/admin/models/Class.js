module.exports = {
    // get all classes
    getAll : (con, callback) => {
        con.query(`SELECT * FROM kelas`, (callback))
    },

    getById: (con, id, callback) => {
        con.query(`SELECT * FROM kelas WHERE kelas_id = ${id}`, (callback))
    },

    // get class by jurusan id
    getByJurusanId : (con, jurusan_id, callback) => {
        con.query(`SELECT * FROM kelas WHERE jurusan_id = ${jurusan_id}`, (callback))
    },

    getJumlah: (con, callback) => {
        con.query(`SELECT COUNT(*) AS jumlah FROM kelas`, (callback))
    }
    
    
}