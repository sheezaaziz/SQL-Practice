/* Create employees table w fields:
id - num, mandatory, primary key - auto increment
last_name, first_name - text, mandatory
middle_name - text, not mandatory
age - num, mandatory
current_status - text, mandatory, default to 'employed' */

CREATE DATABASE testing_db;
USE testing_db;
CREATE TABLE employees 
(
	id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(200) NOT NULL,
    first_name VARCHAR(200) NOT NULL,
    middle_name VARCHAR(200),
    age INT NOT NULL,
    current_status VARCHAR(200) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);
DROP TABLE employees;

-- we can also place PRIMARY KEY the same row as 'id INT NOT NULL AUTO INCREMENT'! --
