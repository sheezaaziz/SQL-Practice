/* Create a people table.
- 3 columns; first_name (max 20 char), last_name (max 20 char), age
- insert a person 
- insert multiple ppl at once */
CREATE DATABASE testing_db;
USE testing_db;
CREATE TABLE people 
(
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT 
);
INSERT INTO people(first_name, last_name, age)
	VALUES('Sheeza', 'Aziz', 19);
INSERT INTO people(first_name, last_name, age)
	VALUES	('Bob', 'theBuilder', 30),
			('Mickey', 'Mouse', 20),
            ('Curious', 'George', 10);
            
SELECT * FROM people;
SHOW COLUMNS FROM people;
DROP TABLE people;