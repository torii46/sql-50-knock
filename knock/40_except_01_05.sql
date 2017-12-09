SELECT
  DISTINCT customer_id
FROM
  payment_p2007_01
EXCEPT
SELECT
  DISTINCT customer_id
FROM
  payment_p2007_05
;

