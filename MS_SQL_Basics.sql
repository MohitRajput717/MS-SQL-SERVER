--create database
create database emp

-- table
use emp

-- database
DROP database emp

--create table and insert values
create table emp_data (id int primary key, name varchar(20), department varchar(20), salary int)

--insert data into tables
insert into emp_data (id,name,department,salary)
values(1,'mohit','IT',52000),
	(2,'Rohit','Field',15300),
	(3, 'Deepak','Field',17400),
	(4,'Jitender','Finance',51200),
	(5,'ashwany','IT',57500),
	(6,'naveen','Finance',48400);

select * from emp_data

-- create table and insert few column values in 

insert into emp_data(id,name,department) values(7,'Siddhart','IT')

-- update values in inserted table
UPDATE emp_data
SET salary = 42300
WHERE id = 7;


-- Q1. Need all IT dept detail.

Select * from emp_data where department ='IT';

-- Q2 create a copy name emp_data1 and need all the detail from dep_data

select * into emp_date1 from emp_data;

select * from emp_date1;




