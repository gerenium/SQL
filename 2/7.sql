CREATE TABLE ordering AS 
SELECT author, 
        title,
        ROUND((SELECT AVG(amount) FROM book),0) AS amount
FROM book
WHERE amount < (SELECT AVG(amount)
                FROM book);
                
                
SELECT *
FROM ordering;              
