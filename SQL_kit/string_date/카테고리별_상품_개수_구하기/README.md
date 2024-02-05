### 문제 간단 설명
PRODUCT 테이블에서<br>
상품 카테고리 코드(PRODUCT_CODE 앞 2자리)별 상품 개수를 출력하는 SQL문 작성<br>
결과는 상품 카테고리 코드를 기준으로 오름차순 정렬.<br>

### SUBSTRING
`MySQL` 함수로,<br>
문자열에서 부분열을 추출해온다.<br>
<aside>
💡 SUBSTR()과 MID() 함수는 SUBSTRING()함수와 똑같다.

</aside>

- **기본 문법**<br>
    ```sql
    SUBSTRING(string, start, length)
    SUBSTRING(string FROM start FOR length)
    /* string: 부분열을 추추할 문자열(필수)
    	 start: 부분열의 시작 위치(필수)
    					양수 -> 앞부터의 위치 (첫번째 문자 위치가 1)
    					음수 -> 뒤부터의 위치 (마지막 문자 위치가 -1)
    	 length: 추출할 부분열의 길이(선택)
    					 생략 시 -> start부터 전체 추출
    */
    ```
- **예시**<br>
    ```sql
    SELECT SUBSTRING("SQL Tutorial", -5, 5) AS ExtractString;
    -- orial
    
    SELECT SUBSTRING("SQL Tutorial" FROM 1 FOR 3) AS ExtractString;
    -- SQL
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131529)<br>
[MySQL SUBSTRING() Function](https://www.w3schools.com/sql/func_mysql_substring.asp)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
[GROUP BY](https://github.com/gitubanana/SQL_study/tree/main/select/재구매가_일어난_상품과_회원_리스트_구하기#group-by)<br>
