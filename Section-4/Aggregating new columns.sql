
SELECT rating,
	FORMAT(AVG(replacement_cost),2),
	FORMAT(AVG(replacement_cost-2.99),2) AS `Replacement Cost Discount`
FROM film
GROUP BY rating;