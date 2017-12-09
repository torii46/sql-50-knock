SELECT
  DISTINCT customer_id
FROM
  payment_p2007_01
UNION
SELECT
  DISTINCT customer_id
FROM
  payment_p2007_05
;

