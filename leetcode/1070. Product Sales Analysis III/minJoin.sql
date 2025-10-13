WITH MIN_YEARS AS (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)

SELECT A.product_id, B.first_year, quantity, price
FROM Sales AS A
INNER JOIN MIN_YEARS AS B
    ON A.product_id = B.product_id AND A.year = B.first_year;
