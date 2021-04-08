UPDATE book 
       JOIN buy_book USING(book_id) SET
            book.amount = book.amount - buy_book.amount
WHERE buy_id = 5;

SELECT *
FROM book
