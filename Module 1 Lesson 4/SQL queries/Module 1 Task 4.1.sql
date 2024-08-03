/*Напишите SQL-запрос к таблице products и выведите всю информацию о товарах, цена которых не превышает 100 рублей.
Результат отсортируйте по возрастанию id товара.
Поля в результирующей таблице: product_id, name, price*/

SELECT name, product_id, price
FROM products
WHERE price <= 100
ORDER BY product_id ASC

/*https://redash.public.karpov.courses/queries/60961/source*/