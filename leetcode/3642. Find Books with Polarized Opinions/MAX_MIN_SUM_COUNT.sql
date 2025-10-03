WITH POLARIZED_BOOKS AS (
    SELECT book_id,
        MAX(session_rating) - MIN(session_rating) AS rating_spread,
        ROUND(SUM(session_rating >= 4 OR session_rating <= 2) / COUNT(*), 2) AS polarization_score
    FROM reading_sessions
    GROUP BY book_id
    HAVING MAX(session_rating) >= 4
        AND MIN(session_rating) <= 2
        AND COUNT(*) >= 5
        AND polarization_score >= 0.6
)

SELECT A.book_id AS book_id, title, author, genre, pages, rating_spread, polarization_score
FROM POLARIZED_BOOKS AS A
INNER JOIN books AS B
    ON A.book_id = B.book_id
ORDER BY polarization_score DESC, title DESC;
