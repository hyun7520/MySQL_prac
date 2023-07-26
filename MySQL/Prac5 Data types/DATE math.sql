SELECT 
    birthdate, DATEDIFF(CURDATE(), birthdate)
FROM
    people;
    
SELECT TIMEDIFF(CURTIME(), '07:00:00');

SELECT NOW() - INTERVAL 18 YEAR;

SELECT 
    name, birthdate, birthdate + INTERVAL 21 YEAR
FROM
    people;