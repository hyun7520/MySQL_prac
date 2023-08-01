SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name;
    
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;