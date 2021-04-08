SELECT book.title AS Название,
        name_author AS Автор,
        book.amount+supply.amount AS Количество
FROM book JOIN author 
USING(author_id), supply
WHERE book.title = supply.title 
      AND name_author = supply.author 
      AND supply.price = book.price
