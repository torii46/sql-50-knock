SELECT
  last_name
FROM
  customer
WHERE
  customer_id IN
    (SELECT
      customer_id
    FROM
      payment_p2007_05
    )
;

