## 집계함수(Aggregate function)
테이블 혹은 그룹에 집계한 값을 반환한다.<br>
기본적으로 `NULL`값은 집계하지 않는다.<br>
- **기본 문법**<br>
    ```sql
    aggregate_function( [ DISTINCT | ALL ] expression)
    ```
- **모든 값 집계**<br>
    `ALL` 키워드를 쓰면 된다.(생략 가능)
- **중복값 제외**<br>
    `DISTINCT` 키워드를 쓰면 된다.<br>

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

### COUNT
행의 개수를 반환하는 함수다.<br>
- **기본 문법**<br>
    ```sql
    COUNT(expression)
    -- expression : 칼럼명(필수)
    ```
- **칼럼명 명시하기**<br>
    칼럼명을 명시하면 → 해당 칼럼명의 값이 NULL인 행은 제외된다.<br>
    `*` 로 한다면 → 잡혀진 모든 행의 개수.<br>
- **예시**<br>
    ```sql
    -- Products 테이블 행의 개수.
    SELECT COUNT(*)
    FROM Products;
    
    -- Products 테이블의
    --   ProductName 칼럼 행의 개수.(NULL인 행은 제외)
    SELECT COUNT(ProductName)
    FROM Products;
    
    -- Products 테이블의
    --   중복값이 제외된 Price 칼럼 행의 개수 
    SELECT COUNT(DISTINCT Price)
    FROM Products;
    ```

### AVG
값이 숫자인 칼럼의 평균값을 반환한다.<br>
<aside>
💡 NULL은 무시된다.

</aside>

- **기본 문법**<br>
    ```sql
    SELECT AVG(column_name)
    FROM table_name;
    ```
    
- **예시**<br>
    ```sql
    -- Alias와 함께 사용하는 예시.
    SELECT AVG(Price) AS `average price`
    FROM Products;
    
    -- 평균보다 높은 걸 잡고 싶을 때.
    --  서브 쿼리에 AVG 함수를 사용해 구할 수 있다.
    SELECT * FROM Products
    WHERE price > (SELECT AVG(price) FROM Products);
    ```

### SUM
값이 숫자인 칼럼의 총 합계을 반환한다.<br>
<aside>
💡 NULL은 무시된다.

</aside>

- **기본 문법**<br>
    ```sql
    SELECT SUM(column_name)
    FROM table_name;
    ```

- **예시**<br>
    ```sql
    -- Alias와 함께 사용하는 예시.
    SELECT SUM(Price) AS `sum price`
    FROM Products;
    ```

### Reference
[SQL Aggregate function - w3resource](https://www.w3resource.com/sql/aggregate-functions/aggregate-function.php)<br>
[SQL MIN() and MAX() Functions](https://www.w3schools.com/sql/sql_min_max.asp)<br>
[MySQL MIN() and MAX() Functions](https://www.w3schools.com/mysql/mysql_min_max.asp)<br>
[MySQL :: MySQL 8.0 Reference Manual :: 8.2.1.19 LIMIT Query Optimization](https://dev.mysql.com/doc/refman/8.0/en/limit-optimization.html)<br>
[SQL COUNT(), AVG() and SUM() Functions](https://www.w3schools.com/sql/sql_count_avg_sum.asp)<br>
