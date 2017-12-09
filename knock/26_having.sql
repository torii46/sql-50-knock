SELECT
  c.name AS name,
  COUNT(c.name) AS film_cnt
FROM
  film
  INNER JOIN film_category
    USING(film_id)
  INNER JOIN category AS c
    USING(category_id)
WHERE
  c.name IN (
    'Sports',
    'Games',
    'Travel'
  )
GROUP BY
  c.name
HAVING
  COUNT(c.name) >= 60
ORDER BY
  film_cnt DESC
;
