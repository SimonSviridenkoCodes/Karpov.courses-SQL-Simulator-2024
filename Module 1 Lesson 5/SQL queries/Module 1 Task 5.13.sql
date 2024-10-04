/*Воспользуйтесь функцией AGE и рассчитайте разницу в возрасте между самым старым и самым молодым пользователями мужского пола в таблице users. 
Разницу в возрасте выразите количеством лет, месяцев и дней, переведя её в тип VARCHAR. 
Колонку с посчитанным значением назовите age_diff.
Поле в результирующей таблице: age_diff*/

SELECT
  CAST(AGE(MAX(birth_date), MIN(birth_date)) AS varchar) AS age_diff
FROM
  users
WHERE
  sex = 'male'
  
  /*https://redash.public.karpov.courses/queries/66832/source*/