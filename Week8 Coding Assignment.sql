SELECT count(e.birth_date) AS "Number of Employees", t.title FROM employees e
INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE e.birth_date >= 19650101
GROUP BY t.title;

SELECT ROUND(avg(s.salary), 0) AS "Average Salary", t.title FROM salaries s
INNER JOIN titles t ON t.emp_no = s.emp_no
GROUP BY t.title;

SELECT sum(s.salary) AS "Salary" FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
INNER JOIN dept_emp de ON de.emp_no = s.emp_no
WHERE de.dept_no = "d001" AND de.from_date >= 19900101 AND de.to_date < 19930101;