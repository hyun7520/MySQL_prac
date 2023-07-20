SELECT 
    author_lname
FROM
    books
GROUP BY author_lname; 

SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written;

SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year
ORDER BY COUNT(*) DESC;

SELECT 
    *
FROM
    books
GROUP BY author_lname;

SELECT 
    author_fname, author_lname
FROM
    books
ORDER BY author_lname;
-- two author have Harris as their last name

SELECT 
    author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname;
-- different author is counted as same

SELECT 
    author_fname, author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT 
    author_fname, author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*)
FROM
    books
GROUP BY author
ORDER BY COUNT(*) DESC;