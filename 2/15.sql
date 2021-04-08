SELECT name_author
FROM book JOIN author
ON book.author_id = author.author_id
        JOIN genre
        ON genre.genre_id = book.genre_id
GROUP BY name_author
HAVING count(DISTINCT name_genre) = 1
