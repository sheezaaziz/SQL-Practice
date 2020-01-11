CREATE DATABASE shirts_db;
USE shirts_db;
CREATE TABLE shirts 
(
	shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(200),
    colour VARCHAR(200),
    shirt_size VARCHAR(4),
    last_worn INT,
    PRIMARY KEY(shirt_id)
);
INSERT INTO shirts(article, colour, shirt_size, last_worn)
	VALUES	('t-shirt', 'white', 'S', 10),
			('t-shirt', 'green', 'S', 200),
			('polo shirt', 'black', 'M', 10),
			('tank top', 'blue', 'S', 50),
			('t-shirt', 'pink', 'S', 0),
			('polo shirt', 'red', 'M', 5),
			('tank top', 'white', 'S', 200),
			('tank top', 'blue', 'M', 15);
INSERT INTO shirts(article, colour, shirt_size, last_worn) VALUES('polo shirt', 'purple', 'M', 50);
SELECT article, colour FROM shirts;
SELECT article, colour, shirt_size, last_worn FROM shirts WHERE shirt_size='M';
SET SQL_SAFE_UPDATES = 0; -- turn off safe updates --
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
UPDATE shirts SET shirt_size='XS', colour='off white' WHERE colour='white'; 
DELETE FROM shirts WHERE last_worn >= 200;
DELETE FROM shirts WHERE article='tank top';
DELETE FROM shirts;
SET SQL_SAFE_UPDATES = 1; -- turn on safe updates
DROP TABLE shirts;
