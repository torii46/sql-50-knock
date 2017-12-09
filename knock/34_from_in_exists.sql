SELECT
  last_name
FROM
  customer AS c
  INNER JOIN payment_p2007_05 AS p
    ON c.customer_id = p.customer_id
;

