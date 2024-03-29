SELECT DISTINCT A.ID, A.NAME, A.HOST_ID
    FROM PLACES AS A
    INNER JOIN PLACES AS B
        ON A.HOST_ID = B.HOST_ID
    GROUP BY NAME
    HAVING COUNT(*) >= 2
    ORDER BY A.ID;
