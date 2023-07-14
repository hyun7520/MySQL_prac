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

SELECT 
    book_id, author_fname, author_lname, pages
FROM
    books
ORDER BY 2;

SELECT 
    book_id, author_fname, author_lname, pages
FROM
    books
ORDER BY author_fname DESC , pages;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
ORDER BY author;
