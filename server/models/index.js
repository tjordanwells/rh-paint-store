const mysql = require("mysql");
const env = process.env.NODE_ENV || "development";
const config = require(__dirname + "/config.json")[env];

let connection;

if (process.env.JAWSDB_URL) {
  connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {
  connection = mysql.createConnection({
    host: config.host,
    port: config.port,
    user: config.username,
    password: config.password,
    database: config.database
  });
}

connection.connect(err => {
  if (err) {
    console.log("Error connecting to database:" + err.stack);
    return;
  }
  console.log("Connected to database as id: " + connection.threadId);
});

module.exports = connection;
