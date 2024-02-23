SELECT e.emp_no, e.last_name, e.first_name, 
e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s 
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' 
AND hire_date <= '1986-12-31';


SELECT 	dm.emp_no, titles.title, dm.dept_no,
depts.dept_name, emp.first_name, emp.last_name
FROM dept_manager AS dm
JOIN employees AS emp ON (dm.emp_no = emp.emp_no)
JOIN departments AS depts ON (dm.dept_no = depts.dept_no) 
JOIN titles ON (emp.emp_title = titles.title_id);
			
SELECT 	dep.dept_no, dept_emp.emp_no, emp.last_name,
emp.first_name, dep.dept_name
FROM employees as emp
JOIN dept_emp
ON (emp.emp_no = dept_emp.emp_no)
JOIN departments as dep ON (dept_emp.dept_no = dep.dept_no);
		
SELECT 	emp.first_name, emp.last_name, emp.sex
FROM employees as emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';


SELECT 	employees.emp_no, employees.last_name,
employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON (dept_emp.emp_no = employees.emp_no)
JOIN departments ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name = 'Sales';

SELECT	employees.emp_no, employees.last_name,
employees.first_name, departments.dept_name
FROM employees JOIN dept_emp
ON (dept_emp.emp_no = employees.emp_no)
JOIN departments
ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name IN 
('Sales','Development'
);


SELECT 	employees.last_name,
COUNT(employees.last_name) as name_frequency
FROM employees
GROUP BY employees.last_name
ORDER BY name_frequency DESC;
