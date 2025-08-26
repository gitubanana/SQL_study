WITH RED_SALES AS (
    SELECT sales_id
    FROM Orders
    INNER JOIN Company
        ON Company.name = 'RED'
            AND Orders.com_id = Company.com_id
)

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM RED_SALES
);
