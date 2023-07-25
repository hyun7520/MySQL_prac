CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt) 
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'), 
('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'),
('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT 
    *
FROM
    people;

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM
    people;
    
SELECT 
    birthdate, MONTHNAME(birthdate)
FROM
    people;
    
SELECT 
    name, birthtime, HOUR(birthtime)
FROM
    people;