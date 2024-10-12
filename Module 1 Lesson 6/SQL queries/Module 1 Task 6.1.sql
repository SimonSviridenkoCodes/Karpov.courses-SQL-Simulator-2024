/*С помощью оператора GROUP BY посчитайте количество курьеров мужского и женского пола в таблице couriers.
Новую колонку с числом курьеров назовите couriers_count.
Результат отсортируйте по этой колонке по возрастанию.
Поля в результирующей таблице: sex, couriers_count*/

SELECT COUNT(courier_id) AS couriers_count, sex
FROM couriers
GROUP BY sex
ORDER BY couriers_count ASC

/*https://redash.public.karpov.courses/queries/67670/source*/