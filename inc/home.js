const conn = require('./db');

module.exports = {
    getData() {
        return new Promise((resolve, reject) => {
            conn.query(`
            SELECT title AS bTitle, subtitle AS bSubtitle, href AS bHref, photo AS bPhoto FROM tb_banners ORDER BY title;

            SELECT title AS nTitle, subtitle AS nSubtitle, photo AS nPhoto FROM tb_news ORDER BY register;
            `, [1, 2], (err, results) => {
                if(err) {
                    reject(err);
                } else {
                    resolve(results);
                }
            });
        });
    }
}