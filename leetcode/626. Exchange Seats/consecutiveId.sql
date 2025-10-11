SELECT A.id, IFNULL(B.student, A.student) AS student
FROM Seat AS A
LEFT OUTER JOIN Seat AS B
    ON IF(A.id & 1, A.id+1 = B.id, A.id-1 = B.id)
ORDER BY A.id ASC;
