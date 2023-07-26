-- it is better to use char when most data have similar length in character. 
-- As it takes less space.
 
-- price is always < 1,000,000
CREATE TABLE inventory (
    item_name VARCHAR(20),
    price DECIMAL(7, 2), -- Mostly digits so use decimal, float or double 
    quantity INT
);

-- DATEIME, TIMESTAMP difference
-- timestamp takes up less memeory, can store more smaller dates ex) 1970 ~ 2038
-- whereas datetime is able to store from 1000 to 9999 years

SELECT CURTIME();
SELECT CURDATE();
SELECT DAY(CURDATE());
SELECT DAYNAME(CURDATE());
SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(CURDATE(), '%W');
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
-- curdate - date only
-- now - date and time
SELECT DATE_FORMAT(NOW(),'%M %D at %k:%i');

CREATE TABLE tweets (
    content VARCHAR(180),
    username VARCHAR(20),
    posted TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username) VALUES ('this is my first tweet', 'name!');

SELECT 
    *
FROM
    tweets;