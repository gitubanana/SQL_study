WITH TARGET_PRODUCTS AS (
    SELECT product_id, SUM(unit) AS unit_
    FROM Orders
    WHERE YEAR(order_date) = 2020
        AND MONTH(order_date) = 2
    GROUP BY product_id
    HAVING unit_ >= 100
)

SELECT product_name, unit_ AS unit
FROM TARGET_PRODUCTS AS A
INNER JOIN Products AS B
    ON A.product_id = B.product_id;
