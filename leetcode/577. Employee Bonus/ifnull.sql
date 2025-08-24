SELECT E.name, B.bonus
FROM Employee AS E
LEFT OUTER JOIN Bonus AS B
    ON E.empId = B.empId
WHERE IFNULL(B.bonus, 0) < 1000;
