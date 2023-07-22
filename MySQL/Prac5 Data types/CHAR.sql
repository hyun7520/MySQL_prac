CREATE TABLE friends (
    name VARCHAR(10)
);

INSERT INTO friends(name) VALUES ('Tom'), ('Juan Pablo'), ('James');

SELECT 
    *
FROM
    friends;
    
DROP TABLE friends;

CREATE TABLE states(abbr CHAR(2));

INSERT INTO states (abbr) VALUES ('CA'), ('NY');

SELECT * FROM states;