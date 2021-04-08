SELECT  buy.buy_id, title, price, buy_book.amount
FROM book INNER JOIN  buy_book
ON book.book_id = buy_book.book_id
    INNER JOIN buy
    ON buy_book.buy_id = buy.buy_id
         INNER JOIN client
         ON buy.client_id = client.client_id
WHERE client.name_client = 'Баранов Павел'
ORDER BY buy.buy_id
