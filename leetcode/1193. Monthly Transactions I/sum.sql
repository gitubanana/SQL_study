SELECT DATE_FORMAT(trans_date, '%Y-%m') AS `month`, country,
        COUNT(*) AS trans_count,
        SUM(state = 'approved') AS approved_count,
        SUM(amount) AS trans_total_amount,
        SUM((state = 'approved') * amount) AS approved_total_amount
FROM Transactions
GROUP BY `month`, country;
