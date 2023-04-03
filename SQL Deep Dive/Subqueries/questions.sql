/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select * from orders where customerid in (
        select customerid from customers where state in ('OH','NY','OR' ) 
        )
order by orderid;

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
select emp_no,first_name,last_name 
from employees 
where emp_no in (
select emp_no from dept_emp 
  where dept_no in (
    select dept_no from dept_manager where emp_no=110183
    )
    );
