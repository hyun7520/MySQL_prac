SELECT 
    *
FROM
    books
WHERE
    released_year != 2017;

SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Gaimen';
    
SELECT * FROM books
WHERE title NOT LIKE '%e%';