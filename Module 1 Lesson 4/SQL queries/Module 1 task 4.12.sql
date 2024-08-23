/*Напишите SQL-запрос к таблице courier_actions, чтобы узнать id и время доставки последних 10 заказов, доставленных курьером с id 100.
Поля в результирующей таблице: order_id, time*/

SELECT
  order_id,
  time
FROM
  courier_actions
WHERE
  action LIKE '%deliver%'
  AND courier_id = '100'
ORDER BY
  time DESC
LIMIT
  10
  
  /*https://redash.public.karpov.courses/queries/62944/source*/