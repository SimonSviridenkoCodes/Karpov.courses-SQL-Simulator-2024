/*Посчитайте количество заказов в таблице orders с девятью и более товарами.
Для этого воспользуйтесь функцией array_length, отфильтруйте данные по количеству товаров в заказе и проведите агрегацию.
Полученный столбец назовите orders.
Поле в результирующей таблице: orders*/

SELECT
  COUNT(array_length(product_ids, 1)) AS orders
FROM
  orders
WHERE
  array_length (product_ids, 1) >= 9

/*https://redash.public.karpov.courses/queries/63641/source*/