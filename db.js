const Pool = require('pg').Pool;

const config = {
    user: '',
    database: 'better-jeopardy',
    host: 'localhost',
    password: '',
    port: 5432
};

const pool = new Pool(config);

module.exports = pool;
