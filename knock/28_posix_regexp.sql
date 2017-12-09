SELECT
  COUNT(*)
FROM
  film
WHERE
  description ~ '(Thou|Insi)ghtful'
  -- [mysql ver] description REGEXP '(Thou|Insi)ghtful'
;

