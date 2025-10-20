WITH
MAX_RATED_CNT AS (
    SELECT COUNT(*) AS cnt
    FROM MovieRating
    GROUP BY user_id
    ORDER BY cnt DESC
    LIMIT 1
),
MOST_RATED_IDS AS (
    SELECT user_id
    FROM MovieRating
    GROUP BY user_id
    HAVING COUNT(*) = (SELECT cnt FROM MAX_RATED_CNT)
),
MOST_RATED_NAME AS (
    SELECT name
    FROM MOST_RATED_IDS AS A
    INNER JOIN Users AS B
        ON A.user_id = B.user_id
    ORDER BY name
    LIMIT 1
),
MAX_RATING AS (
    SELECT ROUND(AVG(rating), 1) AS rating
    FROM MovieRating
    WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2
    GROUP BY movie_id
    ORDER BY rating DESC
    LIMIT 1
),
MAX_RATING_IDS AS (
    SELECT movie_id
    FROM MovieRating
    WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2
    GROUP BY movie_id
    HAVING ROUND(AVG(rating), 1) = (SELECT rating FROM MAX_RATING)
),
MAX_RATING_NAME AS (
    SELECT title
    FROM MAX_RATING_IDS AS A
    INNER JOIN Movies AS B
        ON A.movie_id = B.movie_id
    ORDER BY title
    LIMIT 1
)

SELECT name AS results
FROM MOST_RATED_NAME
UNION ALL
SELECT title
FROM MAX_RATING_NAME;
