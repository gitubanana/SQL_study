SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
    FROM ANIMAL_INS AS INS
    INNER JOIN ANIMAL_OUTS AS OUTS
        ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
    WHERE INS.SEX_UPON_INTAKE LIKE '%Intact%'
        AND (OUTS.SEX_UPON_OUTCOME LIKE '%Spayed%'
            OR OUTS.SEX_UPON_OUTCOME LIKE '%Neutered%')
    ORDER BY INS.ANIMAL_ID;

/*
SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
    FROM ANIMAL_INS AS INS
    INNER JOIN ANIMAL_OUTS AS OUTS
        ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
    WHERE INS.SEX_UPON_INTAKE LIKE '%Intact%'
        AND OUTS.SEX_UPON_OUTCOME <> INS.SEX_UPON_INTAKE
    ORDER BY INS.ANIMAL_ID;
*/
