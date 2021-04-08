SELECT name_author, title, count(buy_book.amount) AS Количество
FROM author INNER JOIN book
ON author.author_id = book.author_id 
     LEFT JOIN buy_book
     ON buy_book.book_id = book.book_id
GROUP BY  name_author, title
ORDER BY name_author, title
