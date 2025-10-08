WITH PRIME_MANAGERS AS (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)

SELECT name
FROM PRIME_MANAGERS AS A
INNER JOIN Employee AS B
    ON A.managerId = B.id;
