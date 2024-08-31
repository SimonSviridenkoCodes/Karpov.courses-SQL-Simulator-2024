/*Посчитайте количество курьеров женского пола в таблице couriers.
Полученный столбец с одним значением назовите couriers.
Поле в результирующей таблице: couriers*/

SELECT
  COUNT(sex) AS couriers
FROM
  couriers
WHERE
  sex = 'female'
  
  /*https://redash.public.karpov.courses/queries/63630/source*/