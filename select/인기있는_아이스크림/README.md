### 문제 간단 설명
FLAVOR를 TOTAL_ORDER 기준으로 내림차순 정렬하고 TOTAL_ORDER가 같다면 SHIPMENT_ID 기준으로 오름차순 정렬하여 조회하는 SQL문 작성. (FROM FIRST_HALF)

## **ORDER BY**

결과를 내림차순/오름차순으로 정렬할 때 사용한다.

- 기본 문법
    
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    ORDER BY column1, column2, ... ASC|DESC;
    -- ASC은 ascending(오름차순)의 약자고,
    -- DESC은 descending(내림차순)의 약자다.
    -- |는 '또는'이라는 뜻이다 -> ASC 혹은 DESC을 사용할 수 있다.
    ```
    
    `ASC` 혹은 `DESC` 을 사용하지 않으면 기본적으로 `ASC` 이 적용된다.
    
- 예시
    
    ```sql
    SELECT * FROM Products
    ORDER BY ProductName DESC;
    -- ProductName을 기준으로 내림차순 정렬
    ```
    
- 여러 열을 기준으로 정렬할 때
    
    정렬 우선순위를 가지게 된다. (왼쪽에서 오른쪽으로 갈수록 우선순위가 낮아짐)
    
    ```sql
    SELECT * FROM Customers
    ORDER BY Country, CustomerName;
    -- Country를 기준으로 오름차순 정렬
    -- 만약에, Country가 같은 값이면
    --   -> CustomerName을 기준으로 오름차순 정렬
    ```


### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/133024)<br>
[SQL ORDER BY Keyword](https://www.w3schools.com/sql/sql_orderby.asp)<br>
