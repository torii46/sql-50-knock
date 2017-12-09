SELECT
  cl.name,
  cl.country,
  COUNT(*) AS cnt,
  RANK() OVER (
    PARTITION BY cl.country
    ORDER BY COUNT(*) DESC
  ) AS rank
FROM
  payment_p2007_01 AS p
  INNER JOIN customer_list AS cl
    ON p.customer_id = cl.id
GROUP BY
  cl.name, cl.country
;

