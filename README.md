# task-4
sql internship
📊 Task 4 – SQL Aggregate Functions and Grouping
📝 Description
This task focuses on using aggregate functions like SUM, COUNT, AVG, MAX, and MIN in combination with GROUP BY and HAVING clauses to summarize and analyze tabular data in SQL.

🔧 Tools Used
DB Browser for SQLite / MySQL Workbench

GitHub for version control and submission

SQL as the primary language

✅ Objectives
Apply aggregate functions on numeric columns

Use GROUP BY to categorize data

Filter grouped data using HAVING

📁 Folder Structure
pgsql
Copy
Edit
SQL-Aggregate-Task4/
│
├── queries.sql            # Contains all SQL queries for the task
├── README.md              # This file
├── screenshots/           # (Optional) Screenshots of query results
└── sample_data.sql        # (Optional) Sample table & data for testing
📌 Key SQL Queries
Total salary by department

Average salary by department

Employee count per department

Departments with more than 5 employees

Highest salary by department

Rounded average salary

Count of distinct departments




📋 SQL Interview Questions and Answers 
1. What is GROUP BY in SQL?
Answer:
GROUP BY is used to arrange identical data into groups. It is commonly used with aggregate functions like SUM, AVG, COUNT, etc., to perform calculations on each group.




3. What is the difference between WHERE and HAVING?
Answer:

WHERE filters rows before they are grouped.

HAVING filters groups after aggregation.

✅ Example:

sql
Copy
Edit
-- Filters rows
SELECT * FROM employees WHERE salary > 50000;

-- Filters groups
SELECT department, AVG(salary) 
FROM employees 
GROUP BY department 
HAVING AVG(salary) > 50000;



3. How does COUNT(*) differ from COUNT(column)?
Answer:

COUNT(*): Counts all rows, including rows with NULL values.

COUNT(column): Counts only rows where the specified column is NOT NULL.



4. Can you group by multiple columns?
Answer:
Yes. You can group by more than one column to create sub-groups.

✅ Example:

sql
Copy
Edit
SELECT department, job_role, COUNT(*)
FROM employees
GROUP BY department, job_role;




5. What is ROUND() used for in SQL?
Answer:
ROUND() is used to round a numeric value to a specified number of decimal places.

✅ Example:

sql
Copy
Edit
SELECT ROUND(AVG(salary), 2) AS avg_salary FROM employees;



6. How do you find the highest salary by department?
Answer:

sql
Copy
Edit
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


7. What is the default behavior of GROUP BY?
Answer:
It groups rows based on the distinct values of the specified column(s), and each group gets one result row when using aggregate functions.



8. Explain AVG() and SUM() aggregate functions.
Answer:

AVG(column): Returns the average value of the column.

SUM(column): Returns the total sum of the column.



9. How do you count distinct values in a column?
Answer:

sql
Copy
Edit
SELECT COUNT(DISTINCT department) AS unique_departments
FROM employees;


10. What is an aggregate function in SQL?
Answer:
An aggregate function computes a single result from a set of input values.
Examples include: SUM(), AVG(), MAX(), MIN(), COUNT().
