-- Select Name, IndepYear, Population, Life Expectancy from the country table within the world schema --
SELECT Name,IndepYear,Population,LifeExpectancy FROM country;

-- Order names from Z to A --
SELECT Name,IndepYear,Population,LifeExpectancy FROM country ORDER BY Name DESC;

-- Order by Highest Population to Lowest Population --
SELECT Name,IndepYear,Population,LifeExpectancy FROM country ORDER BY Population DESC;

-- using LE as alias for Life Expectancy --
SELECT Name,IndepYear,Population,LifeExpectancy AS LE FROM country ORDER BY Population DESC;

-- Order by LE(Alias) from highest to lowest --
SELECT Name,IndepYear,Population,LifeExpectancy AS LE FROM country ORDER BY LE DESC;

SELECT Name,IndepYear,Population,LifeExpectancy FROM country ORDER BY IndepYear DESC,Population ASC;

-- Recreating query by using column preferences
SELECT Name,IndepYear,Population,LifeExpectancy FROM country ORDER BY 2 DESC,3 ASC;