-- ======================================================
-- SQL Interview Questions (1-10)
-- Author      : Sadbuddhi Bhaigade
-- Database    : MySQL
-- ======================================================

-- This is a GitHub-ready template.

-- ==========================================
-- Question 1
-- Display all employees.
-- ==========================================
SELECT * FROM employees;

-- ==========================================
-- Question 2
-- Display employee name and salary.
-- ==========================================
SELECT employee_name, salary
FROM employees;

-- ==========================================
-- Question 3
-- Display employees whose salary is greater than 60000.
-- ==========================================
SELECT *
FROM employees
WHERE salary > 60000;

-- ==========================================
-- Question 4
-- Display employees from the IT department.
-- ==========================================
SELECT *
FROM employees
WHERE department = 'IT';

-- ==========================================
-- Question 5
-- Display employees from Mumbai.
-- ==========================================
SELECT *
FROM employees
WHERE city = 'Mumbai';
-- ==========================================



-- ==========================================
-- Question 6
-- Display employees whose salary is greater than 50000
-- and whose city is Mumbai.
-- ==========================================

SELECT *
FROM employees
WHERE salary > 50000
AND city = 'Mumbai';



-- ==========================================
-- Question 7
-- Display employees from the HR or Finance department.
-- ==========================================

SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Finance';



-- ==========================================
-- Question 8
-- Display employees whose name starts with 'R'.
-- ==========================================

SELECT *
FROM employees
WHERE employee_name LIKE 'R%';



-- ==========================================
-- Question 9
-- Display employees whose city is either Mumbai or Delhi.
-- ==========================================

SELECT *
FROM employees
WHERE city IN ('Mumbai', 'Delhi');



-- ==========================================
-- Question 10
-- Sort employees by salary in descending order.
-- ==========================================

SELECT *
FROM employees
ORDER BY salary DESC;
