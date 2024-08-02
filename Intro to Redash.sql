/*Exploring the database, using SELECT, FROM, ORDER BY DESC or ASC, LIMIT*/

SELECT
  courier_id,
  birth_date,
  sex
FROM
  couriers
ORDER BY
  courier_id ASC
LIMIT
  100
  
--   https://redash.public.karpov.courses/queries/57307/source