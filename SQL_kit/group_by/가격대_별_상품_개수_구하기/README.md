### 문제 간단 설명
PRODUCT 테이블에서<br>
만원 단위의 가격대 별로 상품 개수를 출력하는 SQL문을 작성.<br>
이때 칼럼명은 각각 PRICE_GROUP, PRODUCTS로 지정.<br>
결과는 PRICE_GROUP 기준으로 오름차순.<br>

### FLOOR
소수점을 내림한 정수를 반환한다.<br>
- **기본 문법**<br>
    ```sql
    FLOOR(number)
    -- number : 숫자(필수)
    ```
- **예시**<br>
    ```sql
    SELECT FLOOR(25.75);
    -- 25
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### CAST
어떠한 타입을 가진 값을 원하는 타입으로 변환하는 함수다.<br>
- **기본 문법**<br>
    ```sql
    CAST(value AS datatype)
    -- value : 변환할 값(필수)
    -- datatype : 변환할 타입(필수)
    ```
- **주요 datatype**<br>
    | 타입 | 설명 |
    | --- | --- |
    | DATE | “YYYY-MM-DD” 형식인 날짜로 변환. |
    | DATETIME | “YYYY-MM-DD HH:MM:SS” 형식으로 변환 |
    | DECIMAL | 정수로 변환. |
    | CHAR(SIZE) | SIZE 길이 문자열로 변환. (SIZE는 0~255)<br>기본값은 1 |
- **예시**<br>
    ```sql
    SELECT CAST(150 / 4 AS DECIMAL);
    -- 150 / 4를 정수로 38
    -- CAST를 안 하면, 실수로 나온다 37.5000
    ```
    
- **동작 환경**<br>
    MySQL 4.0부터

### 문제를 푼 후 생각
FLOOR를 해준 후, CAST로 정수로 바꿔서 풀었는데 찾아보니 FLOOR에서 정수를 반환해서 CAST를 해줄 필요가 없었다.<br>
CASE WHEN을 이용한 풀이도 있는 것 같다.<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131530)<br>
[MySQL FLOOR() Function](https://www.w3schools.com/sql/func_mysql_floor.asp)<br>
[MySQL CAST() Function](https://www.w3schools.com/sql/func_mysql_cast.asp)<br>
[GROUP BY](https://github.com/gitubanana/SQL_study/tree/main/select/재구매가_일어난_상품과_회원_리스트_구하기#group-by)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
[COUNT](https://github.com/gitubanana/SQL_study/tree/main/sum_max_min#count)<br>
