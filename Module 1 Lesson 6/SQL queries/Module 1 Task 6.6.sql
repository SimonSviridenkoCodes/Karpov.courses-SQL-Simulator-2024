/*По данным в таблице users посчитайте порядковый номер месяца рождения самого молодого пользователя сервиса.
С помощью группировки проведите расчёты отдельно в двух группах — для пользователей мужского и женского пола.
Новую колонку c порядковым номером месяца рождения самого молодого пользователя в группах назовите max_month.
Преобразуйте значения в новой колонке в формат INTEGER, чтобы порядковый номер был выражен целым числом.
Результат отсортируйте по колонке с полом пользователей.
Поля в результирующей таблице: sex, max_month*/


SELECT
  sex,
   DATE_PART('month', MAX(birth_date)):: INTEGER AS max_month
FROM
  users
GROUP BY
  sex
ORDER BY
  sex
  
/*https://redash.public.karpov.courses/queries/81165/source*/ 