const mysql = require("mysql");
const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "Chatbot",
});
console.log('connected');
module.exports = pool;
