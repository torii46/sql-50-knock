SELECT
  CAST(payment_date AS DATE) AS p_date,
  SUM(amount) AS total_sales
FROM
  payment
GROUP BY
  p_date
ORDER BY
  p_date
;

