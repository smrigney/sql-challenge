--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from salaries as s
inner join employees as e on 
e.emp_no=s.salary;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees 
where hire_date = '1986';
--there are no results coming from this query, I even went back to the excel file and used =countif([column],1986)
-- and it didn't return any values. 

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, deptmanager.emp_no, employees.last_name, employees.first_name
from departments
inner join deptmanager on deptmanager.dept_no = departments.dept_no
inner join employees on deptmanager.emp_no = employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select  deptemp.emp_no, employees.last_name, employees.first_name,departments.dept_name
from departments
inner join deptemp on deptemp.dept_no = departments.dept_no
inner join employees on deptemp.emp_no = employees.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex 
from employees 
where last_name like 'B%' and first_name = 'Hercules'; 

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select  deptemp.emp_no, employees.last_name, employees.first_name,departments.dept_name
from departments
inner join deptemp on deptemp.dept_no = departments.dept_no
inner join employees on deptemp.emp_no = employees.emp_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select  deptemp.emp_no, employees.last_name, employees.first_name,departments.dept_name
from departments
inner join deptemp on deptemp.dept_no = departments.dept_no
inner join employees on deptemp.emp_no = employees.emp_no
where dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,COUNT (last_name)
FROM Employees
GROUP BY last_name
ORDER BY count desc;