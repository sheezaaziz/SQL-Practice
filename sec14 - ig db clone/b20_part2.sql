CREATE DATABASE part_two;
USE part_two;

CREATE TABLE Flights (
	flno INT NOT NULL UNIQUE,
    fromm VARCHAR(200),
    too VARCHAR(200),
    distance INT,
    departs TIME,
    arrives TIME,
    PRIMARY KEY (flno)
);

CREATE TABLE Aircraft (
	aid INT NOT NULL UNIQUE,
    aname VARCHAR(200),
    cruisingrange INT,
    PRIMARY KEY (aid)
);

CREATE TABLE Certified (
	eid INT NOT NULL UNIQUE,
    aid INT NOT NULL UNIQUE,
    PRIMARY KEY (eid, aid)
);

CREATE TABLE Employees (
	eid INT NOT NULL UNIQUE,
    ename VARCHAR(200),
    salary INT,
    PRIMARY KEY (eid)
);

-- DROP TABLE FLIGHTS;
-- DROP TABLE AIRCRAFT;
-- DROP TABLE CERTIFIED;
-- DROP TABLE EMPLOYEES;

-- Populating database -- 
-- INSERT INTO Flights (flno, fromm, too, departs, arrives) VALUES 
-- 		(1, 'la', 'tokyo', NOW(), NOW()),
--         (2, 'kenya', 'toronto', NOW(), NOW()),
--         (3, 'toronto', 'vancouver', NOW(), NOW()),
--         (4, 'ottawa', 'kingston', NOW(), NOW());

-- INSERT INTO Aircraft (aid, aname, cruisingrange) VALUES
-- 		(3, 'boeing', 300),
--         (1, 'fly emirates', 200),
--         (2, 'air canada', 150),
--         (4, 'sunwing', 700);
--         
-- INSERT INTO Certified (eid, aid) VALUES 
-- 		(111, 1),
--         (112, 3),
--         (113, 4),
--         (114, 2);

-- INSERT INTO Employees (eid, ename, salary) VALUES
-- 		(111, 'elon musk', 10000000),
--         (115, 'janitor', 1000),
--         (114, 'just graduated pilot', 2000),
--         (117, 'pyramid scheme schemer', 50);

-- SQL queries -- 
-- i)
SELECT eid FROM
	Aircraft
    NATURAL JOIN
    Certified
WHERE aname='Boeing';

-- ii)
SELECT ename FROM
	Aircraft
    NATURAL JOIN
    Certified
    NATURAL JOIN
    Employees
WHERE aname='Boeing';

-- iii)
SELECT aid FROM
	Flights
    CROSS JOIN
    Aircraft
where cruisingrange > distance AND fromm='Bonn' AND too='madras';
        
-- iv)
SELECT flno FROM
	(Flights CROSS JOIN Aircraft)
    NATURAL JOIN
    Certified
    NATURAL JOIN
    Employees
WHERE salary > 100000;
        
-- v)
SELECT ename FROM
	Aircraft 
    NATURAL JOIN 
    Certified
    NATURAL JOIN 
    Employees
WHERE cruisingrange > 3000 AND aname != 'Boeing';

-- vi)
SELECT eid FROM Employees
ORDER BY salary DESC 
LIMIT 1;

-- vii)








