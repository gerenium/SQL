CREATE TABLE buy_pay AS
SELECT buy_id, SUM(buy_book.amount) as Количество, SUM(price*buy_book.amount) as Итого
FROM book JOIN buy_book USING(book_id)
WHERE buy_book.buy_id = 5
GROUP BY buy_id;

SELECT *
FROM buy_pay
