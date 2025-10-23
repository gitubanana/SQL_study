SELECT transaction_date,
    SUM(IF(amount & 1, amount, 0)) AS odd_sum,
    SUM(IF(amount & 1, 0, amount)) AS even_sum
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;
