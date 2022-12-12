select * from city where District = 'Limburg';

select * from city where District = 'Limburg' or name = 'Birmingham';

select * from city where District = 'Limburg' or name = 'Birmingham' or ID = 500;

select * from city where District = 'Limburg' or name = 'Birmingham' or ID = 500 or population < 600;