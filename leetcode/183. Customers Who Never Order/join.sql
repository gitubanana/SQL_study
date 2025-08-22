SELECT name AS Customers
FROM Customers
LEFT OUTER JOIN Orders
    ON Customers.id = Orders.customerId
WHERE Orders.customerId IS NULL;
