### 문제 간단 설명
FOOD_FACTORY 테이블에서 강원도에 위치한 FACTORY_ID, FACTORY_NAME, ADDRESS를 조회하는 SQL문을 작성.
결과는 FACTORY_ID를 기준으로 오름차순 정렬

### WHERE

특정 조건을 만족하는 행(record)을 가져올 때 사용한다.

- **기본 문법**
    
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition;
    ```
    
    <aside>
    💡 WHERE는 SELECT문에서만 사용하는 것이 아니라, UPDATE, DELETE 등에서도 사용된다.
    
    </aside>
    
- **예시**
    
    ```sql
    SELECT * FROM Customers
    WHERE CustomerID > 80;
    -- 모든 열(column)을
    -- Cutomers 테이블에서 가져오는데
    -- CutomerID가 80보다 큰 행(row)을 가져온다.
    ```
    
- **여러 연산자**
    
    ```sql
    WHERE CustomerID = 80
    -- 80이랑 같을 때 (equal)
    
    WHERE CustomerID > 80
    -- 80보다 클 때 (greater than)
    
    WHERE CustomerID < 80
    -- 80보다 작을 때 (less than)
    
    WHERE CustomerID >= 80
    -- 80이상일 때 (greater than or equal)
    
    WHERE CustomerID <= 80
    -- 80이하일 때 (less than or equal)
    
    WHERE CustomerID <> 80
    -- 80이랑 같지 않을 때 (not equal)
    -- 몇몇 버전의 SQL에서는 !=로 써질 수도 있다.
    
    WHERE CustomerID BETWEEN 70 AND 80
    -- 70 <= CustomerID <= 80
    
    WHERE City LIKE 's%'
    -- s로 시작하는
    
    WHERE City IN ('Paris','London')
    -- Paris 혹은 London인
    ```
    

### LIKE 연산자

`WHERE`에서 특정 패턴을 찾을 때 사용된다.

- **두 개의 wildcard**
    
    `%` 는 0개 이상의 문자를 뜻한다.
    
    `_` 는 1개의 문자를 뜻한다.
    
- **기본 문법**
    
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE columnN LIKE pattern;
    ```
    
- **예시**
    
    ```sql
    SELECT * FROM Customers
    WHERE city LIKE '%L%';
    -- 모든 열(column)을
    -- Cutomers 테이블에서 가져오는데
    -- city가 L을 포함하고 있는 행을 가져온다.
    ```
    

### IN 연산자

`WHERE`에서 여러 값을 찾을 때 사용된다.

`OR` 여러 개를 줄인 것인다.

- **기본 문법**
    
    ```sql
    SELECT column_name(s)
    FROM table_name
    WHERE column_name IN (value1, value2, ...);
    ```
    
- **예시**
    
    ```sql
    SELECT * FROM Customers
    WHERE Country NOT IN ('Germany', 'France', 'UK');
    -- 모든 열(column)을
    -- Cutomers 테이블에서 가져오는데
    -- Country가 Germany 혹은 France 혹은 UK인 행을 가져온다.
    ```

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131112?language=mysql)<br>
[SQL WHERE Clause](https://www.w3schools.com/sql/sql_where.asp)<br>
[SQL LIKE Operator](https://www.w3schools.com/sql/sql_like.asp)<br>
[SQL IN Operator](https://www.w3schools.com/sql/sql_in.asp)<br>
