WITH RECURSIVE ANSWER(HOUR_, COUNT_) AS
(
    SELECT 0, COUNT(*)
        FROM ANIMAL_OUTS
        WHERE HOUR(DATETIME) = 0
    UNION ALL
    SELECT HOUR_ + 1,
        (
            SELECT COUNT(*)
                FROM ANIMAL_OUTS
                WHERE HOUR(DATETIME) = ANSWER.HOUR_ + 1
        )
        FROM ANSWER
        WHERE HOUR_ < 23
)

SELECT *
    FROM ANSWER;
