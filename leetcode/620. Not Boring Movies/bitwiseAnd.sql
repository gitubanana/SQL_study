SELECT *
FROM Cinema
WHERE (id & 1) = 1
    AND description != 'boring'
ORDER BY rating DESC;
