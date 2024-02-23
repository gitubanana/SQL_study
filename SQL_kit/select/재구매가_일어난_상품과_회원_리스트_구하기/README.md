### 문제 간단 설명
ONLINE_SALE 테이블에서<br>
동일한 회원이 동일한 상품을 재구매한 데이터를 구하여,<br>
USER_ID와 PRODUCT_ID를 출력하는 SQL문을 작성<br>
결과는 PRODUCT_ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 USER_ID를 기준으로 내림차순 정렬<br>

### GROUP BY
같은 값을 가지고 있는 행을 묶는다.<br>
주로, 집계 합수(COUNT(), MAX(), MIN(), SUM(), AVG(), …)와 많이 쓰인다.<br>
- **기본 문법**<br>
    ```sql
    SELECT column_name(s)
    FROM table_name
    GROUP BY column_name(s);
    ```
- **예시**<br>
    ```sql
    SELECT COUNT(CustomerID), Country
    FROM Customers
    GROUP BY Country
    ORDER BY COUNT(CustomerID) DESC;
    -- Cutomers 테이블에서
    -- Country가 같은 행을 묶어서
    -- CustomerID의 개수와 Country를 가져온다.
    -- CustomerID 개수 내림차순으로
    ```

### HAVING
집계 함수를 `WHERE`에서 사용할 수 없기 때문에 만들어졌다.<br>
`WHERE` → 행별 필요한 데이터<br>
`HAVING` → 그룹별 필요한 데이터.<br>
    만약에 `GROUP BY`가 없고 집계 함수를 사용한다면, 현재 잡힌 모든 행이 한 그룹이 된다.<br>
    집계 함수를 사용하지 않을 때는, 칼럼의 alias를 사용해 코드를 깔끔하게 짤 수도 있다. (where에서는 alias를 사용하지 못하기 때문에)<br>
- **기본 문법**<br>
    ```sql
    SELECT column_name(s)
    FROM table_name
    HAVING condition;
    ```
- **예시**<br>
    ```sql
    SELECT COUNT(CustomerID), Country
    FROM Customers
    GROUP BY Country
    HAVING COUNT(CustomerID) > 5
    ORDER BY COUNT(CustomerID) DESC;
    -- Cutomers 테이블에서
    -- Country가 같은 행을 묶어서
    -- CustomerID의 개수가 5보다 큰
    -- CustomerID의 개수와 Country를 가져온다.
    -- CustomerID 개수 내림차순으로
    ```
    ```sql
    SELECT ID, SUM(PRICE)
        FROM SAMPLE
        HAVING ID IS NOT NULL;
    -- ID와 PRICE의 합이 한 행으로 출력된다.
    -- GROUP BY가 없고 집계함수를 사용하는데 -> HAVING을 사용했기 때문에, SAMPLE 테이블의 모든 행이 한 그룹이 되고, 거기서의 합과 가장 상단에 있는 ID를 가져온다.
    ```
    ```sql
    SELECT ID, DATE_FORMAT(MADE_DATE, '%Y-%m-%d') AS DATE
        FROM SAMPLE
        HAVING DATE >= '2024-02-24';
    -- ID와 DATE가 여러 행으로 출력된다.
    -- GROUP BY가 없지만, 집계함수도 사용하지 않았기 때문에 -> ALIAS를 사용해 코드를 깔끔하게 짤 수 있다.
    -- WHERE에서는 ALIAS 사용이 안 되기 때문에, 저 함수를 그대로 사용해 코드를 짜야 한다.
    ```

### 그 외
[COUNT](https://github.com/gitubanana/SQL_study/tree/main/sum_max_min#count)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131536)<br>
[SQL GROUP BY Statement](https://www.w3schools.com/sql/sql_groupby.asp)<br>
[SQL HAVING Clause](https://www.w3schools.com/sql/sql_having.asp)<br>
[Use of HAVING without GROUP BY in SQL queries](https://dba.stackexchange.com/questions/57445/use-of-having-without-group-by-in-sql-queries)<br>
