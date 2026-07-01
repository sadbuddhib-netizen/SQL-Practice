create database companyviewdb;
use companyviewdb;
create table employees (
id int, employee_name varchar(30),department varchar(40),salary int);
INSERT INTO employees VALUES
(1,'Amit','HR',40000),
(2,'Sabu','IT',65000),
(3,'Rahul','Finance',55000),
(4,'Om','IT',75000),
(5,'Neha','HR',48000);

create view  IT_employees  as
select * from employees 
where department = "IT";
select * from IT_employees;

create view  High_Salary  as
select * from employees
where salary > 50000;

select * from  High_Salary;
Drop view IT_employees;

create view HR_employees as
select * from employees 
where department = "HR";
select * from HR_employees;

create view Finance_Employees as
select * from employees
where department = "Finance";
select * from Finance_Employees;
 drop view High_salary;
 create view High_Salary as
 select * from employees 
 where salary > 60000;
 select * from High_Salary;
 
create view Low_Salary as
 select * from employees 
 where salary < 50000;
 select * from Low_Salary;
 drop view High_Salary;
 drop view Finance_employees;