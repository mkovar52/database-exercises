use employees;

-- ex. 1
select concat(last_name, ', ', first_name) as 'fullName', birth_date as DOB
from employees
limit 10;

-- -- concat used the separator in the beginning. every var is separated by it
select concat_ws(' ', first_name, last_name) as 'fullName'
from employees AS emp
where emp.emp_no > 20000;