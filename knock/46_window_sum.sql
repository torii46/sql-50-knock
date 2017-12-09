SELECT
  cl.name,
  cl.country,
  COUNT(*) AS cnt,
  SUM(COUNT(*)) OVER (
    PARTITION BY cl.country
  ) AS sum_pay,
  RANK() OVER (
    PARTITION BY cl.country
    ORDER BY COUNT(*) DESC
  ) as rank
FROM
  payment_p2007_01 AS p
  INNER JOIN customer_list AS cl
    ON p.customer_id = cl.id
GROUP BY
  cl.name, cl.country
;

