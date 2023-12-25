### CONCAT
두 개 이상의 expression을 합쳐서 반환한다.<br>
<aside>
💡 expression 중에 하나라도 NULL이 있다면, NULL을 반환한다.

</aside>

- **기본 문법**<br>
    ```sql
    CONCAT(expression1, expression2, expression3,...)
    
    -- expression1, expression2, expression3, etc. (필수)
    ```    
- **예시**<br>
    ```sql
    SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address
    FROM Customers;
    
    SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString;
    -- SQL Tutorial is fun!
    
    SELECT CONCAT("SQL ", NULL, "is ", "fun!") AS ConcatenatedString;
    -- NULL
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/164671)<br>
[MySQL CONCAT() Function](https://www.w3schools.com/sql/func_mysql_concat.asp)<br>
[JOIN](https://github.com/gitubanana/SQL_study/tree/main/group_by/%EC%84%B1%EB%B6%84%EC%9C%BC%EB%A1%9C_%EA%B5%AC%EB%B6%84%EC%9C%BC%EB%A1%9C_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC_%EC%B4%9D%EC%A3%BC%EB%AC%B8%EB%9F%89#join)<br>
