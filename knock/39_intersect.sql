SELECT
  DISTINCT customer_id
FROM
  payment_p2007_01
INTERSECT
SELECT
  DISTINCT customer_id
FROM
  payment_p2007_02
INTERSECT
SELECT
  DISTINCT customer_id
FROM
  payment_p2007_03
;

