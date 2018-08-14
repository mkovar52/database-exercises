USE codeup_test_db;

SELECT 'All albums in your table' AS 'message 1a';
-- SELECT * FROM albums;
-- // updating sales, increase by 10 \\
-- UPDATE albums
-- SET (sales*10);

-- // ========= another approach ========= \\
-- Select name AS 'albums in the table'
-- FROM albums;

SELECT 'All albums released before 1980' AS 'message 2a';
-- SELECT * FROM albums WHERE release_date < 1980;
-- //  changing release dates to 1800 for all albums released before 1980  \\
-- UPDATE albums
-- SET release_date = 1800
-- WHERE release_date < 1980;

-- // ========= another approach ========= \\
-- SELECT name AS 'albums released before 1980'
-- FROM albums
-- WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'message 3a';
-- SELECT * FROM albums
-- WHERE artist = 'Michael Jackson';
-- UPDATE albums
-- SET artist = 'Peter Jackson'
-- WHERE artist = 'Michael Jackson';

-- // ========= another approach ========= \\
-- SELECT name AS 'all albums by michael jackson'
-- FROM albums
-- WHERE artist = 'Michael Jackson';