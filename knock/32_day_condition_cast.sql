SELECT
  SUM(amount) AS total_sales
FROM
  payment
WHERE
  CAST(payment_date AS DATE)
    BETWEEN '2007-01-01' AND '2007-01-31'
;

