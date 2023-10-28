SELECT ANIMAL_ID, NAME
    FROM ANIMAL_INS
    WHERE INTAKE_CONDITION <> 'Aged'
    ORDER BY ANIMAL_ID;

-- Not Equal의 뜻을 가진
--  <>는 일부 SQL에서 !=으로도 사용할 수 있다.
