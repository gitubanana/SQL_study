SELECT employee_id,
    IF(
        COUNT(*)=1,
        department_id,
        MAX(IF(primary_flag='Y', department_id, 0))
    ) AS department_id
FROM Employee
GROUP BY employee_id;
