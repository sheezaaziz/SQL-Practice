USE testing_db;
-- print out the current time only --
SELECT CURTIME(); 
-- print out the current date only --
SELECT CURDATE();
-- print out the current day of the week (day #) --
SELECT DAYOFWEEK(CURDATE());
-- print out the current day of the week (day #) --
SELECT DAYNAME(CURDATE());
-- print out the current date using this format: mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
-- print out the current day and time using this format: January 2nd at 3:15 --
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
-- create a tweets table that stores: the tweets content, username, time it was created --
CREATE TABLE tweets 
(
	content VARCHAR(140),
    username VARCHAR(20),
    time_created TIMESTAMP DEFAULT NOW()
);