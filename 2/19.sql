insert into book(title, author_id, price, amount) 
select title, author_id, price, amount 
from supply S join author A
on S.author = A.name_author
where not exists 
    (select title from book where title = S.title and author_id = A.author_id);

select * from book;
