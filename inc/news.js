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
    }
};