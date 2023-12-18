### Join
2개 이상의 테이블로부터 관련있는 칼럼에 기반하여 행을 합쳐 일시적인 행들의 집합을 만든다.<br>
- **기본 문법**<br>
    ```sql
    FROM table1
    join_type table2
    [ON (join_condition)]
    -- table1, table2 : 합칠 때 사용되는 테이블 (필수)
    -- join_type : join 타입 (필수)
    -- join_condition : 합칠 기준이 되는 조건문 (선택)
    --                  만약 생략되면 -> 곱집합(Cartesian product)을 구해 행의 길이가 방대해질 수 있다.
    ```
- **join 타입**<br>
    ![w3resource](https://www.w3resource.com/sql/joins/joins-output/sql-joins-all.gif)
- **예시**<br>
    ```sql
    -- Inner Join(교집합)
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
    
    -- 모든 Outer Join의 교집합이 아닌 행들은 합쳐질 것이 없기 때문에,
    --      추가된 값들은 모두 NULL이다.
    
    -- Left Outer Join(교집합 + 왼쪽 테이블의 남은 부분)
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    LEFT OUTER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
    
    -- Left Outer Join(교집합 + 오른쪽 테이블의 남은 부분)
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    RIGHT OUTER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
    
    -- Left Outer Join(교집합 + 왼쪽, 오른쪽 테이블의 남은 부분)
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    FULL OUTER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
    
    ```    

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/133026)<br>
[SQL JOINS](https://www.w3resource.com/sql/joins/sql-joins.php)<br>
[SQL Joins](https://www.w3schools.com/sql/sql_join.asp)<br>
[JOIN | Snowflake Documentation](https://docs.snowflake.com/en/sql-reference/constructs/join)<br>
[곱집합](https://ko.wikipedia.org/wiki/곱집합)<br>
