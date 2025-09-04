SELECT A.product_id, IFNULL(ROUND(SUM(price * units) / SUM(units), 2), 0) AS average_price
FROM Prices AS A
LEFT OUTER JOIN UnitsSold AS B 
    ON A.product_id = B.product_id 
        AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;
