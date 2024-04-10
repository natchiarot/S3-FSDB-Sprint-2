// Creates a connection pool using the credentials stored in the .env file
// See .env.template for an example of what the .env file should contain.
const Pool = require("pg").Pool;
const pool = new Pool({
  user: process.env.PG_USER,
  password: process.env.PG_PASSWORD,
  database: process.env.PG_DB,
  port: process.env.PG_PORT || 5432,
});

module.exports = pool;
