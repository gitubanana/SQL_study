WITH
PRODUCT_IDS AS (
    SELECT DISTINCT product_id
    FROM Products
),
DATES AS (
    SELECT product_id, MAX(change_date) AS latest
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
),
CHANGES AS (
    SELECT A.product_id, new_price
    FROM Products AS A
    INNER JOIN DATES AS B
        ON A.product_id = B.product_id AND A.change_date = B.latest
)

SELECT A.product_id, IFNULL(B.new_price, 10) AS price
FROM PRODUCT_IDS AS A
LEFT OUTER JOIN CHANGES AS B
    ON A.product_id = B.product_id;

