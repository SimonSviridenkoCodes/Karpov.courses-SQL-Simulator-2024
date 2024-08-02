/*Повторите запрос из предыдущего задания, но теперь колонки name и price переименуйте соответственно в product_name и product_price.
Поля в результирующей таблице: product_name, product_price*/

SELECT
  name AS product_name,
  price AS product_price
FROM
  products
ORDER BY
  price DESC
LIMIT
  5
  
  /*https://redash.public.karpov.courses/queries/57314/source*/