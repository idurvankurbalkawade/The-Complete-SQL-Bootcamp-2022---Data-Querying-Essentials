-- Select all the rentals that were returned on '2005-05-26 22:04:30'
SELECT * FROM rental
WHERE return_date='2005-05-26 22:04:30';

-- Select all the rentals that were returned on '26/May/2005'
SELECT * FROM rental
WHERE DATE(return_date)='2005-05-26';

-- Select all rentals that were returned on the '05/26/2005 at 22:04(%m/%d/%Y %H:%i)'
SELECT * from rental
WHERE DATE_FORMAT(return_date,'%m/%d/%Y %H:%i')='05/26/2005 22:04';

-- Select all the rentals that were returned on 04:11:42 on any date
SELECT * FROM rental
WHERE TIME(return_date) = '04:11:42';

-- Select all rentals that were returned between 26th May and 28th May
SELECT * FROM 
rental
WHERE return_date BETWEEN '2005-05-26' AND '2005-05-28';


