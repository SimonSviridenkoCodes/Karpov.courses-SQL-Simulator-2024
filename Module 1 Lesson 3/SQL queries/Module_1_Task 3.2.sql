/*Выведите все записи из таблицы products, отсортировав их по наименованиям товаров в алфавитном порядке, т.е. по возрастанию. 
Для сортировки используйте оператор ORDER BY.
Поля в результирующей таблице: product_id, name, price*/

SELECT
  name,
  product_id,
  price
FROM
  products
ORDER BY
  name ASC
  
  /*https://redash.public.karpov.courses/queries/57311/source*/