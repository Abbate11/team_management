const pool = require("./connection");

class DB {
    constructor() {}
  
    async query(sql, args = []) {
      const client = await pool.connect();
      try {
        const result = await client.query(sql, args);
        return result;
      } finally {
        client.release();
      }
    }
}

findAllPlayers() {
  return this.query('SELECT * FROM ')
}


module.exports = new DB();