-- SELECT user, host FROM mysql.user;
-- SHOW DATABASES;
-- migration: program that creates a database structure

CREATE DATABASE IF NOT EXISTS  tables_lesson_db;
USE tables_lesson_db;

DROP TABLE IF EXISTS flights;


CREATE TABLE flights(
id INT UNSIGNED NOT NULL,
destination CHAR(3) NOT NULL,
departs_from CHAR(3) NOT NULL,
price FLOAT DEFAULT 0.0,
num_tickets_sold INT,
description TEXT,
departs_at DATETIME NOT NULL,
arrives_at DATETIME NOT NULL,
PRIMARY KEY(id)

);

-- SHOW TABLES;

DESCRIBE flights;
-- SHOW CREATE TABLE flights;