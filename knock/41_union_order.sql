SELECT
  DISTINCT customer_id
FROM
  payment_p2007_01
UNION
SELECT
  DISTINCT customer_id
FROM
  payment_p2007_05
ORDER BY
  customer_id ASC
LIMIT
  3
;

