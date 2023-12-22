SELECT APNT_NO, PT_NAME, A.PT_NO, A.MCDP_CD, DR_NAME, APNT_YMD
    FROM APPOINTMENT AS A
    INNER JOIN DOCTOR AS D
        ON A.MDDR_ID = D.DR_ID
    INNER JOIN PATIENT AS P
        ON A.PT_NO = P.PT_NO
    WHERE YEAR(APNT_YMD) = 2022
        AND MONTH(APNT_YMD) = 4
        AND DAY(APNT_YMD) = 13
        AND APNT_CNCL_YN = 'N'
        AND A.MCDP_CD = 'CS'
    ORDER BY APNT_YMD;
