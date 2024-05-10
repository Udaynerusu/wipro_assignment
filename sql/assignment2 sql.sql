/*

Assignment 2:

 Design a database schema for a library system, including 
 tables, fields, and constraints like NOT NULL, UNIQUE, and CHECK.
 Include primary and foreign keys to establish relationships between tables.
 
 */




create database library;


use library;


create table books
(
book_id int primary key,
title varchar(50) not null,
author varchar(30) not null,
isbn varchar(13) unique,
published_yr int,
quantity int not null
);



create table members
(
member_id int primary key,
name varchar(30) not null,
email varchar(30) unique,
mobile varchar(10) unique,
address varchar(50)
);



create table loans
(
loan_id int not null primary key,
member_id int not null,
book_id int not null,
foreign key(member_id) references members(member_id),
foreign key(book_id) references books(book_id)
);



describe books;


describe members;


describe loans;
