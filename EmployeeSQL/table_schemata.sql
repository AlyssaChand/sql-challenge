--DATA ENGINEERING
--1.Use the provided information to create a table schema for each of the six CSV files.
--2.Import each CSV file into its corresponding SQL table.

CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

SELECT * FROM departments;

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY, 
	emp_title_id VARCHAR(5) NOT NULL, 
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL, 
	hire_date VARCHAR(30) NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) NOT NULL, 
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries;

