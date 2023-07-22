CREATE TABLE products (
    price DECIMAL(5 , 2 )
);

INSERT INTO products (price) values (4.50), (456.39);

SELECT * FROM products;

-- bad case example
INSERT INTO products (price) VALUES(2291.2);
-- if digits after decimal is out of range, 
-- SQL will automatically truncate and insert the data
INSERT INTO products (price) VALUES(1.3392);

SELECT * FROM products;