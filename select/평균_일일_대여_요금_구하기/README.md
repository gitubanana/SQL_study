### 문제 간단 설명
CAR_RENTAL_COMPAYN_CAR 테이블에서<br>
CAR_TYPE이 'SUV'인<br>
DAILY_FEE의 평균을 출력하는 SQL문 작성.<br>
소수 첫 번째 자리에서 반올림하고, 칼럼명은 AVERAGE_FEE로 지정.<br>

### AVG
값이 숫자인 칼럼의 평균값을 반환한다.

<aside>
💡 NULL은 무시된다.

</aside>

- **기본 문법**
    
    ```sql
    SELECT AVG(column_name)
    FROM table_name;
    ```
    
- **예시**
    ```sql
    -- Alias와 함께 사용하는 예시.
    -- [] 혹은 ""는 예약어 또는 특수 문자(공백, 하이픈...)을
    --    문자 그대로 사용하고 싶을 때, 묶으면 된다.
    --    (아래 예시는 공백문자)
    SELECT AVG(Price) AS [average price]
    FROM Products;
    
    -- 평균보다 높은 걸 잡고 싶을 때.
    --  서브 쿼리에 AVG 함수를 사용해 구할 수 있다.
    SELECT * FROM Products
    WHERE price > (SELECT AVG(price) FROM Products);
    ```
    

### ROUND
`MySQL`이 제공하는 함수로,

숫자를 특정 소수점 자리까지 반올림한다.

- **기본 문법**
    ```sql
    ROUND(number, decimals)
    -- number(반올림될 숫자) -> 필수
    -- decimals(반올림될 소수점 자리) -> 선택
    --    생략 시 -> 정수로 반올림됨.
    ```
    
- **예시**
    ```sql
    SELECT ProductName, Price, ROUND(Price, 1) AS RoundedPrice
    FROM Products;
    ```
    
- **동작 환경**
    MySQL 4.0부터

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/151136)<br>
[SQL AVG() Function](https://www.w3schools.com/sql/sql_avg.asp)<br>
[MySQL ROUND() Function](https://www.w3schools.com/sql/func_mysql_round.asp)<br>
[Meaning of square brackets [] in MS-SQL table designer?](https://stackoverflow.com/questions/9917196/meaning-of-square-brackets-in-ms-sql-table-designer)<br>
