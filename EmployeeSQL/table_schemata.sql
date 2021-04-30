--creating the table for departments
create table departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

--creating the table for department employees
create table dept_emp(
	emp_no INT,
	dept_no VARCHAR
);

--creating the table for department managers
create table dept_manager(
	dept_no VARCHAR,
	emp_no INT
);

--creating the table for employee information
create table employees(
emp_no INT,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR(1),
hire_date DATE
);

--creating the table for salary information
create table salaries(
	emp_no VARCHAR,
	salary INT
);

--creating the table for employee titles
create table titles(
	title_id VARCHAR,
	title VARCHAR
);