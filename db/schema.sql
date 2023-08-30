/* This code creates a database named 'employee_DB' with three tables: 'department', 'role', and 'employee'. 
These tables are designed to store information about departments, roles, and employees, and they establish 
relationships using foreign keys with appropriate referential actions on delete and update. */

-- Drop the database 'employee_DB' if it exists
DROP DATABASE IF EXISTS employee_DB;

-- Create a new database 'employee_DB'
CREATE DATABASE employee_DB;

-- Switch to using the newly created database
USE employee_DB;

-- Create a table 'department' to store department information
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each department (auto-incremented integer)
  name VARCHAR(30) NOT NULL                    -- Name of the department (maximum length: 30 characters)
);

-- Create a table 'role' to store role information
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each role (auto-incremented integer)
  title VARCHAR(30) NOT NULL,                  -- Title of the role (maximum length: 30 characters)
  salary DECIMAL(20, 2) NULL,                  -- Salary for the role (decimal with precision of 20 and scale of 2)
  department_id INT NOT NULL,                  -- Foreign key referencing department
  FOREIGN KEY (department_id)
        REFERENCES department(id)
        ON DELETE CASCADE ON UPDATE CASCADE    -- Set referential actions on delete and update
);

-- Create a table 'employee' to store employee information
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each employee (auto-incremented integer)
  first_name VARCHAR(30) NOT NULL,             -- First name of the employee (maximum length: 30 characters)
  last_name VARCHAR(30) NOT NULL,              -- Last name of the employee (maximum length: 30 characters)
  role_id INT NOT NULL,                        -- Foreign key referencing role
  manager_id INT NULL,                         -- Foreign key referencing manager (can be null)
  FOREIGN KEY (role_id)
        REFERENCES role(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,  -- Set referential actions on delete and update
  FOREIGN KEY (manager_id)
        REFERENCES employee(id)
        ON DELETE SET NULL                     -- Set manager to null on delete
        ON UPDATE CASCADE                      -- Cascade update to manager_id
);