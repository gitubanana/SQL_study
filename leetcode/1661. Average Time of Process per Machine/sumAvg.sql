WITH MACHINE_PROCESS AS (
    SELECT machine_id,
        SUM(IF(activity_type='start', -timestamp, timestamp)) AS time
    FROM Activity
    GROUP BY machine_id, process_id
)

SELECT machine_id, ROUND(AVG(time), 3) as processing_time
FROM MACHINE_PROCESS
GROUP BY machine_id;
