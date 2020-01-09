/* Create a pastries table.
- 2 columns; name (50 chars max) and quantity
- Inspect it
- Delete it */

CREATE DATABASE testing_db;
USE testing_db;
CREATE TABLE pastries 
(
	name VARCHAR(50),
    quantity INT
);
SHOW TABLES;
SHOW COLUMNS FROM pastries;
DROP TABLE pastries;
SHOW TABLES;