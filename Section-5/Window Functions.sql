SELECT * FROM country;

SELECT Name,
	   Continent,
	   LifeExpectancy,
       RANK() OVER (ORDER BY LifeExpectancy DESC) LE_Rank,
	   DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) LE_Dense_Rank,
       PERCENT_RANK() OVER(PARTITION BY Continent
       ORDER BY LifeExpectancy) LE_Percent_Rank,
       ROW_NUMBER() OVER(ORDER BY LifeExpectancy DESC) Row_Num,
       FIRST_VALUE(LifeExpectancy) OVER(PARTITION BY Continent ORDER BY LifeExpectancy DESC) first_val,
       LAST_VALUE(Name) OVER(PARTITION BY Continent ORDER BY LifeExpectancy DESC
       RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) last_val
FROM country
ORDER BY Continent, LifeExpectancy DESC;