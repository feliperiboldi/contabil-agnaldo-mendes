const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'mysql669.umbler.com',
    user: 'sqluser',
    password: 'Sqluserdba',
    database: 'contabil-site',
    multipleStatements: true
});

module.exports = connection;