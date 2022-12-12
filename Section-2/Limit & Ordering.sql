-- select first 10 records from country table
SELECT * FROM country LIMIT 10;

-- Select rows 6 to 10 from the country table
SELECT * FROM country LIMIT 5,5;

-- Top 5 highest populated countries
SELECT * FROM country ORDER BY Population DESC LIMIT 5;

SELECT * FROM country ORDER BY LifeExpectancy DESC LIMIT 5,1;