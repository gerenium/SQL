CREATE TABLE del(del_id INT PRIMARY KEY AUTO_INCREMENT, author_id INT);

INSERT INTO del(author_id)
SELECT author_id
FROM book
GROUP BY author_id
HAVING SUM(amount)>20;
                   
DELETE FROM author
WHERE author_id NOT IN(SELECT author_id
                       FROM del);                  

SELECT * FROM author;

SELECT * FROM book;
