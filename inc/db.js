const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'mysql669.umbler.com:41890',
    user: 'admin_contabil',
    password: 'Contabilsite545282',
    database: 'contabil-site',
    multipleStatements: true
});

module.exports = connection;