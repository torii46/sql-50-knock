SELECT
  customer_id,
  COUNT(*) AS payment_count
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  payment_count DESC
LIMIT 3
;

