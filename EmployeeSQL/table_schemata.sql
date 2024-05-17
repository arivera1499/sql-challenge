-- Create a table for departments 
create table departments(
	dept_no VARCHAR(30) Primary Key,
	dept_name VARCHAR(30) NOT NULL
);

-- Create a table for titles 
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);

-- Create a table for employees
CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date date
);

-- Create a table for department managers
CREATE TABLE dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no varchar(10)
);

-- Create a table for departments employees
CREATE TABLE dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(5) references departments(dept_no)
);

-- Create a table for salaries
CREATE TABLE salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int Not Null
);

