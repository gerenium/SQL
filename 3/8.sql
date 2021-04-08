SELECT title, 
       SUM(amount) AS Количество, 
       SUM(price * amount)AS Сумма
FROM (SELECT title, buy_book.amount, book.price
FROM book JOIN buy_book USING(book_id)
                JOIN buy USING(buy_id)
                    JOIN buy_step USING(buy_id)
                        JOIN step USING(step_id)
WHERE  date_step_end IS NOT Null 
      AND name_step = "Оплата"
UNION ALL
SELECT title, 
      buy_archive.amount,
      buy_archive.price
FROM buy_archive JOIN book USING(book_id)) alias
GROUP BY title
ORDER BY Количество DESC
