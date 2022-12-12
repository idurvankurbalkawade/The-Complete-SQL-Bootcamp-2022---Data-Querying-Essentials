-- Total GNP
SELECT SUM(GNP) `Total GNP` FROM country;

SELECT * FROM Country;

/* What is the population of each region? Show the continent each region resides in 
Order the result by population wise(highest to lowest)*/
SELECT Continent,Region,SUM(Population) `Population`
FROM Country 
GROUP BY Continent,Region 
ORDER BY `Population` DESC;

-- Same Query but show the data of europe and africa only
SELECT Continent,Region,SUM(Population) `Population`
FROM Country 
WHERE Continent IN ('Europe','Africa')
GROUP BY Continent,Region 
ORDER BY `Population` DESC;