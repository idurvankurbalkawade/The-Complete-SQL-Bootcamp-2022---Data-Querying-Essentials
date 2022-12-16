SELECT return_date,
	   DATE_FORMAT(return_date,'%Y-%m-%d') AS `%Y-%m-%d`,	-- YYYY-MM-DD
       DATE_FORMAT(return_date,'%e/%c/%Y') AS `%e/%c/%Y`,	-- D/M/YYYY
	   DATE_FORMAT(return_date,'%e/%c/%Y %H:%i') AS `%e/%c/%Y %H:%i`,	-- D/M/YYYY HH:MM
       DATE_FORMAT(DATE_ADD(return_date,INTERVAL 5 MONTH),'%d-%b-%y') AS `%d-%b-%y`,
       DATE_FORMAT(DATE_SUB(return_date,INTERVAL 6 DAY),'%M %e,%Y'),
       DATE_FORMAT(ADDTIME(return_date,'2 03:10:03'),'%a %D %b %Y'),
       DATE_FORMAT(SUBTIME(return_date,'03:10:03'),'%W %D %M %Y %T')
FROM rental;