/*Как и в задаче из прошлого урока, вычислите НДС каждого товара в таблице products и рассчитайте цену без учёта НДС.
Однако теперь примите во внимание, что для товаров из списка налог составляет 10%.
Для остальных товаров НДС тот же — 20%.
Выведите всю информацию о товарах, включая сумму налога и цену без его учёта.
Колонки с суммой налога и ценой без НДС назовите соответственно tax и price_before_tax.
Округлите значения в этих колонках до двух знаков после запятой.
Результат отсортируйте сначала по убыванию цены товара без учёта НДС, затем по возрастанию id товара.
Поля в результирующей таблице: product_id, name, price, tax, price_before_tax*/

SELECT
  name,
  product_id,
  price,
  CASE
    WHEN name IN (
      'сахар',
      'сухарики',
      'сушки',
      'семечки',
      'масло льняное',
      'виноград',
      'масло оливковое',
      'арбуз',
      'батон',
      'йогурт',
      'сливки',
      'гречка',
      'овсянка',
      'макароны',
      'баранина',
      'апельсины',
      'бублики',
      'хлеб',
      'горох',
      'сметана',
      'рыба копченая',
      'мука',
      'шпроты',
      'сосиски',
      'свинина',
      'рис',
      'масло кунжутное',
      'сгущенка',
      'ананас',
      'говядина',
      'соль',
      'рыба вяленая',
      'масло подсолнечное',
      'яблоки',
      'груши',
      'лепешка',
      'молоко',
      'курица',
      'лаваш',
      'вафли',
      'мандарины'
    ) THEN ROUND(price / 110 * 10, 2)
    ELSE ROUND(price / 120 * 20, 2)
  END AS tax,
  CASE
    WHEN name IN (
      'сахар',
      'сухарики',
      'сушки',
      'семечки',
      'масло льняное',
      'виноград',
      'масло оливковое',
      'арбуз',
      'батон',
      'йогурт',
      'сливки',
      'гречка',
      'овсянка',
      'макароны',
      'баранина',
      'апельсины',
      'бублики',
      'хлеб',
      'горох',
      'сметана',
      'рыба копченая',
      'мука',
      'шпроты',
      'сосиски',
      'свинина',
      'рис',
      'масло кунжутное',
      'сгущенка',
      'ананас',
      'говядина',
      'соль',
      'рыба вяленая',
      'масло подсолнечное',
      'яблоки',
      'груши',
      'лепешка',
      'молоко',
      'курица',
      'лаваш',
      'вафли',
      'мандарины'
    ) THEN ROUND(price - price / 110 * 10, 2)
    ELSE ROUND(price - price / 120 * 20, 2)
  END AS price_before_tax
FROM
  products
ORDER BY
  price_before_tax DESC,
  product_id ASC
  
  /*https://redash.public.karpov.courses/queries/63460/source*/