CREATE TABLE captions (
    text VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions (text) VALUES ('chilling'), ('beautiful sunset');

SELECT * FROM captions;

CREATE TABLE captions2 (
    text VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2 (text) VALUES ('i love life');

SELECT * FROM captions2;
-- null 
SET sql_safe_updates=0;
UPDATE captions2 SET text='i love life !!!!';

SELECT * FROM captions2;