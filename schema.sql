
--dropping tables if needed
drop table if exists Title;
drop table if exists Employees;
drop table if exists Salaries;
drop table if exists DeptManager;
drop table if exists DeptEmp;
drop table if exists Departments;

--creating all tables 
CREATE TABLE Title (
    Title_id varchar   NOT NULL primary key,
    Title varchar   NOT NULL 
);	
CREATE TABLE Employees (
    Emp_No Int   NOT NULL primary key,
    Emp_Title_id varchar NOT NULL,
    Birth_Date varchar   NOT NULL,
    First_Name varchar   NOT NULL,
    Last_Name varchar   NOT NULL,
    Sex varchar   NOT NULL,
    Hire_Date varchar   NOT NULL,
	foreign key (emp_title_id) references Title(title_id)
); 
CREATE TABLE Salaries (
    Emp_No Int   NOT NULL,
    Salary Int   NOT NULL,
	foreign key (Emp_No) References employees(emp_no)
);
CREATE TABLE Departments (
    Dept_no varchar not null primary key,
    dept_name varchar NOT NULL
);
CREATE TABLE DeptManager (
    Dept_No varchar NOT NULL,
    Emp_No Int NOT NULL, 
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
CREATE TABLE DeptEmp (
    Emp_No Int NOT NULL,
    Dept_No varchar NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

