-- select all data from country table
SELECT * FROM country;

-- count the records in the dataset
SELECT COUNT(*) AS `Count` FROM country;
SELECT COUNT(code) AS `Count` FROM country;

-- count the records in the dataset where the country resides in europe
SELECT COUNT(Name) FROM country
WHERE Continent='Europe';

-- Prove that count function disagrees null values
SELECT * FROM country
WHERE LifeExpectancy IS NOT NULL;

SELECT COUNT(LifeExpectancy) `Count of LE` FROM country;

-- How many continents are there??
SELECT COUNT(DISTINCT Continent) AS `Continent Count` from country;

-- Country count by continent
SELECT Continent,
	COUNT(Name) AS `Country Count`
FROM country
GROUP BY Continent
ORDER BY `Country Count` DESC;

-- Life expectancy and country count
SELECT Continent,
	COUNT(Name) AS `Country Count`,
    COUNT(LifeExpectancy) AS `LE Count`
FROM country
GROUP BY Continent
ORDER BY `Country Count` DESC;