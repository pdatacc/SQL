select books.title, count(rentals.book_id)
from books
INNER JOIN rentals on books.id=rentals.book_id
GROUP BY books.title,rentals.book_id
having count(rentals.book_id) >= 2
ORDER BY count(rentals.book_id) desc