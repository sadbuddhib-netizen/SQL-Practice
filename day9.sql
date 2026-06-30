create database companysub;
use companysub;
create table employees( id int,name varchar(40),salary int);
insert into employees values
(1,'Amit',40000),
(2,'Sabu',60000),
(3,'Rahul',55000),
(4,'Om',70000),
(5,'Neha',50000);
select * from employees where salary > ( select avg(salary) from employees );
select * from employees where salary < (select avg(salary) from employees);
select * from employees where salary = (select max(salary) from employees);
select * from employees where salary = (select min(salary) from employees);
select salary from employees where name = "rahul" < ss( select salary from employees);

