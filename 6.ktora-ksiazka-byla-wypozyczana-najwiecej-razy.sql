select books.title, count(rentals.book_id)
from books
INNER JOIN rentals on books.id=rentals.book_id
GROUP BY books.title,rentals.book_id
ORDER BY count(rentals.book_id) desc 
FETCH FIRST 1 ROWS WITH TIES;