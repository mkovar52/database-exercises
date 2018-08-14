# ===================== chapter exercises ===================== \\
-- # ex 1a - first names
select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- # ex. 1b use OR instead of IN & 1c search those names and display males only
select *
from employees
where first_name in('Irena', 'Vidya', 'Maya')
      and gender = 'M';


-- # ex 2a - last name starts with E
select *
from employees
where last_name like 'E%';

-- # ex 2b - last name starts OR ends with E
select *
from employees
where last_name like 'E%'
or last_name like '%e';

-- # ex 2c - last name starts OR ends with E
select *
from employees
where last_name like 'E%E';


-- # ex 3a - all emp hired in 90s
select *
from employees
where hire_date between '1990-01-01' and '1999-12-31';

-- # ex 3b - all emp hired in 90s AND born on xmas
select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25';


-- # ex 4 - all employees born on xmas
select *
from employees
where birth_date like '%-12-25';

-- # ex 5a - emp with 'q' in last name 1,873
select *
from employees
where last_name like '%q%';

-- # ex 5b - emp with 'q' in last name but NOT 'qu'
select *
from employees
where last_name like '%q%'
and last_name not like '%qu%';


