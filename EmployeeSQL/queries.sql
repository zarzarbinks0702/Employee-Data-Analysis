--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where date_part('year', hire_date) = 1986;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dp.dept_no, dp.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
join departments dp
on (dm.dept_no = dp.dept_no)
join employees e
on (dm.emp_no = e.emp_no)

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de
on (de.emp_no = e.emp_no)
join departments dp
on (dp.dept_no = de.dept_no);

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees e
where (e.first_name = 'Hercules')
and (e.last_name like 'B%')

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de
on (de.emp_no = e.emp_no)
join departments dp
on (dp.dept_no = de.dept_no)
where dp.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de
on (de.emp_no = e.emp_no)
join departments dp
on (dp.dept_no = de.dept_no)
where dp.dept_name = 'Sales'
union
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de
on (de.emp_no = e.emp_no)
join departments dp
on (dp.dept_no = de.dept_no)
where dp.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
