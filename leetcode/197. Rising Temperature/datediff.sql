SELECT cur.id
FROM Weather AS cur
INNER JOIN Weather AS prev
    ON DATEDIFF(cur.recordDate, prev.recordDate) = 1
WHERE cur.temperature > prev.temperature;
