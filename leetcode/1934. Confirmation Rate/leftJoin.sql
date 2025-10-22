WITH CONFIRMED_RATE AS (
    SELECT user_id, ROUND(SUM(action = 'confirmed') / COUNT(*), 2) AS rate
    FROM Confirmations
    GROUP BY user_id
)

SELECT A.user_id, IFNULL(B.rate, 0.00) AS confirmation_rate
FROM Signups AS A
LEFT OUTER JOIN CONFIRMED_RATE AS B
    ON A.user_id = B.user_id;
