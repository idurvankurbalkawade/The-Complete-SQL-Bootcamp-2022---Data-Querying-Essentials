-- SELECT * FROM Country;
/*
Grouping by region, create a table that shows
1. The count of countries in each region (call the column country count)
2. The sum of all populations within each region (call the column Population)
3. The average life expectancy for each region (call the column average LE)
4. The highest life expectancy within each region (call the column max LE)
5. The lowest life expectancy within each region (call the column min LE)
Sort the result population wise(highest to lowest)
*/

SELECT Region,
	COUNT(Name) AS `Country Count`,
    SUM(Population) AS `Population`,
    AVG(LifeExpectancy) AS `Average LE`,
    MAX(LifeExpectancy) AS `Max LE`,
	MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
ORDER BY `Population` DESC;

-- Add a filter to show regions having population less than 50 million

SELECT Region,
	COUNT(Name) AS `Country Count`,
    SUM(Population) AS `Population`,
    AVG(LifeExpectancy) AS `Average LE`,
    MAX(LifeExpectancy) AS `Max LE`,
	MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
HAVING `Population` < 50000000
ORDER BY `Population` DESC;

/* Using above query add a second filter to show regions that 
also have an average life expectancy greater than 70 */
SELECT Region,
	COUNT(Name) AS `Country Count`,
    SUM(Population) AS `Population`,
    AVG(LifeExpectancy) AS `Average LE`,
    MAX(LifeExpectancy) AS `Max LE`,
	MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
ORDER BY `Population` DESC;

-- Add a filter to show regions having population less than 50 million

SELECT Region,
	COUNT(Name) AS `Country Count`,
    SUM(Population) AS `Population`,
    AVG(LifeExpectancy) AS `Average LE`,
    MAX(LifeExpectancy) AS `Max LE`,
	MIN(LifeExpectancy) AS `Min LE`
FROM country
GROUP BY Region
HAVING `Population` < 50000000 AND `Average LE` > 70
ORDER BY `Population` DESC;
