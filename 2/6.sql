UPDATE book, supply SET book.amount = book.amount + supply.amount,
                        book.price = (book.price + supply.price)/2
WHERE book.author = supply.author AND book.title = supply.title;

SELECT *
FROM book;
