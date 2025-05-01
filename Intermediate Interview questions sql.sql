--Intermediate-Level Questions
--What are Window Functions? Explain ROW_NUMBER(), RANK(), DENSE_RANK(), and NTILE().
select *, ROW_NUMBER() over(order by salary desc) as RN from emp_data;

select *, DENSE_RANK() over(order by salary desc) as Denses_Rank from emp_data;

select * from (select *, Rank() over(order by salary desc) as ranki from emp_data ) AS  ranked_data where ranki=3

select id, name, salary,NTILE(4) over (order by salary desc) AS quartile FROM emp_data;


--How would you find duplicate rows in a table?

select emp_id,working_days,manger,count(*) as count_duplicate_row from emp_detail group by emp_id, working_days,manger having count(*) >0

--Write a query to get the second highest salary from a table.

select * from (select *, Rank() over(order by salary desc) as ranki from emp_data ) AS  ranked_data where ranki=2


--What is the use of CTE (Common Table Expressions)? Write an example.

with cte as(select * from emp_data) select * from cte

with cte as(select *, ROW_NUMBER() over(order by salary desc) as RN from emp_data) select * from cte where RN=3;

with cte as(select *, ROW_NUMBER() over(order by salary asc) as RN from emp_data) select * from cte where RN=3;


--How do you optimize a slow-running SQL query?

--Use indexes on columns in WHERE, JOIN, or ORDER BY clauses.

--Avoid SELECT *; only select required columns.

--Use EXISTS instead of IN for subqueries.

--Filter data early using WHERE before joins or aggregates.

--Check execution plan to identify bottlenecks.