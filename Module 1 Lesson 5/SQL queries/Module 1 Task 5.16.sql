/*Посчитайте, сколько пользователей никогда не отменяли свой заказ. 
Для этого из общего числа всех уникальных пользователей отнимите число уникальных пользователей,
которые хотя бы раз отменяли заказ. Подумайте, какое условие необходимо указать в FILTER, чтобы получить корректный результат.
Полученный столбец назовите users_count.
Поле в результирующей таблице: users_count*/

SELECT
  COUNT (DISTINCT user_id) - (
    COUNT (DISTINCT user_id) FILTER (
      WHERE
        action LIKE '%cancel%'
    )
  ) AS users_count
FROM
  user_actions

/*https://redash.public.karpov.courses/queries/67215/source*/