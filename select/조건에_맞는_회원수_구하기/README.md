### 문제 간단 설명
USER_INFO 테이블에서<br>
2021년에 가입한 회원 중 AGE가 20세 이상 29세 이하인<br>
회원이 몇 명인지 출력하는 SQL문을 작성.<br>

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
- **중복값 제외하기**<br>
    `DISTINCT` 키워드를 사용하면, 해당 칼럼명의 같은 값을 가지고 있는 행은 하나로 세어진다.
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

### 그 외
[Alias](https://github.com/gitubanana/SQL_study/tree/main/select/12%EC%84%B8_%EC%9D%B4%ED%95%98%EC%9D%B8_%EC%97%AC%EC%9E%90_%ED%99%98%EC%9E%90_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0#alias)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131535)<br>
[SQL COUNT() Function](https://www.w3schools.com/sql/sql_count.asp)<br>
[MySQL COUNT() Function](https://www.w3schools.com/sql/func_mysql_count.asp)<br>
