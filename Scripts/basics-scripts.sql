show databases;
# mysql
use mysql;
show tables;
# world db
use world;
show tables;
SELECT * FROM world.city;
describe city;

# create emp_details

create database sql_intro ;
show databases;
create table emp_details (Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);
describe emp_details;

insert into emp_details values('Jim',35,'M','2010-09-09','Bangalore',70000),('Shane',32,'M','2011-09-09','Chenai',70400),('Lisa',29,'F','2011-07-02','Ahmedabad',92400);

select * from emp_details;

select distinct city from emp_details;

select count(name) from emp_details;

select count(name) as count_name from emp_details;

select sum(salary) as sum_salary from emp_details;

select avg(salary) as sum_salary from emp_details;

select city from emp_details;

select city from emp_details where name='Jim';

select * from emp_details where age > 32;

select * from emp_details where age > 32 and sex = 'M';

select * from emp_details where city = 'Bangalore' or 'Chenai';

select name from world.city where District = 'Gelderland';

select name from world.city where District = 'Gelderland';
