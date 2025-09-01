WITH ONLY_SOLD_IN_FIRST_QUARTER AS (
    SELECT product_id
    FROM Sales
    GROUP BY product_id
    HAVING MIN(sale_date) >= '2019-01-01'
        AND MAX(sale_date) <= '2019-03-31'
)

SELECT A.product_id, B.product_name
FROM ONLY_SOLD_IN_FIRST_QUARTER AS A
INNER JOIN Product AS B
    ON A.product_id = B.product_id;
