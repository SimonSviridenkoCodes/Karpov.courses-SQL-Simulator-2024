/*Отберите из таблицы products все товары, содержащие в своём названии последовательность символов «чай» (без кавычек).
Выведите две колонки: id продукта и его название.
Результат должен быть отсортирован по возрастанию id товара.
Поля в результирующей таблице: product_id, name*/

SELECT
  name,
  product_id
FROM
  products
WHERE
  name LIKE '%чай%'
ORDER BY
  product_id ASC
  
  /*https://redash.public.karpov.courses/queries/60991/source*/