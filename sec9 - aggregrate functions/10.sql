USE book_shop;
SELECT COUNT(*) FROM books;

SELECT released_year, 
	COUNT(*) 
FROM books
    GROUP BY released_year;

SELECT Sum(stock_quantity) FROM books;

SELECT author_lname, 
	author_fname, 
    Avg(released_year)
FROM books
	GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author', 
	pages
FROM books
	ORDER BY pages DESC LIMIT 1;

SELECT released_year AS 'year', 
	COUNT(*) AS '# books', 
    Avg(pages) AS 'avg pages'
FROM books
	GROUP BY released_year
	ORDER BY released_year;