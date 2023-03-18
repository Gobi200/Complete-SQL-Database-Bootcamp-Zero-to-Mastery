
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select concat(a.firstname,'  ',a.lastname) as "Customer Name", b.orderid 
from customers as a 
inner join orders as b on a.customerid = b.customerid 
where state in ('OH','NY','OR')
order by orderid;



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT a.prod_id, a.title, b.quan_in_stock from products as a 
INNER JOIN inventory as b on b.prod_id = a.prod_id;


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select a.emp_no, concat(a.first_name,'  ',a.last_name) as "Employees Name" , b.dept_no 
from employees a 
inner join dept_emp as b on a.emp_no = b.emp_no ;




