USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist TEXT,
name TEXT,
release_date INT NOT NULL,
sales FLOAT DEFAULT 0.0,
genre TEXT,
PRIMARY KEY(id)
);

DESCRIBE albums;