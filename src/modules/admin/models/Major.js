module.exports = {
    // get all majors
    getAll: (con, callback) => {
        con.query(`SELECT * FROM jurusan`, (callback))
    },

    getById: (con, id, callback) => {
        con.query(`SELECT * FROM jurusan WHERE jurusan_id = ${id}`, (callback))
    },

    getJumlah: (con, callback) => {
        con.query(`SELECT COUNT(*) AS jumlah FROM jurusan`, (callback))
    }
}