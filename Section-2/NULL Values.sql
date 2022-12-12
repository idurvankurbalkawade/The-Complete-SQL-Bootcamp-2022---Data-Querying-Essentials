show tables;

select * from country;

SELECT * FROM country WHERE LifeExpectancy IS NULL;

SELECT * FROM country WHERE IndepYear IS NOT NULL;

SELECT name, HeadOfState FROM country
WHERE name IN ('Andorra','Antarctica','Australia');