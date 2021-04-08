SELECT name_genre, 
       SUM(buy_book.amount) AS Количество
FROM genre 
    JOIN book USING (genre_id) 
            JOIN buy_book USING (book_id)
GROUP BY name_genre
HAVING SUM(buy_book.amount) =  (SELECT MAX(sum_amount)
                                FROM (SELECT genre_id, SUM(buy_book.amount) AS sum_amount 
                                      FROM book 
                                          JOIN buy_book USING (book_id) 
                                      GROUP BY genre_id) AS query_max) 
