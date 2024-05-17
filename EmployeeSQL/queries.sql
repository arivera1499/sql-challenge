SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
inner JOIN salaries s 
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31';

SELECT dn.dept_no, d.dept_name, dn.emp_no, e.last_name, e.first_name 
FROM dept_manager dn
INNER JOIN employees e
ON dn.emp_no = e.emp_no
INNER JOIN departments d
ON dn.dept_no = d.dept_no;

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de 
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de 
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de 
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development';

SELECT last_name, count(last_name) as Count_of_emp_with_same_lastname
FROM employees
GROUP BY last_name
ORDER BY Count_of_emp_with_same_lastname DESC;

