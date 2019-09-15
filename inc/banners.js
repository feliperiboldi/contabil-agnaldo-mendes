const conn = require('./db');

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
    }
};