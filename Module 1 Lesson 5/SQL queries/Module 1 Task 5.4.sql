/*Как вы помните, в таблице users у некоторых пользователей не были указаны их даты рождения.
Посчитайте в одном запросе количество всех записей в таблице и количество только тех записей, для которых в колонке birth_date указана дата рождения.
Колонку с общим числом записей назовите dates, а колонку с записями без пропусков — dates_not_null.
Поля в результирующей таблице: dates, dates_not_null*/


SELECT count(*) as dates,
       count(birth_date) as dates_not_null
FROM   users

/*https://redash.public.karpov.courses/queries/63603/source*/