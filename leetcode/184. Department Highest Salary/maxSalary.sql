WITH MAX_SALARY AS (
    SELECT departmentId, MAX(salary) AS MAX_SALARY
    FROM Employee
    GROUP BY departmentId
)

SELECT C.name AS Department,
    B.name AS Employee,
    A.MAX_SALARY AS salary
FROM MAX_SALARY AS A
INNER JOIN Employee AS B
    ON A.departmentId = B.departmentId AND A.MAX_SALARY = B.salary
INNER JOIN Department AS C
    ON B.departmentId = C.id;
