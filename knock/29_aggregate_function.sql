SELECT
  customer_id,
  SUM(amount) AS total_sales
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  total_sales DESC
LIMIT 5
;

