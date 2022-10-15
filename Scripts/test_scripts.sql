show databases;
use classicmodels;
show tables;
select * from customers;
describe customers;

# create and check DATABASE 
CREATE database sql_intro;
show databases;

create table employee_details(Name varchar(25), age int(3), sex char(1));

show tables;

INSERT into employee_details values ('test1',25,'M');
commit;

select * from employee_details;

select distinct city from customers;

SELECT COUNT(customerName) from customers;

SELECT COUNT(customerName) as countNames from customers;
