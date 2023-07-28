SELECT 
    *
FROM
    people
WHERE
    birthdate < '2005-01-01';
    
SELECT * FROM people WHERE birthtime 
BETWEEN CAST('12:00:00' AS TIME) 
AND CAST('16:00:00' AS TIME);
 
 
SELECT * FROM people WHERE HOUR(birthtime)
BETWEEN 12 AND 16;