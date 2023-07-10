SELECT * FROM cats;
SELECT age FROM cats;
SELECT name, breed FROM cats;
SELECT * FROM cats WHERE age = 4;
SELECT * FROM cats WHERE name ='Egg';

-- Aliases
SELECT cat_id AS id, name FROM cats;