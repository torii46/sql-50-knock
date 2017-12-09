SELECT
  cl.name,
  COUNT(*) AS cnt,
  RANK() OVER (
    ORDER BY COUNT(*) DESC
  ) AS ranking
FROM
  payment_p2007_01 AS p
  INNER JOIN customer_list AS cl
    ON p.customer_id = cl.id
GROUP BY
  cl.name
;
