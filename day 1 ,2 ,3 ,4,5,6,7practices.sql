create database moviedb;
use moviedb;
create table movies(id int,movie_name varchar(80),rating int);
insert into movies values (1,"KGF",9);
insert into movies values(2,"Dangal",10);
insert into movies values(3,"Pushpa",8);
insert into movies values(4,"Bahubali",9);
select * from movies;

create database coffedb;
use coffedb;
create table coffee(id int,coffee_name varchar(30),price int);
insert into coffee values(1,"cappuccino",150);
insert into coffee values(2,"Latte",180);
insert into coffee values(3,"Espresso",120);
insert into coffee values(4,"Mocha",200);
insert into coffee values(5,"Cold Coffee",220);
select * from coffee;
select coffee_name from coffee;
select price from coffee;
select * from coffee where price = 180;
select * from coffee where price = 200;
select * from coffee order by price ASC;
select * from coffee order by price DESC;
select coffee_name from coffee;
select price from coffee;
insert into  coffee values(6,"Americano",170);
select * from coffee;


create database mobilestoredb;
use mobilestoredb;
create table mobile (id int,mobile_name varchar(30),brand varchar(50),price int);
insert into mobile values(1, "iPhone 15", "Apple", 80000);
insert into mobile values(2, "Galaxy S24", "Samsung", 75000);
insert into mobile values(3, "Redmi Note 13"," Xiaomi", 18000);
insert into mobile values(4," OnePlus 12", "OnePlus", 65000);
insert into mobile values(5, "iPhone 14", "Apple", 65000);
insert into mobile values(6, "Galaxy A55", "Samsung", 35000);
select*from mobile;
select * from mobile where price > 30000 and price < 70000;
select * from mobile where brand = "Apple" and price < 90000;
select * from mobile where brand = "Apple" or brand ="Samsung";
select * from mobile where not brand ="Apple";
select * from mobile where not price = 65000;
select * from mobile where mobile_name like 'i%';
select * from mobile where mobile_name like "Galaxy%";
select * from mobile where mobile_name like "%Note%";
select * from mobile where brand in ("Apple","Samsung");
select * from mobile where price in(65000,75000);
select * from mobile where brand = "Apple" or  brand = "OnePlus";
select * from mobile where brand in ("Apple","OnePlus");
select * from mobile where price > 20000 and brand ="Samsung";
select * from mobile where mobile_name like "%phone%";
select * from mobile;

create database cricketdb;
use cricketdb;
create table players(id int,player_name varchar(50),run int);
insert into players values(1,"sabu",200);
insert into players values(2,"om",100);
insert into players values(3,"kajal",30);
insert into players values (4,"karan",20);
insert into players values(5,"rahul",20);
select * from players;
select count(*) from players;
select sum(run) from players;
select avg(run) from players;
select min(run) from  players;
select max(run) from players;



create  database sportsdb;
use sportdb;
create table matches(id int,sport varchar(40),score int);
insert into matches values
(1,"cricket",100),
(2,"football",30),
(3,"cricket",70),
(4,"football",90),
(5,"cricket",80),
(6,"football",80),
(7,"Archery",40),
(8,"Archery",30);
select * from matches;
select  count(*) from matches;
select max(score) from matches;
select sport , max(score) from matches group by sport;
select sport , avg(score) from matches group by sport;
select  sport , min(score)from matches  group by sport;
select sport , sum(score) from matches group by sport;
select sport  , count(*) from matches group by sport;
select sport , max(score) from matches group by sport having max(score) > 80;

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

create database ecommercedb;
USE ecommercedb;
create table orders( id int, customer_name varchar(40), city varchar(30),product varchar(30), category varchar(50), Salary int);
ALTER TABLE orders
RENAME COLUMN Salary TO amount;
insert into orders values 
(1, "sabu","Mumbai","Phone","Electronics",30000),
(2,"sanika","Pune","Scarf","Clothing",500),
(3,"om","Mumbai","The Secret","Books",300),
(4,"sampada","Mumbai","Mission","Books",500),
(5,"anant","Bangalore","T-shirt","Clothing",600),
(6,"suddha","Mumbai","Laptop","Electronics",38000),
(7,"Baburao","Delhi","Watch","Electronics",20000),
(8,"kashira","Bangalore","Dupatta","Clothing",400),
(9,"kavy","Delhi","Kurti","Clothing",12000),
(10,"shoka","Bangalore","Cricketbat","Sports",4000);
select * from orders ;
select  customer_name from orders;
select product from orders;
select * from orders where amount > 2000;
select * from orders where city = "Mumbai" and amount > 3000;
select * from orders where  category = "Electronics" OR category = "Sports";
select * from orders where not city ="Pune";
select * from orders where customer_name  like  "A%";
select * from orders where product like "%Phone%";
select * from orders where city in ("Mumbai","Delhi");
select * from orders order by amount desc;
select count(*) from orders;
select sum(amount) from orders;
select avg(amount) from orders;
select max(amount) from orders;
select min(amount) from orders;
select * from orders;
select category, sum(amount) from orders group by category;
select category, avg(amount) from orders group by category;
select category, max(amount) from orders group by category;
select category, min(amount) from orders group by category;
select category, count(*) from orders group by category;
select category, sum(amount) from orders group by category having sum(amount) > 5000;
select category, avg(amount) from orders group by category having avg(amount) > 2500;
select category, count(*) from orders group by category having count(*) >2;
select category, max(amount) from  orders group by category having max(amount) > 4000;
select category,sum(amount) from orders group by category order by sum(amount) desc;
select max(amount) from orders where category = "Electronics";
select avg(amount) from orders where category = "Sports";
select sum(amount) from orders where category = "Books";
select  count(*) from orders where category = "Clothing";
select category, avg(amount) from orders group by category having  avg(amount) > 3000;
select * from orders;

create database coursedb;
use coursedb;
create table students (  student_id int , student_name varchar(30));
insert into students values 
( 1, "Sabu"),
(2, "Amit"),
(3,"Neha"),
(4,"Om"),
(5,"Rahul"),
(6,"Rohan");

create table courses (student_id int , course_name varchar(40));
alter table courses  rename  column  student_id to course_id;
insert into courses values
(1," Python"),
(2," SQL"),
(3," Power BI"),
(5, "Excel"),
(7," Data Science");
select * from courses;
select * from students;
select * from students inner join courses on students.student_id =  courses. course_id ;
select  course_name , student_name  from students inner join courses on students.student_id = courses. course_id  ;
select  count(*) from students inner join courses on students.student_id = courses. course_id  ;

CREATE TABLE doctors(
doctor_id INT,
doctor_name VARCHAR(50)
);
INSERT INTO doctors VALUES
(1,'Amit'),
(2,'Sabu'),
(3,'Rahul'),
(4,'Om');

CREATE TABLE specialization(
doctor_id INT,
specialization_name VARCHAR(50)
);
INSERT INTO specialization VALUES
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(5,'Dermatology');

select * from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id;  
select doctor_name , specialization_name from doctors  inner join specialization on doctors.doctor_id = specialization.doctor_id;
select count(*) from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id;
select * from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id where specialization_name = "Neurology";
select * from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id where specialization_name 
in ("Cardiology","Orthopedics");
select * from doctors inner join  specialization on doctors.doctor_id =specialization.doctor_id order by doctor_name asc;
select * from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id where doctor_name like  ("A%");
select * from doctors inner join specialization on doctors.doctor_id = specialization.doctor_id where specialization_name   like ("%ology%");
select * from doctors;
select * from specialization;
select * from doctors left join specialization on doctors.doctor_id = specialization.doctor_id;
select * from doctors right join specialization on doctors .doctor_id = specialization.doctor_id;
select doctor_name from doctors left join  specialization on doctors.doctor_id = specialization.doctor_id;
select specialization_name from doctors right join  specialization on doctors.doctor_id = specialization.doctor_id;
select  doctor_name,specialization_name from doctors left join  specialization on doctors.doctor_id = specialization.doctor_id;
select count(*) from doctors left join specialization on doctors.doctor_id = specialization.doctor_id; 
select count(*) from doctors right join specialization on doctors.doctor_id = specialization.doctor_id; 
select * from doctors left join specialization on doctors.doctor_id = specialization.doctor_id where specialization_name is Null;
select * from doctors right join specialization on doctors.doctor_id = specialization.doctor_id where doctor_name is null;
select * from doctors right join specialization on doctors.doctor_id = specialization .doctor_id order by doctor_name  asc;