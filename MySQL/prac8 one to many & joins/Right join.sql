SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id;
    
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;
    
INSERT INTO orders (amount, order_date) VALUES (100, CURDATE());

SELECT 
    *
FROM
    orders;