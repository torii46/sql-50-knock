SELECT
  payment_id,
  p.customer_id,
  c.first_name,
  c.last_name,
  amount
FROM
  payment AS p
  INNER JOIN customer AS c
    ON p.customer_id
      = c.customer_id
WHERE
  first_name = 'BRIAN'
  AND last_name = 'WYMAN'
;

