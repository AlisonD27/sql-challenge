CREATE TABLE titles (
	title_id VARCHAR(255) PRIMARY KEY,
	title VARCHAR(255)
);

-- SELECT * FROM titles;
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(255),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
	
);

-- SELECT * FROM employees;
CREATE TABLE departments (
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255)
);

-- SELECT * FROM departments;
CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- SELECT * FROM dept_manager;
CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(255),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- SELECT * FROM dept_emp;
CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- SELECT * FROM salaries;


