-- Observe employees and salary table
SELECT * FROM employees;
SELECT * FROM salary;

/* 
	STEPS for RIGHT join
    1.Identify the tables that you would like to join
    2.Establish the type of join required
    3.Establish joining condition
    4.Choose columns of data you want in your single result
*/

-- Obtain all information from the salary table and join the employees table to bring back the employees first name
SELECT s.*,
	   e.first_name
FROM employees AS e
RIGHT JOIN salary AS s
ON e.emp_id = s.employee_id;