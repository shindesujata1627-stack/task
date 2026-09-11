CREATE DATABASE company_db;
USE company_db;
SELECT DATABASE();
USE company_db;
CREATE DATABASE company_db;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);
SELECT * FROM employees;
SELECT employee_name FROM employees;
DESC employees;
SELECT name FROM employees;
SELECT name, salary FROM employees;
SELECT * FROM employees
WHERE city = 'Pune';
SELECT * FROM employees
WHERE city = 'Mumbai';
SELECT * FROM employees
WHERE department = 'Development';SELECT * FROM employees
WHERE department = 'Testing';
SELECT * FROM employees
WHERE status = 'Active';
SELECT * FROM employees
WHERE status = 'Inactive';
SELECT * FROM employees
WHERE id = 103;
SELECT * FROM employees
WHERE employee_id = 103;
SELECT * FROM employees
WHERE name = 'Priya Sharma';
SELECT * FROM employees
WHERE salary > 40000;
SELECT * FROM employees
WHERE salary < 40000;
SELECT * FROM employees
WHERE salary = 35000;
SELECT * FROM employees
WHERE salary >= 42000;
SELECT * FROM employees
WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees
WHERE department = 'Development' AND salary > 45000;
SELECT * FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';
UPDATE employees
SET salary = 48000
WHERE employee_id = 101;
UPDATE employees
SET status = 'Active'
WHERE name = 'Rohan Deshmukh';
SELECT employee_id, name, status
FROM employees
WHERE name = 'Rohan Deshmukh';
SELECT * FROM employees
WHERE name = 'Rohan Deshmukh';
SHOW CREATE TABLE employees;
SELECT employee_id, name, status
FROM employees;
SELECT * FROM employees
WHERE status = 'Inactive';
SELECT * FROM employees;
INSERT INTO employees (employee_id, name, salary, department, city, status)
VALUES (105, 'Rohan Deshmukh', 30000, 'Support', 'Mumbai', 'Inactive');
UPDATE employees
SET status = 'Active'
WHERE employee_id = 105;
UPDATE employees
SET city = 'Pune'
WHERE employee_id = 104;
UPDATE employees
SET department = 'Development'
WHERE employee_id = 102;
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;
USE company_db;
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing'; 
UPDATE employees
SET salary = salary + 2000
WHERE employee_id IN (
    SELECT employee_id
    FROM (SELECT employee_id FROM employees WHERE department = 'Testing') AS temp
);
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';
SET SQL_SAFE_UPDATES = 1;
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';
SET SQL_SAFE_UPDATES = 1;
DELETE FROM employees
WHERE employee_id = 105;
DELETE FROM employees
WHERE employee_id = 105;
DELETE FROM employees
WHERE status = 'Inactive';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE status = 'Inactive';
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE status = 'Inactive';
SET SQL_SAFE_UPDATES = 1;
DELETE FROM employees
WHERE salary < 30000;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE salary < 30000;
SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE salary < 30000;
SET SQL_SAFE_UPDATES = 1;
DELETE FROM employees
WHERE employee_id = 104;
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
ALTER TABLE employees
ADD COLUMN mobile VARCHAR(15);
ALTER TABLE employees
MODIFY COLUMN city VARCHAR(100);
DESC employees;
ALTER TABLE employees
DROP COLUMN mobile;
ALTER TABLE employees
MODIFY COLUMN salary DECIMAL(12,2);
ALTER TABLE employees
ADD COLUMN experience INT;
UPDATE employees
SET experience = 2
WHERE employee_id = 101;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO departments VALUES
(1, 'Development', 'Pune'),
(2, 'Testing', 'Mumbai'),
(3, 'HR', 'Nashik');
SELECT * FROM departments;
SELECT department_name
FROM departments;
DELETE FROM departments
WHERE department_id = 3;
RENAME TABLE departments TO company_departments;
DESC company_departments;
DELETE FROM company_departments;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM company_departments;

SET SQL_SAFE_UPDATES = 1;
DROP TABLE company_departments;
SHOW TABLES;
SHOW TABLES;




