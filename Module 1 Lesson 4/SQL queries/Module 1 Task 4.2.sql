/*Отберите пользователей женского пола из таблицы users.
Выведите только id этих пользователей. Результат отсортируйте по возрастанию id.
Добавьте в запрос оператор LIMIT и выведите только 1000 первых id из отсортированного списка.
Поле в результирующей таблице: user_id*/

SELECT user_id
FROM users
WHERE sex = 'female'
ORDER BY user_id ASC
LIMIT 1000

/*https://redash.public.karpov.courses/queries/60962/source*/