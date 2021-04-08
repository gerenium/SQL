DELETE FROM supply 
WHERE author IN(SELECT author
                FROM book
                WHERE amount >= 10);

SELECT *
FROM supply;
