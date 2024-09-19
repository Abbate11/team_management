const { Pool } = require("pg");

const pool = new Pool({
  host: "localhost",
  user: "Abbate11",
  password: "Abbate#11", 
  database: "chupacabrasDb",
  port: 5432, // Default PostgreSQL port
});

module.exports = pool;