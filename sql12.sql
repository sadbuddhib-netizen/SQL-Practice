CREATE DATABASE companyctedb;
USE companyctedb;

CREATE TABLE employees(
id INT,
employee_name VARCHAR(50),
department VARCHAR(30),
salary INT
);

INSERT INTO employees VALUES
(1,'Amit','HR',40000),
(2,'Sabu','IT',65000),
(3,'Rahul','Finance',55000),
(4,'Om','IT',75000),
(5,'Neha','HR',48000),
(6,'Karan','Finance',62000);
with EmployeeData as
(
select* from employees
)
select * from EmployeeData;

with High_Salary as 
(
select * from employees
where salary > 60000
)
select * from High_Salary;


with IT_employees as 
(
select * from  employees 
where department = "IT"
)
select * from IT_employees;


select * from employees;
SHOW TABLES;
SELECT COUNT(*) FROM employees;
INSERT INTO employees VALUES
(1,'Amit','HR',40000),
(2,'Sabu','IT',65000),
(3,'Rahul','Finance',55000),
(4,'Om','IT',75000),
(5,'Neha','HR',48000),
(6,'Karan','Finance',62000);
select * from employees;
with financeemployees as 
(
select * from employees
where department = "Finance"
)
select * from financeemployees; 

with LowSalary as 
( 
select * from employees
where salary < 50000
)
select * from LowSalary;

with HRDepartment as
(
select * from employees
where department= "HR"
)
select * from HRDepartment;

with Bonusemployees as
(
select *from employees
where salary >= 65000
)
select *from Bonusemployees;
 
 
 with Sortemployees as
 (
 select salary from employees
 order by salary asc
 )
 select * from Sortemployees;
 
 with Topsalary as
 (
 select * from employees where salary  =  (select max(salary) from employees)
 )
 select * from Topsalary;
 
 with  Averagesalary as
 (
 select * from employees where salary > (select avg(salary) from employees)
 )
 select * from Averagesalary;
 
 select * from employees;