### REPEAT
문자열을 원하는 만큼 반복해주는 함수.<br>
- **문법**<br>
    ```sql
    REPEAT(string, number)
    -- string : 반복할 문자열 (필수)
    -- number : 반복할 횟수 (필수)
    ```
- **예시**<br>
    ```sql
    SELECT REPEAT("SQL Tutorial", 0);
    -- 빈 문자열

    SELECT REPEAT("SQL Tutorial", 2);    
    -- SQL TutorialSQL Tutorial    
    ```
- **동작 환경**<br>
    MySQL 4.0부터<br>

### Reference
[문제](https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true)<br>
[MySQL REPEAT() Function](https://www.w3schools.com/sql/func_mysql_repeat.asp)<br>