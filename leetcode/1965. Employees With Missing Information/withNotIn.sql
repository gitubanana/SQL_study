WITH NOT_MISSING AS (
    SELECT A.employee_id AS id
    FROM Employees AS A
    INNER JOIN Salaries AS B
        ON A.employee_id = B.employee_id
)

SELECT employee_id
FROM Employees
WHERE employee_id NOT IN (
    SELECT id
    FROM NOT_MISSING
)

UNION

SELECT employee_id
FROM Salaries
WHERE employee_id NOT IN (
    SELECT id
    FROM NOT_MISSING
)

ORDER BY employee_id;
