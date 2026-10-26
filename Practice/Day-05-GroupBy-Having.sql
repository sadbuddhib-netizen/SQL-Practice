create database companydb;
use companydb;
create table employees (id int ,Employee_name varchar (40),Department varchar (40),Salary int);
insert into employees values
(1, "Amit", "HR", 40000),
(2, "Sabu", "IT", 60000),
(3, "Rahul", "IT", 55000),
(4, "Priya", "Finance", 50000),
(5, "Om", "HR", 45000),
(6, "Neha", "Finance", 65000),
(7, "Karan", "IT", 70000),
(8, "Pooja", "HR", 48000);
select * from employees;
select Department, count(*) from employees group by Department;
select Department, avg(Salary) from employees group by Department;
select Department, max(Salary) from employees group by Department;
select Department, min(Salary) from employees group by Department;
select Department, sum(Salary) from employees group by Department;
select Department, avg(Salary) from employees group by Department having avg(Salary) > 50000;
select Department, sum(Salary) from employees group by  Department having sum(Salary) >100000;
select Department, count(*) from employees group by Department having count(*) > 2;
select Department, max(Salary) from employees group by Department having max(Salary) > 60000;
select Department, min(Salary) from employees group by Department having min(Salary) < 45000;
select Department, max(Salary) from employees group by Department having Department= "IT";
select max(salary) from employees where Department = "IT";
select Department,avg(Salary) from employees group by Department having Department ="HR";
select Department, sum(Salary) from employees group by Department having Department = "Finance";
select Department, count(*) from employees group by Department having Department = "IT"; 
select Department, avg(Salary) from employees group by Department having avg(Salary) > 55000;
select Department, sum(Salary) from employees group by Department order by sum(Salary) DESC;
select Department, max(Salary) from employees group by  Department order by max(Salary) DESC;
select Department, Salary from employees group by Department order by Salary asc;
