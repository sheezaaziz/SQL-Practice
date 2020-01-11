SET SQL_SAFE_UPDATES = 0; -- turn off safe updates --
SELECT * FROM cats;
DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE cat_id=age;
DELETE FROM cats;
SET SQL_SAFE_UPDATES = 1; -- turn on safe updates --