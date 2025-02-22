/*Посчитайте максимальный возраст пользователей мужского и женского пола в таблице users.
Возраст измерьте числом полных лет.
Новую колонку с возрастом назовите max_age. Преобразуйте значения в новой колонке в формат INTEGER, чтобы возраст был выражен целым числом.
Результат отсортируйте по новой колонке по возрастанию возраста.
Поля в результирующей таблице: sex, max_age*/


SELECT
  MAX(DATE_PART('year', AGE(birth_date))) :: INTEGER AS max_age,
  sex
FROM
  users
GROUP BY
  sex
ORDER BY
  sex
  
  /*https://redash.public.karpov.courses/queries/81168/source*/