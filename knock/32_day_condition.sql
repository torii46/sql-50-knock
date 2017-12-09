SELECT
  SUM(amount) AS total_sales
FROM
  payment
WHERE
  payment_date >= '2007-01-01'
  AND payment_date < '2007-02-01'
;

