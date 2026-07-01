create database gymdb;
use gymdb;
create table member(id int,name varchar(50),membership_fee int);
insert into member values(1,"omkar",2000);
insert into member values(2,"sabu",2500);
insert into member values(3,"rahul",1800);
insert into member values(4,"amit",3000);
insert into member values(5,"kamal",2200);
select * from member;
select count(*) from member;
select sum(membership_fee) from member;
select max(membership_fee) from member;
select min(membership_fee) from member;
select avg(membership_fee) from member;

