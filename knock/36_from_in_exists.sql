SELECT
  last_name
FROM
  customer AS c
WHERE
  EXISTS (
    SELECT
      1
    FROM
      payment_p2007_05 AS p
    WHERE
      c.customer_id = p.customer_id
  )
;

