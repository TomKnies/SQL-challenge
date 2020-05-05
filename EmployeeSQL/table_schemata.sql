create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null,
	primary key (dept_no));
	
-- select * from departments

create table dept_emp (
	emp_no int,
	dept_no varchar(30) not null,
	from_date date,
	to_date date,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));
	
-- select * from dept_emp

create table dept_manager (
	dept_no varchar(30) not null,
	emp_no int,
	from_date date,
	to_date date,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));
	
-- select * from dept_manager

create table employees (
	emp_no int,
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(30),
	hire_date date,
	primary key (emp_no));
	
-- select * from employees

create table salaries (
	emp_no int,
	salary int,
	from_date date,
	to_date date,
	foreign key (emp_no) references employees(emp_no));
	
-- select * from salaries

create table titles (
	emp_no int,
	title varchar(20),
	from_date date,
	to_date date,
	foreign key (emp_no) references employees(emp_no));
	
-- select * from titles

