-- # ===================== Limit exercises ===================== \\

-- # ex. 1
select DISTINCT last_name
from employees
order by last_name desc
limit 10;

-- # ex. 2
select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
      and birth_date like '%-12-25'
order by birth_date asc, hire_date desc
limit 5;

-- # ex. 3
select *
from employees
where hire_date between '1990-01-01' and '1999-12-31'
      and birth_date like '%-12-25'
order by birth_date asc, hire_date desc
limit 5 offset 45;