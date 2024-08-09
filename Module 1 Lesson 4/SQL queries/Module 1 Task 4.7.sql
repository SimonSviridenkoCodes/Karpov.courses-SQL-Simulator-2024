/*Выберите из таблицы products id и наименования только тех товаров, названия которых начинаются на букву «с» и содержат только одно слово.
Результат должен быть отсортирован по возрастанию id товара.
Поля в результирующей таблице: product_id, name*/

SELECT
  name,
  product_id
FROM
  products
WHERE
  name LIKE 'с%'
  AND name NOT LIKE '% %'
ORDER BY
  product_id ASC
  
 /*https://redash.public.karpov.courses/queries/60993/source*/