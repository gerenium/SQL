SELECT name_author, supply.author
FROM author RIGHT JOIN supply
     on author.name_author = supply.author
