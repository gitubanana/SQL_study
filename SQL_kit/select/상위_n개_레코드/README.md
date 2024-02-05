### 상위 n 개 레코드 잡기

원하는 수만큼 상위 레코드를 잡는다.<br>
많은 레코드를 잡을 때, 유용하다 → 많은 레코드 말고, 상위 n개의 레코드만 가져오면 되기 때문.<br>

<aside>
💡 SQL마다 문법이 다르다. (대부분 다르다)

</aside>

- **SQL Server / MS Access Syntax**<br>    
    ```sql
    -- 기본 문법
    SELECT TOP number|percent column_name(s)
    FROM table_name
    WHERE condition;
    
    -- 예시
    SELECT TOP 3 *
    FROM Customers;
    ```

- **MySQL**<br>
    ```sql
    -- 기본 문법
    SELECT column_name(s)
    FROM table_name
    WHERE condition
    LIMIT number;
    
    -- 예시
    SELECT * FROM Customers
    LIMIT 3;
    ```

- **Oracle 12**<br>
    ```sql
    -- 기본 문법
    SELECT column_name(s)
    FROM table_name
    ORDER BY column_name(s)
    FETCH FIRST number ROWS ONLY;
    
    -- 예시
    SELECT * FROM Customers
    FETCH FIRST 3 ROWS ONLY;
    ```

- **옛날 Oracle**<br>
    ```sql
    -- 기본 문법
    -- order by 없이 사용할 때
    SELECT column_name(s)
    FROM table_name
    WHERE ROWNUM <= number;
    
    -- order by와 함께 사용할 때
    SELECT *
    FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
    WHERE ROWNUM <= number;
    
    -- 예시
    SELECT * FROM Customers
    FETCH ROWNUM <= 3;
    ```

### 필요 개념
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/59405)<br>
[SQL SELECT TOP, LIMIT, FETCH FIRST ROWS ONLY, ROWNUM](https://www.w3schools.com/sql/sql_top.asp)<br>
