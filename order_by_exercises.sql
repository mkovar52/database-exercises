-- # ===================== Order By exercises ===================== \\

-- # ex 1 - order by first name
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;

-- # ex. 2 - order by first & last name
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
and gender = 'M'
ORDER BY first_name, last_name;


-- # ex 3 - last name before first name
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
and gender = 'M'
order by last_name, first_name;

-- # ex 4 - sort emp_no with employees with an e in their last name
select emp_no, last_name
from employees
where last_name like 'e%'
and last_name like '%e'
order by emp_no;

-- # ex 5 - reversing order filters from ex 4
select last_name, emp_no
from employees
where last_name like '%E%'
and last_name like '%e'
order by last_name, emp_no;


-- # ex 6 - all emp hired in 90s AND born on xmas, such that first result is OLDEST who was hired LAST
select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25'
order by birth_date asc, hire_date desc;