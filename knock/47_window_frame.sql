SELECT
  cl.country,
  COUNT(*) AS count,
  SUM(COUNT(*)) OVER (
    ORDER BY COUNT(*) DESC
    ROWS BETWEEN
      UNBOUNDED PRECEDING
      AND CURRENT ROW
  ) AS cumulative_count
FROM
  payment_p2007_01 AS p
  INNER JOIN customer_list AS cl
    ON p.customer_id = cl.id
GROUP BY
  cl.country
ORDER BY
  count DESC
;

-- ROWS BETWEEN frame_start AND frame_end
--   UNBOUNDED PRECEDING: first row of partition
--   n PRECEDING        : n rows before
--   CURRENT ROW        : current row
--   n FOLLOWING        : n rows after
--   UNBOUNDED PRECEDING: last row of partition

