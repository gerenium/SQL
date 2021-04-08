DELETE 
FROM genre
WHERE genre_id IN(SELECT genre_id
                  FROM book
                  GROUP BY genre_id
                  HAVING count(title)<3);

SELECT *
FROM book;

SELECT *
FROM genre
