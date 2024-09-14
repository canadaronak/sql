-- sum & avg

-- how much customer spend on each day
SELECT market_date,customer_id
,sum(quantity*cost_to_customer_per_qty) as total_cost
FROM customer_purchases

GROUP BY market_date,customer_id

--how much does each customer spent on avg
SELECT customer_first_name,customer_last_name
,AVG(quantity*cost_to_customer_per_qty) as avg_cost

FROM customer_purchases as cp
INNER JOIN customer as c
	ON c.customer_id = cp.customer_id
GROUP BY cp.customer_id
ORDER BY avg_cost DESC