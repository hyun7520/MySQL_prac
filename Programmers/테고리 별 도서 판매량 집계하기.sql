SELECT 
    A.CATEGORY, SUM(B.SALES) AS TOTAL_SALES
FROM
    BOOK AS A
        JOIN
    BOOK_SALES AS B ON A.BOOK_ID = B.BOOK_ID
WHERE
    B.SALES_DATE LIKE '2021-01%'
    -- B.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY CATEGORY
ORDER BY CATEGORY