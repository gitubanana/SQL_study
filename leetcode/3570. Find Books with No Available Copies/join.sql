WITH BORROWED_COUNT AS (
    SELECT book_id, COUNT(*) AS current_borrowers
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
)

SELECT B.book_id, title, author, genre, publication_year, current_borrowers
FROM BORROWED_COUNT AS A
INNER JOIN library_books AS B
    ON A.book_id = B.book_id AND A.current_borrowers = B.total_copies
ORDER BY current_borrowers DESC, title ASC;
