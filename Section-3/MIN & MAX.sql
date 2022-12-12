-- What is the highest life expectancy of any country in the country dataset?
SELECT MAX(LifeExpectancy) FROM country;

-- What is the lowest life expectancy of any country in the country dataset?
SELECT MIN(LifeExpectancy) FROM country;

-- What is the highest life expectancy within each region in the dataset?
SELECT Region,MAX(LifeExpectancy) AS `Highest LE` FROM country GROUP BY Region ORDER BY `Highest LE` DESC;

-- What is the lowest life expectancy within each continent in the dataset?
SELECT Continent,MIN(LifeExpectancy) AS `Lowest LE` FROM country GROUP BY Continent ORDER BY `Lowest LE` DESC;

-- Replace NULL Value with value 30
SELECT Continent,COALESCE(MIN(LifeExpectancy),30) AS `Lowest LE` FROM country GROUP BY Continent ORDER BY `Lowest LE` DESC;