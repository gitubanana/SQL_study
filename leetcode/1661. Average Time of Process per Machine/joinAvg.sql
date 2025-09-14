SELECT E.machine_id,
    ROUND(AVG(E.timestamp - S.timestamp), 3) AS processing_time
FROM Activity AS E
INNER JOIN Activity AS S
    ON E.machine_id = S.machine_id AND E.process_id = S.process_id
WHERE E.activity_type = 'END' AND S.activity_type = 'START'
GROUP BY E.machine_id;
