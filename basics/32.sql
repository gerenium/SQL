DELETE FROM author
USING author 
    JOIN book USING(author_id) 
    JOIN genre g ON book.genre_id = g.genre_id
WHERE name_genre = 'Поэзия';

SELECT *
FROM author;

SELECT *
FROM book;
