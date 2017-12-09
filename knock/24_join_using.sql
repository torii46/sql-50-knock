SELECT
  payment_id,
  first_name,
  last_name
FROM
  payment
  LEFT JOIN customer
    USING(customer_id)
;

