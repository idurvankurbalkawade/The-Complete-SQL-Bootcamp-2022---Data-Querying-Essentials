# what are the different ratings that are assigned to films?
SELECT DISTINCT rating from film;

# what are the different rental rates that are applied to films?
SELECT DISTINCT rental_rate from film;

# are there films which each rating at each price level?
SELECT DISTINCT rating,rental_rate FROM film;
