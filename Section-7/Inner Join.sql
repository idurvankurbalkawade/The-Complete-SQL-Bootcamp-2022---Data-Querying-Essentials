-- select the data from employee and salary table --
select * from employees;
select * from salary;

/* 
	STEPS for inner join
    1.Identify the tables that you would like to join
    2.Establish the type of join required
    3.Establish joining condition
    4.Choose columns of data you want in your single result
*/

-- Obtain the emp_id,first_name,last_name from the employees table and current salary from the salary table
SELECT e.emp_id,e.first_name,e.last_name,s.current_salary
FROM employees AS e
INNER JOIN salary AS s
ON e.emp_id = s.emp_id;

-- Alternative for above query( we can also use USING keyword)
SELECT e.emp_id,e.first_name,e.last_name,s.current_salary
FROM employees AS e
INNER JOIN salary AS s
USING(emp_id);

-- Renaming the emp_id column in salary table to employee_id and performing the above query(we will get the same output even after changing column name)
ALTER TABLE salary 
CHANGE COLUMN emp_id employee_id INT NOT NULL;
SELECT * FROM salary;
SELECT e.emp_id,e.first_name,e.last_name,s.current_salary
FROM employees AS e
INNER JOIN salary AS s
ON e.emp_id = s.employee_id;