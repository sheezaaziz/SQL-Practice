CREATE DATABASE part_one;
USE part_one;
 
CREATE TABLE Suppliers (
	sid INT NOT NULL UNIQUE,
    sname VARCHAR(200),
    address VARCHAR(200),
    PRIMARY KEY (sid)
);

CREATE TABLE Parts (
	pid INT NOT NULL UNIQUE,
    pname VARCHAR(200),
    color VARCHAR(200),
    PRIMARY KEY (pid)
);

CREATE TABLE Catalog (
	sid INT NOT NULL UNIQUE,
    pid INT NOT NULL UNIQUE,
    cost REAL,
    PRIMARY KEY (sid, pid)
);

-- DROP TABLE SUPPLIERS;
-- DROP TABLE CATALOG;
-- DROP TABLE PARTS;

-- Populating database --
INSERT INTO Suppliers (sid, sname, address) VALUES 	
		(1, 'henry', 'tpk'),
		(2, 'george', 'city'),
		(3, 'batman', '1065 Military Trail'),
		(4, 'superman', 'tpk'),
		(5, 'girl', 'small town');

INSERT INTO Parts (pid, pname, color) VALUES
		(1, 'hand', 'red'),
        (2, 'foot', 'green'),
        (3, 'lever', 'green'),
        (4, 'knob', 'brown'),
        (5, 'glass', 'red');
        
INSERT INTO Catalog (sid, pid, cost) VALUES
		(1, 1, 100.12),
        (2, 2, 50),
        (3, 3, 79.99),
        (4, 4, 200),
        (5, 5, 170);
        
-- SQL queries --
-- i)
SELECT sname FROM 
	Parts 
    NATURAL JOIN 
    Catalog 
    NATURAL JOIN 
    Suppliers
WHERE color='red';

-- ii)
SELECT sid FROM
	Parts 
    NATURAL JOIN
    Catalog
WHERE color='red' OR color='green';

-- iii)
SELECT sid FROM
	Parts
    NATURAL JOIN
    Catalog
	NATURAL JOIN
    Suppliers
WHERE color='red'OR address='1065 Military Trail';

-- iv)
-- SKIPPED









