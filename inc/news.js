const conn = require('./db');
const path = require('path');

module.exports = {
    getNews() {
        return new Promise((resolve, reject) => {
            conn.query(`
                SELECT tb_news.id, tb_news.title, tb_news.subtitle, tb_news.photo, tb_users.name
                FROM tb_news
                INNER JOIN tb_users ON tb_news.author = tb_users.id
                ORDER BY tb_news.title
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

            if(!files.photo.name) {
                queryPhoto = ', photo = ?';
                params.push(fields.photo);
            }

            if(fields.id > 0)  {
                params.push(fields.id);

                query = `
                    UPDATE tb_news
                    SET title = ?,
                        subtitle = ?,
                        text = ?
                        ${queryPhoto}
                    WHERE id = ?
                `
            } else {
                params.push(fields.author);

                if(!files.photo.name) {
                    reject('É necessário enviar uma foto.');
                }

                query = `
                    INSERT INTO tb_banners(title, subtitle, text, photo, author)
                    VALUES (?, ?, ?, ?, ?)
                `;

                conn.query(query, params, (err, results) => {
                    if(err) {
                        reject(err);
                    } else {
                        resolve(results);
                    }
                });
            }
        });
    }
};