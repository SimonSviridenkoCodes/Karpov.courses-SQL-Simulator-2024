/*Отберите из таблицы user_actions все действия пользователей по созданию заказов, которые были совершены ими после полуночи 6 сентября 2022 года.
Выведите колонки с id пользователей, id созданных заказов и временем их создания.
Результат должен быть отсортирован по возрастанию id заказа.
Поля в результирующей таблице: user_id, order_id, time*/

SELECT
  user_id,
  order_id,
  time
FROM
  user_actions
WHERE
  time > '2022-09-06'
  AND action = 'create_order'
ORDER BY
  order_id ASC
  
  /*https://redash.public.karpov.courses/queries/60967/source*/