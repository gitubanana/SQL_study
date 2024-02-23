WITH 
    FRONT_END AS
    (
        SELECT CODE
            FROM SKILLCODES
            WHERE CATEGORY = 'Front End'
    ),
    PYTHON AS
    (
        SELECT CODE
            FROM SKILLCODES
            WHERE NAME = 'Python'
    ),
    C_SHARP AS
    (
        SELECT CODE
            FROM SKILLCODES
            WHERE NAME = 'C#'
    )
    

SELECT CASE
            WHEN ID IN (
                SELECT ID
                    FROM DEVELOPERS
                    INNER JOIN FRONT_END
                        ON DEVELOPERS.SKILL_CODE & FRONT_END.CODE
                            and DEVELOPERS.SKILL_CODE & (SELECT CODE FROM PYTHON)
            ) THEN 'A'
            WHEN ID IN (
                SELECT ID
                    FROM DEVELOPERS
                    WHERE DEVELOPERS.SKILL_CODE & (SELECT CODE FROM C_SHARP)
            ) THEN 'B'
            WHEN ID IN(
                SELECT ID
                    FROM DEVELOPERS
                    INNER JOIN FRONT_END
                        ON DEVELOPERS.SKILL_CODE & FRONT_END.CODE
            ) THEN 'C'
        END AS GRADE,
        ID, EMAIL
    FROM DEVELOPERS
    HAVING GRADE IS NOT NULL
    ORDER BY GRADE ASC, ID ASC;
