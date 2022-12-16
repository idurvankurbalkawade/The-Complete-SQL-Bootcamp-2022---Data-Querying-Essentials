SELECT customer_id,
	   rental_id,
       inventory_id,
       rental_date,
       TIME(rental_date),	-- Extracts the time part only from date part (HH:MM:SS)
       HOUR(rental_date),	-- Extracts the hour value from the time part
       MINUTE(rental_date),	-- Extracts the minute value from time part
       SECOND(rental_date),	-- Extracts the seconds value from time part
       EXTRACT(HOUR_MINUTE from rental_date) -- can extract any part we want from the given date
FROM rental
WHERE customer_id=1
AND staff_id=1;