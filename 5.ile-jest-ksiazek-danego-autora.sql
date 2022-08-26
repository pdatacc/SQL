select authors.name, count(books.id)
from books
INNER JOIN authors ON books.author_id=authors.id
where authors.id='cl6w2rsqs31513zbnkqxqghht'
GROUP BY authors.name;


select authors.name, count(books.id)
from books
INNER JOIN authors ON books.author_id=authors.id
GROUP BY authors.name 
ORDER BY count(books.id) DESC

