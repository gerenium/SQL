INSERT INTO buy_book
SELECT NULL, 5, book_id, 2
FROM buy_book 
      JOIN book USING(book_id)
WHERE title = "Лирика";

INSERT INTO buy_book
SELECT NULL, 5, book_id, 1
FROM buy_book 
     JOIN book USING(book_id)
WHERE title = "Белая гвардия";

SELECT * 
FROM buy_book;
