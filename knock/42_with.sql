WITH loyal_customer AS (
  SELECT
    customer_id,
    COUNT(*) AS cnt
  FROM
    payment_p2007_01
  GROUP BY
    customer_id
  HAVING
    COUNT(*) >= 7
)

SELECT
  email
FROM
  customer AS c
  INNER JOIN loyal_customer as lc
    ON c.customer_id = lc.customer_id
WHERE
  c.active = 1
;

