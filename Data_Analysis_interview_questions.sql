--🔹 Data Analyst-Focused Questions
--Write a query to get total salary by dept and emp wise.

select name,department,salary, sum(salary)  OVER (PARTITION BY department) AS department_total_salary from emp_data;


--How do you perform data aggregation in SQL?
select department, avg(salary) as avg_salary from emp_data group by department

select department, sum(salary) as avg_salary from emp_data group by department

select department, count(*) as count_of_emp from emp_data group by department

select top 1 name, max(salary) as max_salary from emp_data group by name order by max_salary desc ;

select name, salary from emp_data where salary=(select  max(salary) from emp_data );


--How would you handle missing or inconsistent data in SQL?
select e.id,e.name,e.department,e.salary,isnull(e1.working_days,0) as working_days,isnull(e1.manger,'No_manger') as Manager
from emp_data e left join emp_detail e1 on e1.emp_id=e.id 

--remove duplicate data from any table ?

with cte as(SELECT *,ROW_NUMBER() OVER (PARTITION BY emp_id, working_days, manger ORDER BY emp_id) AS rn FROM emp_detail) delete from cte where rn >1

--Explain how you’d perform trend analysis using SQL Server.

SELECT 
    YEAR(ed.hire_date) AS year,
    MONTH(ed.hire_date) AS month,
    d.department,
    AVG(ed.salary) AS avg_salary
FROM emp_data ed
JOIN emp_detail d ON ed.id = d.emp_id
GROUP BY YEAR(ed.hire_date), MONTH(ed.hire_date), d.department
ORDER BY year, month, d.department;

--How do you join sales data with customer details and filter on recent purchases?
