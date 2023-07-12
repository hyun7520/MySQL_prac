SELECT CONCAT('h', 'e', 'llo');

SELECT CONCAT(author_fname, '!!!') FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;

SELECT CONCAT_WS('!', 'H', 'E', 'LL', 'O');

SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;