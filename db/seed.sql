-- Insert department names into the 'department' table
INSERT INTO department (name)
VALUES ("engineering"),     -- Department for engineering
    ("finance"),           -- Department for finance
    ("marketing"),         -- Department for marketing
    ("sales");             -- Department for sales

-- Retrieve all records from the 'department' table
SELECT * FROM DEPARTMENT;

-- Add role information to the 'role' table
-- Engineering roles
INSERT INTO role (title, salary, department_id)
VALUES ("software engineer", 120000, 1),        -- Software Engineer role in Engineering
       ("project manager", 90000, 1),             -- Project Manager role in Engineering
       ("engineering manager", 225000, 1);        -- Engineering Manager role in Engineering

-- Finance roles
INSERT INTO role (title, salary, department_id)
VALUES ("accountant", 70000, 2),                -- Accountant role in Finance
       ("accounting manager", 120000, 2);         -- Accounting Manager role in Finance

-- Marketing roles
INSERT INTO role (title, salary, department_id)
VALUES ("product marketing manager", 50000, 3), -- Product Marketing Manager role in Marketing
       ("marketing lead", 150000, 3);             -- Marketing Lead role in Marketing

-- Sales role
INSERT INTO role (title, salary, department_id)
VALUES ("sales rep", 85000, 4);                -- Sales Representative role in Sales

-- Retrieve all records from the 'role' table
SELECT * FROM ROLE;

-- Insert employee information into the 'employee' table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
  ("Spider", "Man", 1, 2),                       
  ("Iron", "Man", 3, NULL),                      
  ("Black", "Widow", 2, 2),                      
  ("Hulk", "Banner", 1, 2),                      
  ("Captain", "America", 3, 2),                 
  ("Thor", "Odinson", 3, 2),                     
  ("Wolverine", "Logan", 1, 2),                  

-- Retrieve all records from the 'employee' table
SELECT * FROM employee;