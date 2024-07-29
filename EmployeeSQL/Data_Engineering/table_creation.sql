---Create table for titles (order of table creation matters. Can't call on component if it dosen't exist)
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

---View Table 
SELECT *
FROM titles 

---Create table for employees 
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

---View Table 
SELECT *
FROM employees

---Create table for salaries
CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);

---View Table 
SELECT *
FROM salaries
	
---Create table for departments  
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

---View Table
SELECT *
FROM departments 

---Create table for dept_emp	
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

---View Table 
SELECT *
FROM dept_emp

---Create table for dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER PRIMARY KEY,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

---View Table 
SELECT *
FROM dept_emp

