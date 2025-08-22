WITH SAVE_ID AS (
    SELECT MIN(id) saveId
    FROM Person
    GROUP BY email
)

DELETE
FROM Person AS P
WHERE id NOT IN (
    SELECT saveId
    FROM SAVE_ID
);
