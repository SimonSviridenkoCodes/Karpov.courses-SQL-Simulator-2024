/*Посчитайте общее количество заказов в таблице orders,
количество заказов с пятью и более товарами и найдите долю заказов с пятью и более товарами в общем количестве заказов.
В результирующей таблице отразите все три значения — поля назовите соответственно orders, large_orders, large_orders_share.
Долю заказов с пятью и более товарами в общем количестве товаров округлите до двух знаков после запятой.
Поля в результирующей таблице: orders, large_orders, large_orders_share*/

SELECT
  COUNT(order_id) AS orders,
  COUNT (order_id) FILTER (
    WHERE
      array_length (product_ids, 1) >= 5
  ) AS large_orders,
  ROUND(COUNT (order_id) FILTER (
    WHERE
      array_length (product_ids, 1) >= 5
  ) / COUNT (order_id) :: DECIMAL,2) AS large_orders_share
FROM
  orders
  
/*https://redash.public.karpov.courses/queries/67219/source*/