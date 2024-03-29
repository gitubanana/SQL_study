WITH JOINED_U (USER_ID) AS
(
    SELECT USER_ID
        FROM USER_INFO
        WHERE YEAR(JOINED) = 2021
)

SELECT YEAR(SALES_DATE) AS YEAR,
        MONTH(SALES_DATE) AS MONTH,
        COUNT(DISTINCT JOINED_U.USER_ID) AS PURCHASED_USERS,
        ROUND(COUNT(DISTINCT JOINED_U.USER_ID) / (
            SELECT COUNT(*)
                FROM JOINED_U
        ), 1) AS PURCHASED_RATIO
    FROM JOINED_U
    INNER JOIN ONLINE_SALE
        ON JOINED_U.USER_ID = ONLINE_SALE.USER_ID
    GROUP BY YEAR, MONTH
    ORDER BY YEAR ASC, MONTH ASC;
