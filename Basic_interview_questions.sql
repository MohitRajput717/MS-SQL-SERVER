--Basic SQL Server Questions
--What is the difference between WHERE and HAVING clause?
select department, sum(salary) from emp_data where salary >= 50000 group by department  having sum(salary) >=50000;

select * from emp_data where salary >=40000

--Explain the different types of JOINs with examples.
select * from emp_data
select * from emp_detail




select * from emp_data left join  emp_detail on emp_data.id=emp_detail.emp_id

select * from emp_data inner join  emp_detail on emp_data.id=emp_detail.emp_id

select * from emp_data right join  emp_detail on emp_data.id=emp_detail.emp_id

select * from emp_data full outer join  emp_detail on emp_data.id=emp_detail.emp_id

select * from emp_data cross join  emp_detail 

-- Left Anti Join 
select * from emp_data
where not exists (select * from emp_detail where emp_data.id=emp_detail.emp_id);

select * from emp_detail
where not exists (select * from emp_data where emp_data.id=emp_detail.emp_id);


-- left semi join like inner join 

select * from emp_data
where  exists (select * from emp_detail where emp_data.id=emp_detail.emp_id);


--What is the difference between DELETE, TRUNCATE, and DROP?

---delete statement - delete data from table as per statment or through filter
select * from emp_date1 where id=7;
DELETE FROM emp_date1 where id = 7;

---drop statemnt - drop all data from table with type or schema
drop table emp_date1

--truncate - delete all data from table but type or schema is having their

-- creating a copy of table
select * into emp_date1 from emp_data;

truncate table emp_date1
select * from emp_date1

--How do you handle NULL values in queries?
select e.id,e.name,e.department,e.salary,isnull(e1.working_days,0) as working_days,isnull(e1.manger,'No_manger') as Manager
from emp_data e left join emp_detail e1 on e1.emp_id=e.id



--What is a Primary Key and how is it different from a Unique Key?

primary - it is not null, uniquly identified and no duplicacy.
Unique - it is define as unique so after repeating any value it shows error.


