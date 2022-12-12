-- SELECT * from customer;

SELECT 
	first_name,
    last_name,
    CONCAT(first_name,' ',last_name) AS `Full Name`,
    LOWER(CONCAT(first_name,' ',last_name)) AS `Full Name Lower`,
	INSTR(first_name,'A'),
    LENGTH(last_name),
    LEFT(first_name,2),
    RIGHT(last_name,3),
    REPLACE(first_name,'AR','AARR'),
    SUBSTRING(last_name,1,2),
    SUBSTRING_INDEX(first_name,1,2),
    LTRIM(first_name),
    RTRIM(first_name),
    TRIM(BOTH FROM first_name)
FROM customer;