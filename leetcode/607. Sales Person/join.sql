WITH RED_COMPANY AS (
    SELECT com_id
    FROM Company
    WHERE name = 'RED'
)

SELECT S.name
FROM RED_COMPANY AS R
INNER JOIN Orders AS O
    ON R.com_id = O.com_id
RIGHT OUTER JOIN SalesPerson AS S
    ON O.sales_id = S.sales_id
WHERE O.sales_id IS NULL;
