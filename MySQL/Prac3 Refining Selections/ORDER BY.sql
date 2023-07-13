SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY released_year DESC;

SELECT 
    title, pages
FROM
    books
ORDER BY released_year;

SELECT * FROM books
ORDER BY author_lname;
 
SELECT * FROM books
ORDER BY author_lname DESC;
 
SELECT * FROM books
ORDER BY released_year;