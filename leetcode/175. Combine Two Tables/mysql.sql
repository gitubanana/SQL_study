SELECT firstName, lastName, city, state
    FROM Person AS P
    LEFT OUTER JOIN Address AS A
        ON P.personId = A.personId;
