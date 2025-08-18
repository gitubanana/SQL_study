SELECT A.name AS Employee
    FROM Employee AS A
    INNER JOIN Employee AS B
        ON A.managerId = B.id
    WHERE A.salary > B.salary;
