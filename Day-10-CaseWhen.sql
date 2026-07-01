create database companycasedb;
use companycasedb;
create table employees( id int,name varchar(40),salary int);
INSERT INTO employees VALUES
(1,'Amit',40000),
(2,'Sabu',60000),
(3,'Rahul',55000),
(4,'Om',70000),
(5,'Neha',50000);
select name,salary, case  
when salary >= 60000 then "High Salary"
ELSE "Low Salary"
end as salary_status
from employees;

select name,salary,case
when salary >= 70000 then "Excellent"
when salary >= 55000  then "Good"
else "Average"
end as salary_rating
from employees;


select name,salary,case
when salary >= 60000  Then "Bonus Eligible"
else  "Not Eligible"
end as salary_bonus
from employees;

select  name, salary ,case
when salary= 70000 then "A"
when salary = 60000 then "B"
when salary >= 50000 then "C"
 else "D"
end as "salary_grade"
from employees;

select name,salary, case
when salary >= 60000 then "High Salary"
else "Low Salary"
end as salary_asc
from employees
order by salary asc;
