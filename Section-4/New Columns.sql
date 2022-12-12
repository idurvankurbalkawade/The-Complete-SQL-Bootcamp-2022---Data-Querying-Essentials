/* 
Add the following column titles to the result below, each containing NULL values:
Addition, Subtraction, Multiplication, Division, Integer Division, Modulus, Table Name
*/

SELECT film_id,
	   title,
       rental_duration,
       rental_rate,
       length,
       replacement_cost,
       '+' AS `Addition`,
       '-' AS `Subtraction`,
       '*' AS `Multiplication`,
       '/' AS `Division`,
       'DIV' AS `Integer Division`,
       '%' AS `Modulus`,
       'Film Table' AS `Table Name`
       
FROM film;