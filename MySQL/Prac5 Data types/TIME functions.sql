SELECT 
    name,
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime),
    SECOND(birthtime)
FROM
    people;
    
SELECT 
    birthdt, HOUR(birthdt)
FROM
    people;
    
SELECT birthdt, DATE(birthdt) FROM people;