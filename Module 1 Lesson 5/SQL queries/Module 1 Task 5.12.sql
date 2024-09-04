/*Рассчитайте среднюю цену товаров в таблице products, в названиях которых присутствуют слова «чай» или «кофе».
Любым известным способом исключите из расчёта товары, содержащие в названии «иван-чай» или «чайный гриб».
Среднюю цену округлите до двух знаков после запятой.
Столбец с полученным значением назовите avg_price.
Поле в результирующей таблице: avg_price*/

SELECT
  ROUND(AVG(
    CASE
      WHEN name LIKE '%чай%'
      AND name NOT LIKE '%иван-чай%'
      AND name NOT LIKE '%чайный гриб%' THEN price 
      WHEN name LIKE '%кофе%' THEN price 
    END
  ),2) AS avg_price
FROM
  products
  
/*https://redash.public.karpov.courses/queries/64049/source*/