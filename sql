CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

