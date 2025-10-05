SELECT DISTINCT A.num AS ConsecutiveNums
FROM Logs AS A
INNER JOIN Logs AS B
    ON B.id = A.id+1
INNER JOIN Logs AS C
    ON C.id = A.id+2
WHERE A.num = B.num AND B.num = C.num;
