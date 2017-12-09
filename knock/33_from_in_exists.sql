SELECT
  AVG(total_sales),
  MIN(total_sales),
  MAX(total_sales)
FROM
  (SELECT
    customer_id,
    SUM(amount) AS total_sales
  FROM
    payment
  GROUP BY
    customer_id
  ) AS customer_payment
;

