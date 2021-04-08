CREATE TABLE buy_pay AS
SELECT title, 
       name_author, price, 
       buy_book.amount, 
       price * buy_book.amount AS Стоимость
FROM author JOIN book USING(author_id)
                JOIN buy_book USING(book_id)
WHERE buy_id = 5
GROUP BY title, name_author, price, buy_book.amount
ORDER BY title;

SELECT *
FROM buy_pay
