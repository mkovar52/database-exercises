use employees;
-- # group by lecture

select birth_date
from employees
where birth_date like '19%-05-03'
group by birth_date;

select birth_date, count(birth_date) AS 'myFavPeople'
from employees
where birth_date = '1952-06-30'
or birth_date = '1953-06-30'
group by birth_date;

-- verifying birth date is correct
select count(birth_date)
from employees
where birth_date = '1952-06-30';

-- verifying birth date is correct
select count(birth_date)
from employees
where birth_date = '1953-06-30';

-- adding another column
select birth_date, count(birth_date) AS 'myFavPeople', first_name
from employees
where birth_date = '1952-06-30'
or birth_date = '1953-06-30'
group by birth_date, first_name
order by myFavPeople desc;

select first_name, birth_date from employees where birth_date = '1952-06-30'
order by first_name;

select count(first_name), gender
from employees
where first_name = 'Kokou'
group by gender;

-- example of thinking process to find  top 10 tracks from billboard by genre
-- select *
-- from songs
-- where month_yr between 5 and 8
-- group by genre
-- order by plays DESC limit 10;