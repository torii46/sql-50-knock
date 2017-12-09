SELECT
  CONCAT(
    ROUND(amount * 110),
    'yen'
  ) AS amount_yen
FROM
  payment
LIMIT 3
;

