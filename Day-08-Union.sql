create database collegedb;
use collegedb;
create table morning_shift(employee_name varchar(40));
insert into morning_shift value ("sabu"),("sushma"),("balraj"),("kavita");
create table evening_shift(employee_name varchar(40));
insert into evening_shift values("Rakesh"),("sabu"),("sampada"),("om"),("anant");
select * from morning_shift union select* from evening_shift;
select * from morning_shift union all select * from evening_shift;s
select count(*) from morning_shift union  select count(*) from evening_shift;
select count(*) from morning_shift union all select count(*) from evening_shift;
select * from morning_shift  union select * from evening_shift order by employee_name asc;
select * from morning_shift where employee_name like ("s%") union select * from evening_shift where employee_name like ("s%");
select * from morning_Shift  where employee_name in ("sabu","balraj","Rakesh") union select * from  evening_shift where employee_name in ("sabu","balraj","Rakesh");
