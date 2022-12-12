SELECT film_id,
	   title,
       rental_duration,
       rental_rate,
       length,
       replacement_cost,
       rental_duration+2 AS `Longer Rental Duration`,	-- Add 2 days to each rental duration and name the column as 'Longer Rental Duration'
       replacement_cost-2.99 AS `Replacement Cost Discount`,	-- subtract 2.99 from each replacement cost and change column name to `replacement cost discount`
       rental_rate*2 AS `Double Rental Rate`,	-- Double the rental rate and change the column name as Double Rental Rate
       FORMAT(rental_rate / rental_duration,2) AS `Cost per day`,	-- Divide the rental rate by rental duration and change the column name to `Cost per day`
       length DIV 30 AS `Full Sittings`,	-- Divide the length by 30 and change the column name to 'full sittings'
       length MOD 30 AS `Final Sittings`,	-- Calculate length modulo 30 and change the column name to 'Final Sitting'
       'Film Table' AS `Table Name`
       
FROM film;