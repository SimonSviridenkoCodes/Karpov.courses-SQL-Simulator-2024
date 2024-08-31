/*Представьте, что один из пользователей сервиса сделал заказ, в который вошли одна пачка сухариков,
одна пачка чипсов и один энергетический напиток. Посчитайте стоимость такого заказа.
Колонку с рассчитанной стоимостью заказа назовите order_price.
Для расчётов используйте таблицу products.
Поле в результирующей таблице: order_price*/

/*FIRST VARIANT*/

SELECT
  SUM(price) AS order_price
FROM
  products
WHERE
  name LIKE '%чипсы%'
  OR name LIKE '%сухарики%'
  OR name LIKE '%энерг%'
  
  /*SECOND VARIANT*/
SELECT
  sum(price) as order_price
FROM
  products
WHERE
  name in ('сухарики', 'чипсы', 'энергетический напиток')
  
  /*https://redash.public.karpov.courses/queries/63636/source*/