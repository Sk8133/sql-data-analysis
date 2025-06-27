-- 1. Total Salary of all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- 2. Average Salary of all employees
SELECT AVG(salary) AS average_salary FROM employees;

-- 3. Count of all employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 4. Total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 5. Average salary by job title
SELECT job_title, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_title;

-- 6. Count of employees by department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 7. Departments with total salary more than 100000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- 8. Count of distinct job titles
SELECT COUNT(DISTINCT job_title) AS unique_job_titles
FROM employees;

-- 9. Highest salary by department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 10. Rounded average salary by department
SELECT department, ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department;
