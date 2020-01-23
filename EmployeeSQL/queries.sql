
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, salaries.salary
FROM employees as e
INNER JOIN salaries
ON e.emp_no =salaries.emp_no;


-- 2. List employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees as e
WHERE e.hire_date > '12/31/1985'


-- 3. List the manager of each department with the following information: 
--    department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, e.last_name, e.first_name, e.hire_date, dept_manager.to_date
FROM dept_manager 
INNER JOIN departments ON dept_manager.dept_no =departments.dept_no
INNER JOIN employees as e ON dept_manager.emp_no =e.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no =departments.dept_no
INNER JOIN employees as e ON dept_emp.emp_no =e.emp_no;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name
FROM employees as e
WHERE e.last_name LIKE 'B%' and e.first_name = 'Hercules';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no =departments.dept_no
INNER JOIN employees AS e ON dept_emp.emp_no =e.emp_no
WHERE departments.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no =departments.dept_no
INNER JOIN employees as e ON dept_emp.emp_no =e.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(e.last_name) AS frequency_count
FROM employees AS e 
GROUP BY e.last_name
ORDER BY frequency_count DESC;


-- MY ID NUMBER IS 499942.
SELECT dept_emp.emp_no, e.last_name, e.first_name, departments.dept_name, salaries.salary
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no =departments.dept_no
INNER JOIN employees as e ON dept_emp.emp_no =e.emp_no
INNER JOIN salaries ON e.emp_no =salaries.emp_no
WHERE e.emp_no = 499942;