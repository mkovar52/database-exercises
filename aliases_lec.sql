use employees;

-- Aliases with snake case
select concat(first_name, ' ', last_name) as emp_fullName
from employees AS emp
where emp.emp_no > 20000;

-- concat used the separator in the beginning. every var is separated by it
select concat_ws(' ', first_name, last_name) as 'fullName'
from employees AS emp
where emp.emp_no > 20000;