SELECT HISTORY_ID,
        ROUND((100 -
               CASE
                WHEN DURATION >= 90 THEN
                    (
                        SELECT DISCOUNT_RATE
                            FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                            WHERE DURATION_TYPE = '90일 이상'
                                AND CAR_TYPE = '트럭'
                    )
                WHEN DURATION >= 30 THEN
                    (
                        SELECT DISCOUNT_RATE
                            FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                            WHERE DURATION_TYPE = '30일 이상'
                                AND CAR_TYPE = '트럭'
                    )
                WHEN DURATION >= 7 THEN
                    (
                        SELECT DISCOUNT_RATE
                            FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                            WHERE DURATION_TYPE = '7일 이상'
                                AND CAR_TYPE = '트럭'
                    )
                ELSE 0
            END) / 100 * DURATION * DAILY_FEE) AS FEE
    FROM (
        SELECT HISTORY_ID, CAR_ID,
                DATEDIFF(END_DATE, START_DATE) + 1 AS DURATION
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    ) AS HISTORY
    INNER JOIN (
                SELECT CAR_ID, DAILY_FEE
                    FROM CAR_RENTAL_COMPANY_CAR
                    WHERE CAR_TYPE = '트럭'
                ) AS TRUCK
        ON HISTORY.CAR_ID = TRUCK.CAR_ID
    ORDER BY FEE DESC, HISTORY_ID DESC;
