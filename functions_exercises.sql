
# ===================== Functions exercises ===================== \\
-- # ex 1
select concat(first_name,last_name)
from employees
where last_name like 'e%'
and last_name like '%e';

-- # ex 2
select datediff(now(), hire_date)
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%-12-25';

-- # ===================== random function practice ===================== \\

SELECT NOW();

SELECT curdate();

SELECT curtime();

SELECT CONCAT('I have been alive for ',
              UNIX_TIMESTAMP() - UNIX_TIMESTAMP('1987-06-30'),' seconds');

SELECT CONCAT('I have been been going to codeup for ',
              UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2018-05-29'),' seconds');

select count(distinct birth_date)
from employees
where birth_date like '%-06-30';

select birth_date, first_name, last_name, gender
from employees
where birth_date like '19%-06-30'
order by birth_date, first_name, gender;


select round(AVG(salary))
from salaries;

SELECT
  CONCAT(
      first_name,
      ' ',
      last_name,
      ' was born ',
      birth_date
  ), emp_no, hire_date
FROM employees;