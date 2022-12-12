SELECT * FROM payment;

SELECT payment_id,
	   amount,
	   amount*-1 AS `negative amount`,
       ABS(amount*-1),
       CEIL(amount),
       FLOOR(amount),
       ROUND(amount,1),
       TRUNCATE(amount,1),
       POW(payment_id,3),
       POWER(payment_id,3),
       ROUND(SQRT(payment_id),2),
       PI()
FROM payment;