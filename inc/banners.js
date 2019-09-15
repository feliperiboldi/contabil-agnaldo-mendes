const conn = require('./db');
const path = require('path');

module.exports = {
    getBanners() {
        return new Promise((resolve, reject) => {
            conn.query(`
                SELECT * FROM tb_banners ORDER BY title
            `, (err, results) => {
                if(err) {
                    reject(err);
                } else {
                    resolve(results);
                }
            })
        });
    },

    save(fields, files) {
        return new Promise((resolve, reject) => {
            fields.photo = `images/${path.parse(files.photo.path).base}`;

            conn.query(`
                INSERT INTO tb_banners(title, subtitle, href, photo)
                VALUES(?, ?, ?, ?)
            `, [
                fields.title,
                fields.subtitle,
                fields.href,
                fields.photo
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