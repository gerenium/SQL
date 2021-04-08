SELECT title,
        name_author,
        name_genre,
        price,
        amount

FROM book JOIN genre
ON genre.genre_id = book.genre_id
       JOIN author
       ON author.author_id = book.author_id
WHERE book.genre_id IN(SELECT query_in_1.genre_id
FROM (SELECT genre_id, SUM(amount) AS sum_amount
      FROM book
      GROUP BY genre_id 
      )query_in_1
      INNER JOIN (SELECT genre_id, SUM(amount) AS sum_amount
                  FROM book
                  GROUP BY genre_id
                  ORDER BY sum_amount DESC
                  LIMIT 1
                  ) query_in_2
     ON query_in_1.sum_amount= query_in_2.sum_amount )
ORDER BY title
