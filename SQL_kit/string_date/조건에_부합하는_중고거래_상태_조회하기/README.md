### 문제 간단 설명
USED_GOODS_BOARD 테이블에서<br>
2022년 10월 5일에 등록된 중고거래 게시물의 BOARD_ID, WRITER_ID, TITLE, PRICE, STATUS를 조회하는 SQL문을 작성.<br>
STATUS가 SALE이면 '판매중'<br>
         RESERVED이면 '예약중'<br>
         DONE이면 '거래완료'로 분류해 출력.<br>
결과는 BOARD_ID를 기준으로 내림차순으로 정렬.<br>

### CASE
조건문을 거쳐서 첫 번째로 조건문이 참이 될 때 그 조건문에 해당하는 값을 반환한다.<br>
따라서, 조건문이 참이면 읽기를 중지하고 결과를 반환한다.<br>
조건문이 충족되지 않으면, ELSE에 해당하는 값을 반환한다.<br>
만약에, ELSE가 없다면 NULL을 반환한다.<br>
- **기본 문법**<br>
    ```sql
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        WHEN conditionN THEN resultN
        ELSE result
    END;
    -- ELSE는 생략 가능
    ```
- **예시**<br>
    ```sql
    SELECT OrderID, Quantity,
    CASE
        WHEN Quantity > 30 THEN 'The quantity is greater than 30'
        WHEN Quantity = 30 THEN 'The quantity is 30'
        ELSE 'The quantity is under 30'
    END AS QuantityText
    FROM OrderDetails;
    ```
    
    ```sql
    
    SELECT CustomerName, City, Country
    FROM Customers
    ORDER BY
    (CASE
        WHEN City IS NULL THEN Country
        ELSE City
    END);
    ```

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/164672)<br>
[SQL CASE Expression](https://www.w3schools.com/sql/sql_case.asp)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
