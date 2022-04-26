const con = require("../../../config/db");
const env = require('dotenv')

env.config()
module.exports = {
    // login admin
    login: (req, res) => {
        // get data from request body
        const post = {
            admin_password: req.body.password,
            admin_email: req.body.email,
        };
        con.query(
            `SELECT * FROM admin WHERE admin_password = ? AND admin_email = ?`,
            [post.admin_password, post.admin_email],
            (err, rows) => {
                if (err) res.send(err.sqlMessage, 400);
                if (rows.length == 1) {
                    res.json({
                        error: false,
                        message: "Login Success",
                        admin_id: rows[0].admin_id,
                        name: rows[0].admin_nama
                    });

                } else {
                    return res.json({
                        error: true,
                        message: "Email or password is wrong",
                    });
                }
            }
        );
    }
};