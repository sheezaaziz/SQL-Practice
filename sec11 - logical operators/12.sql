USE book_shop;
SELECT * FROM books;
SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';
/* I do not know why this is giving me a syntax error..

SELECT title, author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories',
        WHEN title = 'just kids' OR title = 'a heartbreaking work of staggering genius' THEN 'Memoir'
        ELSE 'novel'
	END AS TYPE
FROM books;

*/

