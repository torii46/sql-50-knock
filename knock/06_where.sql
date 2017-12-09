SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  NOT (
    first_name = 'KELLY'
    OR first_name = 'MARIA'
  )
;

