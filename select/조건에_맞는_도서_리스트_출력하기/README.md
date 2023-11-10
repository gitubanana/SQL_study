### 문제 간단 설명
BOOK 테이블에서<br>
2021년에 출판된 '인문' 카테고리에 속하는 도서리스트를 찾아서<br>
BOOK_ID와 PUBLISHED_DATE를 출력하는 SQL문 작성.<br>
결과는 PUBLISHED_DATE 기준으로 오름차순 정렬.<br>
데이트 포맷은 -> ex) 2021-03-15<br>

### DATE_FORMAT
`MySQL`함수로,<br>
원하는 형식으로 날짜를 표현한다.<br>
- **기본 문법**<br>
    ```sql
    DATE_FORMAT(date, format);
    -- date : 날짜(필수)
    -- format : 원하는 형식(필수)
    ```
- **주요 날짜 형식**<br>
    | 형식 | 설명 |
    | --- | --- |
    | %a | 요일 줄임말 (Sun~Sat) |
    | %D | 일(서수) (1st, 2nd, 3rd, …) |
    | %d | 일(두 자리 숫자) (01~31)  |
    | %b | 월(문자) 줄임말(Jan~Dec) |
    | %c | 월(숫자) (0~12) |
    | %m | 월(숫자) (00~12) |
    | %Y | 4자리 연도 (ex : 2023) |
    | %T | 시간 (hh:mm:ss) |
    | %S | 초 (00~59) |
    | %i | 분 (00~59) |
    | %H | 시간(두 자리 숫자) (00~23) |
- **예시**<br>
    ```sql
    SELECT DATE_FORMAT(BIRTHDAY, '%Y-%m-%d')
    	FROM STUDENTS;
    -- BIRTHDAY를 %Y-%m-%d 형식으로 출력
    -- ex) 2022-02-15
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### YEAR/MONTH/DAY
`MySQL` 함수로,<br>
각각 날짜에서 연도, 월, 일을 추출하는 함수다.<br>
- **기본 문법**<br>
    ```sql
    /* date : 날짜(필수) */
    
    YEAR(date)
    -- date의 연도를 반환한다.(1000~9999)
    
    MONTH(date)
    -- date의 월을 반환한다.(1~12)
    
    DAY(date)
    -- date의 일을 반환한다.(1~31)
    ```
- **기본 문법**<br>
    ```sql
    SELECT NAME FROM FRIENDS
    	WHERE MONTH(BIRTH_DATE) = 2
    				AND DAY(BIRTH_DATE) = 29
    -- FRIENDS 테이블에서
    -- BIRTH_DATE가 2월 29일인
    -- NAME을 가져온다.
    ```
- **동작 환경**<br>
    MySQL 4.0부터

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/144853)<br>
[MySQL DATE_FORMAT() Function](https://www.w3schools.com/sql/func_mysql_date_format.asp)<br>
[MySQL YEAR() Function](https://www.w3schools.com/sql/func_mysql_year.asp)<br>
[MySQL MONTH() Function](https://www.w3schools.com/sql/func_mysql_month.asp)<br>
[MySQL DAY() Function](https://www.w3schools.com/sql/func_mysql_day.asp)<br>
