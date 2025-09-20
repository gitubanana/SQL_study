WITH REPORT AS (
    SELECT reports_to, COUNT(*) AS reports_count, ROUND(AVG(age)) AS average_age
    FROM Employees
    GROUP BY reports_to
)

SELECT employee_id, name, reports_count, average_age
FROM REPORT AS A
INNER JOIN Employees AS B
    ON A.reports_to = B.employee_id
ORDER BY employee_id; 
