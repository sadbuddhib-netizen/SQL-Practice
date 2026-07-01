create database companyjoin;
use companyjoin;
create table employees( id int, name varchar(30));
insert into employees values
(1,"Amit"),
(2,"Sabu"),
(3,"Rahul"),
(4,"Om");

create table department(id int,name varchar(30));
insert into department values
(1,"HR"),
(2,"IT"),
(3,"Finance"),
(5,"Marketing");
insert into department values(6,"Entertainment");
select * from employees inner join department on employees.id = department.id;

select * from employees;
select * from department;
alter table department rename column  name to  department_name;
select * from employees inner join department on employees.id = department.id;
select count(*) from employees inner join department on employees.id = department.id;
select*from  employees inner join department on employees.id = department.id   where department_name ="IT";
select * from employees inner join department on employees.id = department.id  where department_name ="HR";

select * from employees inner join department on employees.id = department.id  order by name asc;
select * from employees inner join department on employees.id = department.id where department_name in ("HR","Finance");
