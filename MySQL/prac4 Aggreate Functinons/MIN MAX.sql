SELECT 
    MIN(released_year)
FROM
    books;
    
SELECT 
    MAX(pages)
FROM
    books;

SELECT 
    MIN(author_lname), MAX(author_lname)
FROM
    books;
    
SELECT 
    MAX(pages), title
FROM
    books;
    
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
SELECT 
    title, pages
FROM
    books
WHERE
    pages = 634;
    
INSERT INTO books (title, pages) VALUES ('My life', 634);

SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
               
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year = (SELECT 
            MIN(released_year)
        FROM
            books);