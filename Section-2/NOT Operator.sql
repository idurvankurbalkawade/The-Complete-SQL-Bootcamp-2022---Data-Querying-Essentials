-- Select all records from the country table, apart from Aruba
SELECT * FROM country WHERE NOT Name  = 'Aruba';

SELECT * FROM country WHERE Name LIKE 'A%';

SELECT * FROM country WHERE Name NOT LIKE 'A%';

SELECT * FROM country WHERE SurfaceArea NOT BETWEEN 10 AND 10000000;

-- Select all information of countries that reside outside of Europe and Africa
SELECT * FROM country WHERE Continent NOT IN ('Europe','Africa');

-- Select all countries that have life expectancy populated
SELECT * FROM country WHERE LifeExpectancy IS NOT NULL;
