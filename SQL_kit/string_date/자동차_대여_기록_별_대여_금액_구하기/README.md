### WITH (Common Table Expressions)
- **CTE (Common Table Expressions)**<br>
    이름이 지정된 일시적인 결과 집합이다.<br>
    With문 안에 존재하고, 나중에 여러 번 참조될 수 있다.<br>
- **기본 문법**<br>
    ```sql
    WITH [RECURSIVE]
    	cte_name [(col_name [, col_name] ...)] AS (subquery)
    	[, cte_name [(col_name [, col_name] ...)] AS (subquery)] ...
    ```
- **예시 + 추가 문법**<br>
    - CTE 칼럼명 정하기<br>
        칼럼명 개수는 실제 결과 집합의 칼럼 개수랑 똑같아야 한다.<br>
        아니면, 칼럼명은 첫 번째 SELECT문에 AS로 만들어져야 한다.<br>
        ```sql
        -- WITH 문에서 칼럼명 정하기 --
        WITH cte (col1, col2) AS
        (
          SELECT 1, 2
          UNION ALL
          SELECT 3, 4
        )
        
        SELECT col1, col2
        	FROM cte;
        
        -- 첫 번째 SELECT문에서 AS로 칼럼명 만들기 --
        WITH cte AS
        (
          SELECT 1 AS col1, 2 AS col2
          UNION ALL
          SELECT 3, 4
        )
        
        SELECT col1, col2
        	FROM cte;
        ```
    - WITH 사용할 수 있는 곳<br>
        ```sql
        -- SELECT, UPDATE, DELETE 앞에 사용 --
        WITH ... SELECT ...
        WITH ... UPDATE ...
        WITH ... DELETE ...
        
        -- subquery 앞에 사용 (어라라, Subquery와 CTE를 합친... 제일 강력한 게 아닌가?) --
        SELECT ... WHERE id IN (WITH ... SELECT ...) ...
        SELECT * FROM (WITH ... SELECT ...) AS dt ...
        
        -- SELECT 문 앞에서 사용 --
        INSERT ... WITH ... SELECT ...
        REPLACE ... WITH ... SELECT ...
        CREATE TABLE ... WITH ... SELECT ...
        CREATE VIEW ... WITH ... SELECT ...
        DECLARE CURSOR ... WITH ... SELECT ...
        EXPLAIN ... WITH ... SELECT ...
        ```
        
    - 🔥 재귀적으로 사용 🔥<br>
        자기 자신을 참조하는 CTE는 재귀적인 CTE다.<br>
        재귀적으로 사용할 때는 `WITH RECURSIVE`를 사용해야 한다.<br>
        ```sql
        -- 재귀 CTE는 UNION을 기준으로 두 부분으로 나눠진다. --
        SELECT ...      -- return initial row set
        UNION ALL
        SELECT ...      -- return additional row sets
        
        -- 재귀 예시 --
        WITH RECURSIVE cte (n) AS
        (
          SELECT 1
          UNION ALL
          SELECT n + 1
        		FROM cte
        		WHERE n < 5
        )
        
        SELECT *
        	FROM cte;
        
        -- 결과값 --
        /*
        +------+
        | n    |
        +------+
        |    1 |
        |    2 |
        |    3 |
        |    4 |
        |    5 |
        +------+
        */
        
        -- CTE 재귀 깊이 정하기 --
        --   기본 최대 깊이는 1000
        SET SESSION cte_max_recursion_depth = 10;      -- permit only shallow recursion
        SET SESSION cte_max_recursion_depth = 1000000; -- permit deeper recursion
        
        -- Fibonacci 수열을 CTE로 만들기 --
        WITH RECURSIVE fibonacci (n, fib_n, next_fib_n) AS
        (
        	SELECT 1, 0, 1
        	UNION ALL
        	SELECT n + 1, next_fib_n, fib_n + next_fib_n
        		FROM fibonacci
        		WHERE n < 10
        )
        
        SELECT *
        	FROM fibonacci
        
        /*
        +------+-------+------------+
        | n    | fib_n | next_fib_n |
        +------+-------+------------+
        |    1 |     0 |          1 |
        |    2 |     1 |          1 |
        |    3 |     1 |          2 |
        |    4 |     2 |          3 |
        |    5 |     3 |          5 |
        |    6 |     5 |          8 |
        |    7 |     8 |         13 |
        |    8 |    13 |         21 |
        |    9 |    21 |         34 |
        |   10 |    34 |         55 |
        +------+-------+------------+
        */
        ```
- **동작 환경**<br>
    MySQL 8.0부터

### **CTE vs Subquery**
- **차이점**<br>
    CTE는 쿼리 앞에 정의되고, Subquery는 inline으로 정의된다.<br>
    CTE는 항상 이름이 있어야 한다. (PostgreSQL만 Subquery가 이름이 있어야 한다.)<br>
    CTE는 재귀적으로 사용될 수 있다.<br>
    CTE는 Subquery보다 복잡한 쿼리일 때 가독성이 좋다.<br>
    CTE는 여러 번 참조될 수 있지만, Subquery는 한 번만 참조될 수 있다.<br>
    Subquery는 WHERE 절에서 IN 또는 EXISTS로 사용할 수 있지만, CTE는 안 된다.<br>
    Subquery는 다른 테이블의 값을 수정하기 위해 한 테이블에서 값을 가져올 수 있다.<br>
- **Subqueries만 할 수 있는 거**<br>
    - WHERE절에 사용<br>
        ```sql
        SELECT account_no, tran_code, amount
        	FROM daily_trans
        	WHERE tran_code IN (
        		SELECT tran_code
        		   FROM transaction_types
        		   WHERE debit_credit = 1
        	);
        ```
        
    - UPDATE에 사용
        
        ```sql
        UPDATE customer
        	SET support_person = (
        		SELECT new_employee
        	   FROM reassignments
        	   WHERE old_employee = customer.support_person
        	);
        ```
        
    - Column처럼 사용
        
        ```sql
        SELECT DISTINCT contest_id,
          (
            SELECT COUNT(length)
        	    FROM jump AS inside_jump
        	    WHERE inside_jump.contest_id = outside_jump.contest_id
        	      AND inside_jump.length > 600
          ) AS longer_jumps,
        	FROM jump AS outside_jump;
        ```
        
- **CTE만 할 수 있는 거**<br>
    - 재사용성<br>
        CTE는 Subquery와 다르게 여러 번 참조될 수 있기 때문에 성능 측면에서 CTE가 Subquery보다 좋을 수 있다.<br>
        (하지만, SQL 엔진이 어떻게 최적화할지에 따라 성능이 비슷할 수도 있다.)<br>
    - 가독성 높이기<br>
        ```sql
        WITH cte (col1, col2) AS
        (
          SELECT 1, 2
          UNION ALL
          SELECT 3, 4
        )
        
        SELECT col1, col2
        	FROM cte;
        ```
    - 재귀적으로<br>
        ```sql
        WITH RECURSIVE fibonacci (n, fib_n, next_fib_n) AS
        (
        	SELECT 1, 0, 1
        	UNION ALL
        	SELECT n + 1, next_fib_n, fib_n + next_fib_n
        		FROM fibonacci
        		WHERE n < 10
        )
        
        SELECT *
        	FROM fibonacci
        ```

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/151141)<br>
[MySQL :: MySQL 8.0: Improved performance with CTE](https://dev.mysql.com/blog-archive/mysql-8-0-improved-performance-with-cte/)<br>
[MySQL :: MySQL 8.0 Reference Manual :: 13.2.20 WITH (Common Table Expressions)](https://dev.mysql.com/doc/refman/8.0/en/with.html)<br>
[CTE vs. Subquery in SQL: What’s the Difference?](https://learnsql.com/blog/cte-vs-subquery/)<br>
[Subquery vs. CTE: A SQL Primer](https://learnsql.com/blog/sql-subquery-cte-difference/)<br>
[SQL | WITH clause - GeeksforGeeks](https://www.geeksforgeeks.org/sql-with-clause/)<br>
[How do you use the "WITH" clause in MySQL?](https://stackoverflow.com/questions/1382573/how-do-you-use-the-with-clause-in-mysql)<br>
[Is there a performance difference between CTE , Sub-Query, Temporary Table or Table Variable?](https://stackoverflow.com/questions/11169550/is-there-a-performance-difference-between-cte-sub-query-temporary-table-or-ta)<br>
