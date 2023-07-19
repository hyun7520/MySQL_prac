SELECT COUNT(*) FROM books;

SELECT title, author_fname, COUNT(*) FROM books;
-- Won't work as count is one row

SELECT COUNT(author_fname) FROM books;

INSERT INTO books () VALUES ();
INSERT INTO books () VALUES ();

SELECT COUNT(*) FROM books;
-- retruns 21

SELECT COUNT(author_fname) FROM books;
-- returns 19
-- counting fields can be useful for finding number of values  

SELECT COUNT(DISTINCT author_fname) FROM books;
-- returns value 12. remove duplicates

SELECT COUNT(DISTINCT released_year) from books;

SELECT COUNT(*) FROM BOOKS WHERE title LIKE '%the%';