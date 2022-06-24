module.exports = {
    // get all graduation moment
    getAll : (con, callback) => {
        con.query(`SELECT * FROM wisuda`, (callback))
    }
}