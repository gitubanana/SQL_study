### 문제 간단 설명
PATIENT 테이블에서<br>
AGE가 12이하이고 GEND_CD가 'W'인
PT_NAME, PT_NO, GEND_CD, AGE, TLNO를 조회하는 SQL문 작성.<br>
TNLO가 없는 경우에는 'NONE'으로 출력.<br>
AGE를 기준으로 내림차순 정렬, 같다면 PT_NAME으로 오름차순 정렬.<br>

### IFNULL
`MYSQL`이 제공하는 함수로,<br>
만약에 값이 NULL이면 → 대신 반환할 값을 설정할 수 있다.<br>
- **기본 문법**<br>
    ```sql
    IFNULL(expression, alt_value)
    -- expression이 NULL이면 -> alt_value 반환
    -- 아니면 -> expressino 반환
    ```

- **예시**<br>
    ```sql
    SELECT ProductName, IFNULL(UnitsOnOrder, 0)
    FROM Products;
    -- Products 테이블에서
    -- ProductName과 UnitsOnOrder 열을 가져오는데
    -- UnitsOnOrder값이 NULL이면 0으로 출력
    ```

- **동작 환경**<br>
    MySQL 4.0부터

### Alias
테이블 혹은 칼럼에 일시적인 이름을 줄 때 사용된다<br>
주로, 칼럼을 읽기 좋게 만들 때 사용된다.<br>

- **사용할 수 있는 범위**<br>
    별칭이 만들어진 질의에서만 존재한다.

- **기본 문법**<br>
    ```sql
    -- 칼럼에 사용할 때
    SELECT column_name AS alias_name
    FROM table_name;
    
    -- 테이블에 사용할 때
    SELECT column_name(s)
    FROM table_name AS alias_name;
    ```
    
- **예시**<br>
    ```sql
    -- 칼럼에 사용할 때
    SELECT CustomerID AS ID, CustomerName AS Customer
    FROM Customers;
    
    -- 테이블에 사용할 때
    SELECT o.OrderID, o.OrderDate, c.CustomerName
    FROM Customers AS c, Orders AS o
    WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
    ```

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/132201)<br>
[MySQL IFNULL() Function](https://www.w3schools.com/sql/func_mysql_ifnull.asp)<br>
[SQL Aliases](https://www.w3schools.com/sql/sql_alias.asp)<br>
