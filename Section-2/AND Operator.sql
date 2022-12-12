
select * from film where rating = 'G';

-- list of films which has rating of G and has trailers in it's special features
select * from film where rating = 'G' and special_features = 'Trailers';

-- list of films which has rating of G, trailer as special feature and rental rate of 2.99
select * from film where rating = 'G' and special_features = 'Trailers' and rental_rate = 2.99;

select * from film where rating = 'G' and special_features = 'Trailers' and rental_rate = 2.99 and rental_duration > 3;