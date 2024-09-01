/*С помощью функции AGE и агрегирующей функции рассчитайте возраст самого молодого курьера мужского пола в таблице couriers.
Возраст выразите количеством лет, месяцев и дней (как в примере выше), переведя его в тип VARCHAR. 
В качестве даты, относительно которой считать возраст курьеров, используйте свою текущую дату (либо не указывайте её на месте первого аргумента, как показано в примерах).
Полученную колонку со значением возраста назовите min_age.
Поле в результирующей таблице: min_age*/

SELECT
  CAST(AGE(current_date, MAX(birth_date)) AS VARCHAR) AS min_age
FROM
  couriers
WHERE
  sex = 'male'
  
/*https://redash.public.karpov.courses/queries/63675/source*/