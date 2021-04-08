SELECT * FROM book;
INSERT INTO book VALUES(null, 'У Лукоморья', 'Пушкин А.С.', 500.01, 7);
SELECT title AS название,
        author AS автор,
        price AS цена,
        amount AS количество
FROM book
WHERE amount > 2 
ORDER BY amount DESC
