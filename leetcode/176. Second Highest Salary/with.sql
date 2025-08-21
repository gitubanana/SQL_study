WITH TOP_2_SALARIES AS
(
    SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 2
)

SELECT salary AS SecondHighestSalary
    FROM TOP_2_SALARIES
    WHERE salary NOT IN (
        SELECT MAX(salary)
            FROM TOP_2_SALARIES
    )
UNION
SELECT NULL AS SecondHighestSalary
    FROM TOP_2_SALARIES
    HAVING COUNT(*) <> 2;
