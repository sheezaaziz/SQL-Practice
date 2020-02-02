CREATE DATABASE one_to_many;
USE one_to_many;

CREATE TABLE Students
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)
);

CREATE TABLE Papers
(
	title VARCHAR(200),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES Students(id)
);

INSERT INTO Students(first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO Papers(student_id, title, grade) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- Implicit inner join
SELECT * FROM Students, Papers
	WHERE Students.id = Papers.student_id;

-- Explicit inner join (preferred)
SELECT first_name, title, grade FROM Students
	JOIN Papers
    ON Students.id = Papers.student_id
    ORDER BY grade DESC;

-- Left join (select everything from A, along w any matching records in B)
SELECT first_name, title, grade FROM Students
	LEFT JOIN Papers
    ON Students.id = Papers.student_id;

-- Left join but with IFNULL() on grade
SELECT 
	first_name, 
    title, 
    IFNULL(grade, 0) AS grade 
FROM Students
	LEFT JOIN Papers
    ON Students.id = Papers.student_id;

-- Left join
SELECT 
	first_name,
    IFNULL(AVG(grade), 0) AS grade
FROM Students
	LEFT JOIN Papers
    ON Students.id = Papers.student_id
    GROUP BY Students.id
    ORDER BY grade DESC;
    
-- Left join
SELECT
	first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
		WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
	END AS grade
FROM Students
	LEFT JOIN Papers
    ON Students.id = Papers.student_id
    GROUP BY Students.id
    ORDER BY grade DESC;
    
    
    

