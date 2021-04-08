UPDATE book JOIN author
        USING(author_id), supply 
SET book.price = (book.price*book.amount + supply.price*supply.amount)/(supply.amount+book.amount),
    book.amount = book.amount + supply.amount,
    supply.amount = 0
WHERE book.price <> supply.price 
        AND book.title = supply.title 
        AND supply.author = author.name_author;

select *
from book;

select *
from supply
