### UPPER/LOWER
문자열을 대/소 문자로 변환하는 함수.<br>
- **기본 문법**
    ```sql
    UPPER(text)
    -- text : 대문자로 변환할 문자열 (필수)
    
    LOWER(text)
    -- text : 소문자로 변환할 문자열 (필수)
    ```
- **예시**
    ```sql
    SELECT UPPER("SQL Tutorial is FUN!") AS UppercaseText;
    -- SQL TUTORIAL IS FUN!
    
    SELECT LOWER("SQL Tutorial is FUN!") AS LowercaseText;
    -- sql tutorial is fun!
    ```
- **동작 환경**
    MySQL 4.0부터<br>

### Reference
[문제](https://www.hackerrank.com/challenges/the-pads/problem)<br>
[UPPER](https://www.w3schools.com/sql/func_mysql_upper.asp)<br>
[LOWER](https://www.w3schools.com/sql/func_mysql_lower.asp)<br>
