### 문제 간단 설명

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
`HAVING` → 그룹별(만약에 `GROUP BY` 가 없으면, 현재 잡힌 모든 행이 그룹이 된다.) 필요한 데이터<br>
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

### 그 외
[COUNT](https://github.com/gitubanana/SQL_study/tree/main/select/%EC%A1%B0%EA%B1%B4%EC%97%90_%EB%A7%9E%EB%8A%94_%ED%9A%8C%EC%9B%90%EC%88%98_%EA%B5%AC%ED%95%98%EA%B8%B0#count)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131536)<br>
[SQL GROUP BY Statement](https://www.w3schools.com/sql/sql_groupby.asp)<br>
[SQL HAVING Clause](https://www.w3schools.com/sql/sql_having.asp)<br>
[Use of HAVING without GROUP BY in SQL queries](https://dba.stackexchange.com/questions/57445/use-of-having-without-group-by-in-sql-queries)<br>
