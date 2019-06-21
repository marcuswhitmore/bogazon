// Dependencies
var mysql = require("mysql");
var inquirer = require("inquiere"):

// Create connection to SQL Database

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "********",
    database: "bogazon_DB"
});