create database training;
use training;

create table employee
(
id int,
name varchar(30),
dept varchar(30),
salary float,
age int);

insert into employee values(1,"uday","hr",100000,23);
select * from employee;
insert into employee values(2,"kiran","developer",500000,24),
                           (3,"charan","tester",40000,24),
                           (4,"rakesh","analyst",60000,24),
                           (5,"raghu","specalist",80000,24);
update employee set age=27,salary=60000 where id=3;

show tables;

create table car
(
model varchar(15),
company varchar(25),
price int
);

describe car;

alter table car add column release_year int;

alter table car add column colour varchar(15);

alter table car drop release_year;

alter table car rename column colour to color;

alter table car modify column model varchar(30);

rename table cars to car;

create table cars as select * from car;

drop table cars;

select name,salary,salary+25000 as bonus,salary/30 as daily_rate from employee;

select * from employee where dept!="hr";

select * from employee where dept="hr" or dept="analyst";

select * from employee where dept!="hr" and age>24;

select * from employee order by salary desc;

select * from employee order by salary;

select * from employee order by name;

select * from employee where age=24 order by salary desc;

select sum(salary) from employee;

select count(salary) from employee;

select max(salary) from employee;

select min(salary) from employee;

select dept,count(id) from employee group by dept;

select dept,count(id),max(salary),min(salary) from employee group by dept;

