--creating the table for employee titles (data imported from CSV)
create table titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

--creating the table for employee information (data imported from CSV)
create table employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);

--creating the table for departments (data imported from CSV)
CREATE TABLE departments(
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

--creating the table for department employees (data imported from CSV)
create table dept_emp(
	emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

--creating the table for department managers (data imported from CSV)
create table dept_manager(
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--creating the table for salary information (data imported from CSV)
create table salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
