WITH BAL AS (
    SELECT account, SUM(amount) AS balance
    FROM Transactions
    GROUP BY account
    HAVING balance > 10000
)

SELECT name, balance
FROM BAL AS A
INNER JOIN Users AS B
    ON A.account = B.account;
