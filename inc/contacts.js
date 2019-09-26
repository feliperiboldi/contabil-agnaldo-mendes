const conn = require('./db');

module.exports = {
    render(req, res, error, success) {
        res.render('index', {
            body: req.body,
            error,
            success
        });
    },

    save(fields) {
        return new Promise((resolve, reject) => {
            conn.query(`
                INSERT INTO tb_contacts(name, company, email, telephone, subject, message)
                VALUES(?, ?, ?, ?, ?, ?)
            `, [
                fields.name,
                fields.company,
                fields.email,
                fields.telephone,
                fields.subject,
                fields.message
            ], (err, results) => {
                if(err) {
                    reject(err);
                } else {
                    resolve(results);
                }
            });
        });
    }
};