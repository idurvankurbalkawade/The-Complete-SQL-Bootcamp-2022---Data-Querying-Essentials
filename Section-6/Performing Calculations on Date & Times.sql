SELECT rental_date,
	   return_date,
       NOW() AS `Date & Time Now`,
       DATE_ADD(NOW(),INTERVAL 10 DAY) AS `Date & Time Future`,
       DATE_SUB(NOW(),INTERVAL 5 DAY) AS `Date & Time in Past`,
       ADDTIME(NOW(),'2 03:10:03') AS `Add Time`,
       SUBTIME(NOW(),'03:10:03') AS `Sub Time`,
       DATEDIFF(return_date,rental_date) AS `Data Diff`,
       TIMEDIFF(return_date,rental_date) AS `Time Diff`,
       TIMEDIFF(NOW(),rental_date) AS `Time Diff`,
       TIMESTAMPADD(MONTH,3,NOW()) AS `TS Add`,
       TIMESTAMPDIFF(YEAR,NOW(),rental_date) AS `TS Diff`,
       UNIX_TIMESTAMP(return_date),
       SEC_TO_TIME(UNIX_TIMESTAMP(return_date)-UNIX_TIMESTAMP(rental_date)) AS `Unix TS Diff`,
       PERIOD_ADD(202101,11),
       PERIOD_DIFF(202209,202205),
       LAST_DAY(return_date) AS `ME`
FROM rental
LIMIT 10;