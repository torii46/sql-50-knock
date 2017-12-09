SELECT
  EXTRACT(YEAR FROM payment_date) AS yyyy,
  EXTRACT(MONTH FROM payment_date) AS mm,
  SUM(amount) AS total_sales
FROM
  payment
GROUP BY
  yyyy,
  mm
ORDER BY
  mm
;

