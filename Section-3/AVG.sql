-- What is the average rental rate across all the films in the film dataset
SELECT AVG(rental_rate) from film;

-- Is the average rental rate for PG Rated films higher or lower than the overall average??
SELECT AVG(rental_rate) from film WHERE rating = 'PG';

-- lowest average replacement cost for each rating
SELECT rating,AVG(replacement_cost) `RC` FROM film GROUP BY rating ORDER BY RC ASC;

-- What is the average length of the film for each combination of rating and rental_duration
SELECT rating,
	rental_duration,
    AVG(length) `Average length of the film`
FROM film
GROUP BY rating,rental_duration
ORDER BY `Average Length of the film` DESC;