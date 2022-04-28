module.exports = {
    // get all students
    getAll: (con, callback) => {
        con.query(`SELECT * FROM siswa`, (callback))
    },

    // get students by id
    getById: (con, id, callback) => {
        con.query(`SELECT * FROM siswa WHERE siswa_id = ${id}`, (callback))
    },

    // get students by kelas id
    getByKelasId: (con, id, callback) => {
        con.query(`SELECT * FROM siswa WHERE kelas_id = ${id}`, (callback))
    },
}