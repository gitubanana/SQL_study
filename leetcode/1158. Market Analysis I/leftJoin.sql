WITH BUY_IN_2019 AS (
    SELECT buyer_id, COUNT(*) AS cnt
    FROM Orders
    WHERE YEAR(order_date) = 2019
    GROUP BY buyer_id
)

SELECT A.user_id AS buyer_id, join_date, IFNULL(cnt, 0) AS orders_in_2019
FROM Users AS A
LEFT OUTER JOIN BUY_IN_2019 AS B
    ON A.user_id = B.buyer_id;
