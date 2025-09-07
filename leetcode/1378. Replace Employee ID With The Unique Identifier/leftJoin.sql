SELECT unique_id, name
FROM Employees AS A
LEFT OUTER JOIN EmployeeUNI AS B
    ON A.id = B.id;
