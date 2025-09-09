SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits AS A
LEFT OUTER JOIN Transactions AS B
    ON A.visit_id = B.visit_id
WHERE B.visit_id IS NULL
GROUP BY customer_id;
