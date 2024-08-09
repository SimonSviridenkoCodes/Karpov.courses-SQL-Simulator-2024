/*Отберите из таблицы products все товары, названия которых либо начинаются со слова «чай», либо состоят из пяти символов.
Выведите две колонки: id товаров и их наименования.
Результат должен быть отсортирован по возрастанию id товара.
Поля в результирующей таблице: product_id, name*/

SELECT
  name,
  product_id
FROM
  products
WHERE
  SPLIT_PART(name, ' ', 1) = 'чай'
  OR LENGTH(name) = 5
ORDER BY
  product_id ASC
  
  /*https://redash.public.karpov.courses/queries/60990/source*/