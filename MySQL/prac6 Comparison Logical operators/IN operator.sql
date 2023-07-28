SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lnamer IN ('Carver' , 'Lahiri', 'Smith');
    
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year != 2000 AND
    released_year != 2002 AND
    released_year != 2004 AND
    released_year != 2006 AND
    released_year != 2008;
    
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year > 2000
        AND released_year NOT IN (2000 , 2002,
        2004,
        2006,
        2008,
        2010,
        2012,
        2014,
        2016,
        2018,
        2020);

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year > 2000
        AND released_year % 2 != 0
    
