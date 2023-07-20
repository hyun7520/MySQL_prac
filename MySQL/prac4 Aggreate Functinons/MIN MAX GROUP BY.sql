SELECT 
    author_fname,
    author_lname,
    MIN(released_year),
    MAX(released_year)
FROM
    books
GROUP BY author_fname , author_lname;

SELECT 
    author_lname, MIN(released_year)
FROM
    books
GROUP BY author_lname;

SELECT 
    author_lname,
    author_fname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_release,
    MAX(pages) AS longest_page_count
FROM
    books
GROUP BY author_lname , author_fname;