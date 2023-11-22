### 문제 간단 설명
FOOD_PRODUCT 테이블에서<br>
PRICE가 제일 비싼 PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE를 조회하는 SQL문 작성.<br>

### MAX/MIN
각각 칼럼의 최댓값/최솟값을 반환하는 함수다.<br>
- **기본 문법**
    ```sql
    -- MAX
    SELECT MAX(column_name)
    FROM table_name
    WHERE condition;

    -- MIN
    SELECT MIN(column_name)
    FROM table_name
    WHERE condition;
    ```
- **예시**
    ```sql
    SELECT MIN(Price) AS SmallestPrice
    FROM Products;
    ```

### 문제를 푼 방법
1. `ORDER BY PRICE DESC`로 가장 큰 PRICE를 가진 행이 맨 위로 오게 하고, `LIMIT 1` 로 제일 큰 행만 출력.<br>
2. 서브 쿼리를 이용해 `WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT)` 가장 큰 PRICE랑 같은 행만 출력.<br>

정확하게는 모르겠지만,<br>
1번 방법이 ORDER BY와 LIMIT이 같이 있게 때문에, 다 정렬하지 않고 제일 큰 것만 찾아 바로 출력하는 최적화 과정이 있어<br>
→ MAX값을 구하고 또 비교를 하는 2번 방법보다 빠르지 않을까 싶다.<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131115)<br>
[SQL MIN() and MAX() Functions](https://www.w3schools.com/sql/sql_min_max.asp)<br>
[MySQL MIN() and MAX() Functions](https://www.w3schools.com/mysql/mysql_min_max.asp)<br>
[MySQL :: MySQL 8.0 Reference Manual :: 8.2.1.19 LIMIT Query Optimization](https://dev.mysql.com/doc/refman/8.0/en/limit-optimization.html)<br>
[상위 n개 레코드 잡기](https://github.com/gitubanana/SQL_study/tree/main/select/%EC%83%81%EC%9C%84_n%EA%B0%9C_%EB%A0%88%EC%BD%94%EB%93%9C#%EC%83%81%EC%9C%84-n-%EA%B0%9C-%EB%A0%88%EC%BD%94%EB%93%9C-%EC%9E%A1%EA%B8%B0)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
