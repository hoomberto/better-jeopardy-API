const Pool = require('pg').Pool;

const pool = new Client({
  user: "",
  password: "",
  host: "localhost",
  port: 5432,
  database: "better-jeopardy"
});

module.exports = pool;
