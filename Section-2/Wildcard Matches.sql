-- LIKE '%'
SELECT * FROM country WHERE name LIKE 'a%';

SELECT * FROM country WHERE name LIKE '%d';

SELECT * FROM country WHERE name LIKE '%ric%';

-- LIKE '_'
SELECT * FROM country WHERE Name LIKE '____';

SELECT * FROM country WHERE Name LIKE '_ra_';

SELECT * FROM country WHERE Name LIKE '_ra';

-- REGEXP
SELECT * FROM country WHERE Name REGEXP '^[A-C]';