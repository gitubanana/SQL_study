WITH RECURSIVE P20(N) AS
(
    SELECT 1
    UNION
    SELECT N + 1
        FROM P20
        WHERE N < 20
)

SELECT REPEAT('* ', N)
    FROM P20;
