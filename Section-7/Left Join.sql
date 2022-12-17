-- Observe the employee and salary table
SELECT * FROM employees;
SELECT * FROM salary;

/* 
	STEPS for LEFT join
    1.Identify the tables that you would like to join
    2.Establish the type of join required
    3.Establish joining condition
    4.Choose columns of data you want in your single result
*/
SELECT e.*,
s.prior_salary,s.current_salary
FROM employees AS e
LEFT JOIN salary AS s
ON e.emp_id = s.employee_id;

