INSERT INTO department (name)
VALUES ("engineering"),
    ("finance"),
    ("marketing"),
    ("sales");

SELECT * FROM DEPARTMENT;

-- engineering department has engineers and project managers and engineering manager
-- finance department has accountants and managers
--  marketing department has product marketing manager, marketing lead
INSERT INTO role (title, salary, department_id)
VALUES ("software engineer", 120000, 1),
    ("project manager", 90000, 1),
    ("engineering manager", 225000, 1),
    ("accountant", 70000, 2),
    ("accounting manager", 120000, 2),
    ("product marketing manager", 50000, 3),
    ("marketing lead", 150000, 3),
    ("sales rep", 85000, 4);

SELECT * FROM ROLE;

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
  (1, 'Tony', 'Stark', 3, NULL),          -- Engineering Manager, no manager
  (2, 'Peter', 'Parker', 3, 1),          -- Engineering Manager, managed by Tony
  (3, 'Natasha', 'Romanoff', 1, 2),      -- Software Engineer, managed by Peter
  (4, 'Steve', 'Rogers', 1, 2),          -- Software Engineer, managed by Peter
  (5, 'Wanda', 'Maximoff', 2, 1);        -- Project Manager, managed by Tony

SELECT * FROM employee;