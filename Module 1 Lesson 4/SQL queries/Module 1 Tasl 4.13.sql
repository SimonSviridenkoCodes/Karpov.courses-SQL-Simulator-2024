/*Из таблицы user_actions получите id всех заказов, сделанных пользователями сервиса в августе 2022 года.
Результат отсортируйте по возрастанию id заказа.
Поле в результирующей таблице: order_id*/

SELECT
  order_id
FROM
  orders
WHERE
  creation_time BETWEEN '2022-08-01'
  AND '2022-09-01'
ORDER BY
  order_id ASC
  
  /*https://redash.public.karpov.courses/queries/62946/source*/