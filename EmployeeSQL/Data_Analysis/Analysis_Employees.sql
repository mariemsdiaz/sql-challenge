---List the employee number, last name, first name, sex, and salary of each employee.

SELECT emp_no, last_name, first_name, sex,
    (SELECT salaries.salary
     FROM salaries
     WHERE employees.emp_no = salaries.emp_no) AS "Salary"
FROM employees;


--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986;

---List the manager of each department along with their department number, department name, 
---employee number, last name, and first name.

SELECT 
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
    departments d
JOIN 
    dept_manager dm ON d.dept_no = dm.dept_no
JOIN 
    employees e ON dm.emp_no = e.emp_no;

---List the department number for each employee along with that employee’s
---employee number, last name, first name, and department name.


SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_emp de ON d.dept_no= de.dept_no
JOIN employees e ON de.emp_no= e.emp_no;

---List first name, last name, and sex of each employee whose first name 
---is Hercules and whose last name begins with the letter B.

SELECT emp_no, last_name, first_name, sex 
FROM employees
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%'


---List each employee in the Sales department, including their employee number,
---last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp de
INNER JOIN employees e
ON de.emp_no = e.emp_no
WHERE de.dept_no = 'd007';


--List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e ON de.emp_no = e.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd007'
OR de.dept_no='d005';

---List the frequency counts, in descending order, of all the employee last names 
---(that is, how many employees share each last name).

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

