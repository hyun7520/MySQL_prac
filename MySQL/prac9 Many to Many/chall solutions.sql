SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id;
    
SELECT 
    title, AVG(rating) AS avg_rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY title
ORDER BY avg_rating;

SELECT 
    title, ROUND(AVG(rating), 2) AS avg_rating
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
GROUP BY title
ORDER BY avg_rating;

SELECT 
    first_name, last_name, rating
FROM
    reviewers
        JOIN
    reviews ON reviewers.id = reviews.reviewer_id;
    
SELECT 
    *
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id;

SELECT 
    title AS unreviewed_series
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    ISNULL(reviews.id);
-- WHERE 
-- 	rating IS NULL 

SELECT 
    title AS unreviewed_series
FROM
    reviews
        RIGHT JOIN
    series ON series.id = reviews.series_id
WHERE
    ISNULL(reviews.id);
    
SELECT 
    genre, AVG(rating) AS avg_rating
FROM
    reviews
        JOIN
    series ON reviews.series_id = series.id
GROUP BY genre;

-- USING CASE 
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;
 
-- USING IF 
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

SELECT 
    title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviews
        JOIN
    reviewers ON reviews.reviewer_id = reviewers.id
        JOIN
    series ON reviews.series_id = series.id
ORDER BY title;