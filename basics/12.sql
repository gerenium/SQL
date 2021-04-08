SELECT author,
        title,
        price
FROM book
WHERE price<=(SELECT round(AVG(price),2) AS price
              FROM book)
ORDER BY price DESC
