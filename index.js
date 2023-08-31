// Load environment variables from a .env file
require('dotenv').config();
console.log(process.env) // remove this

// Import the 'mysql' package for database interaction
const mysql = require('mysql');

// Import the 'inquirer' package for interactive prompts
const inquirer = require('inquirer');

// Import the 'console.table' package for displaying formatted tables
const cTable = require('console.table');

// Import the 'figlet' package for generating ASCII art text
const figlet = require('figlet');

// Create a connection to the MySQL database using provided configuration
const connection = mysql.createConnection({
  host: 'localhost',                          // Database host
  port: 3306,                                 // Database port
  user: 'root',                               // Database user
  password: process.env.DB_PASSWORD,           // Database password from environment variables
  database: 'employee_DB',                     // Database name
});

// Establish a connection to the MySQL database
connection.connect((err) => {
    if (err) throw err;  // If there's an error, throw it
    console.log(`connected as id ${connection.threadId}\n`); // Display connection information
    // Generate ASCII art text using 'figlet' package
    figlet('Employee tracker', function(err, data) {
      if (err) {
        console.log('ascii art not loaded');  // If there's an error loading ASCII art, display a message
      } else {
        console.log(data);  // Display the generated ASCII art text
      }
      // Start the prompt for user interaction
      startPrompt();
    });
  });