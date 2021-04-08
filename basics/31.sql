insert into author (name_author)
SELECT supply.author
FROM author  RIGHT JOIN supply
        ON supply.author = author.name_author
WHERE name_author IS null ;

select* from author
