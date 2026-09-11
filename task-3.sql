CREATE DATABASE banking_db;
USE banking_db;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);
DESC accounts;
SHOW TABLES;
INSERT INTO accounts VALUES
(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');
INSERT INTO accounts VALUES
(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai',
 145000, 810, 'Active', '2024-11-20');
 INSERT INTO accounts VALUES
(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');
INSERT INTO accounts VALUES
(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');
INSERT INTO accounts VALUES
(1004, 'ACC10004', 'Sneha Kulkami', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');
INSERT INTO accounts VALUES
(1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');
INSERT INTO accounts VALUES
(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');
SELECT * FROM accounts;
SELECT customer_name, account_number
FROM accounts;
SELECT customer_name, account_type, balance, status
FROM accounts;
SELECT *
FROM accounts
WHERE account_type = 'Savings';
SELECT account_type FROM accounts;
SELECT *
FROM accounts
WHERE account_type = 'Savings';
SELECT *
FROM accounts
WHERE city = 'Pune';
SELECT city FROM accounts;
SELECT *
FROM accounts
WHERE city = 'Pune';
SELECT *
FROM accounts
WHERE balance > 50000;
SELECT *
FROM accounts
WHERE balance <= 50000;
SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 200000;
SELECT *
FROM accounts
WHERE credit_score >= 750;
SELECT *
FROM accounts
WHERE status = 'Active';
SELECT *
FROM accounts
WHERE status = 'Dormant' OR status = 'Closed';
SELECT *
FROM accounts
WHERE city = 'Pune'
AND status = 'Active';
SELECT *
FROM accounts
WHERE city = 'Mumbai'
OR city = 'Nashik';
SELECT *
FROM accounts
WHERE account_type = 'Savings'
OR account_type = 'Salary';
SELECT *
FROM accounts
WHERE balance NOT BETWEEN 25000 AND 100000;
SELECT *
FROM accounts
WHERE customer_name LIKE 'A%';
SELECT *
FROM accounts
WHERE customer_name LIKE '%a';
SELECT *
FROM accounts
WHERE branch LIKE '%Road%';
SELECT *
FROM accounts
ORDER BY balance DESC
LIMIT 3;
SELECT *
FROM accounts
LIMIT 5;
SELECT *
FROM accounts
LIMIT 3, 3;
SELECT *
FROM accounts
WHERE account_type = 'Savings'
AND city = 'Pune'
AND status = 'Active'
AND balance > 50000;
SELECT *
FROM accounts
WHERE city IN ('Pune', 'Mumbai', 'Nashik')
AND credit_score > 750;
SELECT *
FROM accounts
WHERE balance > 100000
AND credit_score >= 800;
SELECT *
FROM accounts
WHERE balance > 100000
AND credit_score >= 800;
SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 150000
OR credit_score > 800;
SELECT *
FROM accounts
WHERE status = 'Active'
AND account_type <> 'Current';
SELECT *
FROM accounts
WHERE customer_name LIKE '%ar%';
UPDATE accounts
SET balance = 95000
WHERE customer_name = 'Aarav Sharma';
UPDATE accounts
SET balance = 95000
WHERE account_id = 1001;
UPDATE accounts
SET status = 'Active'
WHERE account_id = 1005;
UPDATE accounts
SET credit_score = 755
WHERE account_id = 1003;
UPDATE accounts
SET branch = 'College Road'
WHERE account_id = 1004;
UPDATE accounts
SET account_type = 'Premium Current'
WHERE account_id = 1002;
UPDATE accounts
SET balance = balance + 25000
WHERE account_id = 1006;
UPDATE accounts
SET balance = balance + 5000
WHERE account_id = 1001;
UPDATE accounts
SET balance = balance + 5000
WHERE account_id = 1003;
UPDATE accounts
SET city = 'Pune City'
WHERE account_id IN (1001, 1003, 1005);
UPDATE accounts
SET credit_score = credit_score + 10
WHERE status = 'Active'
AND credit_score < 750;
SELECT account_id, customer_name, credit_score, status
FROM accounts;
UPDATE accounts
SET credit_score = credit_score + 10
WHERE account_id = 1005;
SELECT account_id, balance, status
FROM accounts
WHERE balance < 20000;
DELETE FROM accounts
WHERE account_id = 1005;
DELETE FROM accounts
WHERE account_id = 1004;
DELETE FROM accounts
WHERE status = 'Closed';
SELECT account_id, status
FROM accounts
WHERE status = 'Closed';
SELECT account_id, balance, credit_score
FROM accounts
WHERE balance < 10000
OR credit_score < 600;
SELECT account_id, city, status
FROM accounts
WHERE city = 'Pune City'
AND status = 'Dormant';
ALTER TABLE accounts
ADD COLUMN email VARCHAR(100);
ALTER TABLE accounts
ADD COLUMN mobile VARCHAR(15);
ALTER TABLE accounts
MODIFY COLUMN branch VARCHAR(100);
ALTER TABLE accounts
RENAME COLUMN customer_name TO name;
ALTER TABLE accounts
DROP COLUMN mobile;
ALTER TABLE accounts
ADD COLUMN account_category VARCHAR(30);
UPDATE accounts
SET account_category = 'Premium'
WHERE account_id = 1001;
UPDATE accounts
SET account_category = 'Regular'
WHERE account_id = 1002;
ALTER TABLE accounts
RENAME TO bank_accounts;
DESC bank_accounts;
TRUNCATE TABLE bank_accounts;
DROP TABLE bank_accounts;