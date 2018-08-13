USE codeup_test_db;

SELECT 'All albums released after 1991 in table' AS 'Message 1a';
-- SELECT * FROM albums
-- WHERE release_date > 1991;

SELECT 'Removed all albums released after 1991' AS 'Message 1b';
-- DELETE FROM albums
-- WHERE release_date > 1991;

SELECT 'All Disco genre related albums in table' AS 'Message 2a';
-- SELECT * FROM albums
-- WHERE genre = 'Disco';

SELECT 'Removed all albums with disco genre' AS 'Message 2b';
-- DELETE FROM albums
-- WHERE genre = 'Disco';

SELECT 'All albums from AC/DC in table' AS 'Message 3a';
-- SELECT * FROM albums
-- WHERE artist = 'AC/DC';

SELECT 'Removed AC/DC' AS 'Message 3b';
-- DELETE FROM albums
-- WHERE artist = 'AC/DC';
