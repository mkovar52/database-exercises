use join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

  select * from users;
  select * from roles;

insert into users (name, email, role_id) values
('mykel', 'mk@gmail.com', 2),
('frank', 'franky@ymail.com', 2),
('nala', 'nalathepup@aol.com', 2),
('tom', 'hanks@yahoo.com', null);

describe roles;
describe users;

select * from users;

-- output all names that have permission of author + using aliases
-- users = A, roles = B ... AB -> BA

-- select concat(u.name, ' has user permissions for ', r.name)
select u.name, r.name
  from users as u
    join roles as r
      on r.id = u.role_id;
--       LEFT join display 3 null values, RIGHT has 1.
-- left is a more likely real-life scenario. You'll have a userName, but maybe not a defined role yet.

select count(u.name), r.name
  from users as u
    join roles as r
      on r.id = u.role_id
        group by r.name;

--  // ====================== employees DB exercise ====================== \\
--
-- select dept_emp, e.first_name
--   from employees as e
--     join dept_emp
--       on dept_emp.d = emp


--  write a query that shows each department along with the name of the current manager for that department.
-- desired OUTPUT:

--   Department Name    | Department Manager
--  --------------------+--------------------
--   Customer Service   | Yuchang Weedman
--   Development        | Leon DasSarma
--   Finance            | Isamu Legleitner
--   Human Resources    | Karsten Sigstam
--   Marketing          | Vishwani Minakawa
--   Production         | Oscar Ghazalie
--   Quality Management | Dung Pesch
--   Research           | Hilary Kambil
--   Sales              | Hauke Zhang

SELECT d.dept_name as 'Dept. Name', concat(e.first_name,' ',e.last_name) AS 'Manager'
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN dept_manager
    ON dept_manager.emp_no = e.emp_no
  WHERE dept_manager.to_date > now()
  ORDER BY d.dept_name;
--   ======================
  from departments as d
  join dept_man as dm
  on dm.dept_no = d.dept_no
  join employees as e on e.emp_no = d.dept_no


-- Find the name of all departments currently managed by women. (total is 4)
--
-- expected output::

-- Department Name | Manager Name
-- ----------------+-----------------
-- Development     | Leon DasSarma
-- Finance         | Isamu Legleitner
-- Human Resources | Karsetn Sigstam
-- Research        | Hilary Kambil

SELECT d.dept_name as 'Dept. Name', concat(e.first_name,' ',e.last_name) AS 'Manager'
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
    JOIN dept_manager
    ON dept_manager.emp_no = e.emp_no
    WHERE dept_manager.to_date > now()
    AND e.gender = 'F'
    ORDER BY d.dept_name;

-- Find the current TITLES of employees CURRENTLY working in the Customer Service department.
-- expect output:

-- Title              | Count
-- -------------------+------
-- Assistant Engineer |    68
-- Engineer           |   627
-- Manager            |     1
-- Senior Engineer    |  1790
-- Senior Staff       | 11268
-- Staff              |  3574
-- Technique Leader   |   241

-- NOT FINISHED /\/\/\/\/\/\/\/\/\/\/\
-- select t.title as 'Title', count(e.first_name) as 'Count'
--   from employees as e
--     join titles as t
--       on t.emp_no = e.emp_no
--       where t.to_date > now()
--       group by t.title;

select t.title, dept_name
from titles as t
join dept_emp as de
on de.emp_no = t.emp_no
where de.dept_no = 'd009'
AND t.to_date > now();
-- join departments as d
-- on d.dept_no =

-- Find the current salary of all current managers.
--
-- OUTPUT:
-- Department Name    | Name              | Salary
-- -------------------+-------------------+-------
-- Customer Service   | Yuchang Weedman   |  58745
-- Development        | Leon DasSarma     |  74510
-- Finance            | Isamu Legleitner  |  83457
-- Human Resources    | Karsten Sigstam   |  65400
-- Marketing          | Vishwani Minakawa | 106491
-- Production         | Oscar Ghazalie    |  56654
-- Quality Management | Dung Pesch        |  72876
-- Research           | Hilary Kambil     |  79393
-- Sales              | Hauke Zhang       | 101987

-- describe salaries;
SELECT d.dept_name as 'Dept. Name',
  concat(e.first_name,' ',e.last_name) AS 'Manager',
  s.salary as 'Salary'
FROM employees as e
  JOIN dept_emp as de ON de.emp_no = e.emp_no
  JOIN departments as d ON d.dept_no = de.dept_no
        JOIN dept_manager ON dept_manager.emp_no = e.emp_no
            JOIN salaries as s ON s.emp_no = e.emp_no
                WHERE s.to_date > now()
                  AND dept_manager.to_date > now()
                  ORDER BY d.dept_name;

-- is the same as. below has way less joins
-- select d.dept_name as 'Dept Name', concat(e.first_name, ' ', e.last_name), s.salary
-- from employees as e
--   join dept_manager as manager on e.emp_no = manager.emp_no
--   join departments d on manager.dept_no = d.dept_no
--   join salaries s on e.emp_no = s.emp_no
-- where manager.to_date > now()
--   and s.to_date > now()
-- order by d.dept_name;



