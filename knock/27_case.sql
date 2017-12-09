SELECT
  payment_id,
  amount,
  CASE
    WHEN amount > 5 THEN 'expensive'
    WHEN amount > 1 THEN 'modest'
    ELSE 'cheap'
  END AS price_range
FROM
  payment
;

