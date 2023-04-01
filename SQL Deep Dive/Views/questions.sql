/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
select * from employees 
where EXTRACT(year from hire_date) BETWEEN 1990 and 1995
order by emp_no;


-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATE VIEW "bigbucks" AS 
select  a.emp_no,max(b.salary) 
from employees as a 
join salaries as b using (emp_no)
where b.salary > 80000
group by emp_no
order by emp_no;

-- ...
