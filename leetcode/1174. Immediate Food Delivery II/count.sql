WITH EARLIEST AS (
    SELECT customer_id, MIN(order_date) AS earliest
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(COUNT(*) * 100.0 / (SELECT COUNT(DISTINCT customer_id) FROM Delivery), 2) AS immediate_percentage
FROM Delivery AS A
INNER JOIN EARLIEST AS B
    ON A.customer_id = B.customer_id AND A.order_date = B.earliest
WHERE A.order_date = A.customer_pref_delivery_date
