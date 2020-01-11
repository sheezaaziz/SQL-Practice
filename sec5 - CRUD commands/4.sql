CREATE DATABASE testing_db;
USE testing_db;
CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
INSERT INTO cats(name, breed, age) 
	VALUES	('Ringo', 'Tabby', 4),
			('Cindy', 'Maine Coon', 10),
			('Dumbledore', 'Maine Coon', 11),
			('Egg', 'Persian', 4),
			('Misty', 'Tabby', 13),
			('George Michael', 'Ragdoll', 9),
			('Jackson', 'Sphynx', 7);
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed = 'tabby';
SELECT * FROM cats WHERE cat_id = age;
SET SQL_SAFE_UPDATES = 0; -- turn off safe updates --
UPDATE cats SET name='jack' WHERE name='jackson';
SELECT * FROM cats WHERE name='jack';
UPDATE cats SET breed='british shorthair' WHERE name='ringo';
UPDATE cats SET age=12 WHERE breed='maine coon';
SET SQL_SAFE_UPDATES = 1; -- turn on safe updates -- 
SELECT * FROM cats;




		