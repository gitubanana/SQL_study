### 문제 간단 설명
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서<br>
START_DATE가 2022년 9월에 속하는 대여 기록에 대해서<br>
대여 기간이 30일 이상이면 '장기 대여'<br>
    그렇지 않으면 '단기 대여'로 표시하는 칼럼 RENT_TYPE을 추가<br>
결과는 HISTORY_ID 기준으로 내림차순으로 정렬.<br>

### DATEDIFF
두 DATE 사이의 일수를 반환한다.<br>
- **기본 문법**<br>
    ```sql
    DATEDIFF(date1, date2)
    -- date1, date2 : date1 - date2의 일수를 계산한다.(필수)
    ```
- **예시**<br>
    ```sql
    SELECT DATEDIFF('2023-12-05', '2023-12-01');
    -- 4가 나온다.
    
    SELECT DATEDIFF('2023-12-01', '2023-12-05');
    -- -4가 나온다.
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### 헷갈린 부분
대여 기간이 30일 이상이라는 조건문을 `DATEDIFF(END_DATE, START_DATE) >= 30` 으로 생각해서 계속 틀렸다.<br>
DATEDIFF가 두 날짜 **사이**의 일수를 반환하기 때문에(START_DATE 하루 제외) 30을 29로 해줘야 했다.....<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/151138)<br>
[CASE](https://github.com/gitubanana/SQL_study/tree/main/string_date/%EC%A1%B0%EA%B1%B4%EC%97%90_%EB%B6%80%ED%95%A9%ED%95%98%EB%8A%94_%EC%A4%91%EA%B3%A0%EA%B1%B0%EB%9E%98_%EC%83%81%ED%83%9C_%EC%A1%B0%ED%9A%8C%ED%95%98%EA%B8%B0#case)
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
