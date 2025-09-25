SELECT employee_id,
    IF(employee_id & 1 = 1 AND name NOT LIKE 'M%', salary, 0) AS bonus
FROM Employees
ORDER BY employee_id;
