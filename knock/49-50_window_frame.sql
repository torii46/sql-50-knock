SELECT
  CAST(payment_date AS DATE) AS d,
  COUNT(*),
  ROUND(AVG(COUNT(*)) OVER (
    ORDER BY
      CAST(payment_date AS DATE) ASC
    ROWS BETWEEN
      2 PRECEDING
      AND CURRENT ROW
  ), 2) AS moving_avg
FROM
  payment AS p
WHERE
  CAST(payment_date AS DATE)
    BETWEEN '2007-04-06' AND '2007-04-12'
GROUP BY
  d
ORDER BY
  d ASC
;
