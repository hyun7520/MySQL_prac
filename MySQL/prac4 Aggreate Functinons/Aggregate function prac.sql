SELECT 
    COUNT(title)
FROM
    books;
    
SELECT 
    released_year, count(title)
FROM
    books
GROUP BY released_year
ORDER BY released_year;

SELECT 
    SUM(stock_quantity)
FROM
    books;

SELECT 
    ROUND(AVG(released_year)),
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
GROUP BY author;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
SELECT 
    released_year AS year,
    COUNT(title) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY year;