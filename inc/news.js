const conn = require('./db');
const path = require('path');

module.exports = {
    getNews() {
        return new Promise((resolve, reject) => {
            conn.query(`
                SELECT * FROM tb_news ORDER BY title
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

            let query, queryPhoto = '', params = [
                fields.title,
                fields.subtitle,
                fields.text
            ];

            if (files.photo.name) {
                queryPhoto = ', photo = ?';
                params.push(fields.photo);
            }

            if(fields.id > 0) {
                params.push(fields.id);

                query = `
                    UPDATE tb_news
                    SET title = ?,
                        subtitle = ?,
                        text = ?
                        ${queryPhoto}
                    WHERE id = ?
                `;
            } else {
                if(!files.photo.name) {
                    reject('É necessário enviar uma foto.');
                }

                query = `
                    INSERT INTO tb_news(title, subtitle, text, photo)
                    VALUES (?, ?, ?, ?)
                `;
            }

            conn.query(query, params, (err, results) => {
                if(err) {
                    reject(err);
                } else {
                    resolve(results);
                }
            });
         });
    },

    delete(id) {
        return new Promise((resolve, reject) => {
            conn.query(`
                DELETE FROM tb_news WHERE id = ?
            `, [
                id
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