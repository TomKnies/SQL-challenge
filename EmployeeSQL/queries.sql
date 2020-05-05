-- 1
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
join salaries
	on employees.emp_no = salaries.emp_no;

-- 2
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3
select departments.dept_no, departments.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from departments
join dept_manager
	on departments.dept_no = dept_manager.dept_no
join employees
	on employees.emp_no = dept_manager.emp_no;

-- 4
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on dept_emp.dept_no = departments.dept_no;

-- 5
select * from employees
where employees.first_name = 'Hercules'
and employees.last_name like 'B%';

-- 6
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on departments.dept_no = dept_emp.dept_no;

-- 7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments
	on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- 8
select last_name, count(*)
from employees
where last_name is not null
group by last_name
order by count(*) desc;
