-- # Find ALL the employees with the SAME "HIRE_DATE" as employee 101010 using a sub-query.
-- # output: 69 Rows

-- # desired hire_date for these employees is 1990-10-22 / Oct. 22nd / 1990
select e.hire_date
from employees as e
where e.emp_no = '101010';

-- # exercise 1 ======================
select first_name, last_name, hire_date
from employees
where emp_no in (
  select emp_no
  from dept_emp
  where hire_date = '1990-10-22'
);

-- # exercise 2 ======================
-- # Find all the TITLES held by all employees with the "first_name" = Aamod.
-- # desired output: 314 total titles, 6 unique titles

select t.title as 'Title'
from titles as t
where emp_no in (
  select emp_no
  from employees
  where first_name = 'Aamod'
);
-- # how to combine count and this within the same query?
-- # group by title;


-- # exercise 3 ======================
-- # Find all the current department managers that are female.
-- # +------------+------------+
-- # | first_name | last_name  |
-- # +------------+------------+
-- # | Isamu      | Legleitner |
-- # | Karsten    | Sigstam    |
-- # | Leon       | DasSarma   |
-- # | Hilary     | Kambil     |
-- # +------------+------------+

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from dept_manager as dm
  where dm.to_date > now()
  and gender = 'F'
);