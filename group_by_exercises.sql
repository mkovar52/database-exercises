use employees;

-- ex 1
select distinct title
from titles;

-- ex 2
select last_name
from employees
where last_name like 'e%'
and last_name like '%e'
group by last_name;

-- ex 3
select distinct first_name, last_name
from employees
where last_name like 'e%'
and last_name like '%e';

-- ex 4
select last_name, count(last_name)
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

-- ex 5
select gender, count(*)
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
and gender = 'M'
or first_name in('Irena', 'Vidya', 'Maya')
and gender = 'F'
group by gender;