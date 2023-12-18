### UNION
2개 이상의 `SELECT`문의 결과를 합칠 때 사용한다.<br>
기본적으로 `DISTINCT` 가 붙어 중복된 값은 제외한다. (모든 값을 구하고 싶다면 `ALL`)<br>
- **조건**<br>
    모든 `SELECT`문은<br>
        칼럼 개수와 칼럼 순서가 똑같해야 하고<br>
        각 순서에 해당하는 칼럼의 타입이 같거나 호환가능한 타입이어야 한다.<br>
- **기본 문법**<br>
    ```sql
    SELECT <column_list>t [INTO ]
    [FROM ]  	[WHERE ]
    [GROUP BY ]  	[HAVING ]
    [UNION [ALL]
    SELECT <column_list>
    [FROM ]  	[WHERE ]
    [GROUP BY ]  	[HAVING ]...]
    [ORDER BY ]
    ```
- **예시**<br>
    ```sql
    SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE,
            PRODUCT_ID, USER_ID, SALES_AMOUNT
        FROM ONLINE_SALE
        WHERE YEAR(SALES_DATE) = 2022
            AND MONTH(SALES_DATE) = 3
    UNION
    SELECT DATE_FORMAT(SALES_DATE, "%Y-%m-%d") AS SALES_DATE,
            PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
        FROM OFFLINE_SALE
        WHERE YEAR(SALES_DATE) = 2022
            AND MONTH(SALES_DATE) = 3
    ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;
    ```
    
### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131537)<br>
[Sql Union - w3resource](https://www.w3resource.com/sql/sql-union.php)<br>
[SQL UNION Operator](https://www.w3schools.com/sql/sql_union.asp)<br>