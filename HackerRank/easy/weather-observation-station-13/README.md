### TRUNCATE
원하는 소수점 자리까지 자르는 함수.<br>
- **문법**<br>
    ```sql
    TRUNCATE(number, decimals)
    -- number : 잘려질 수 (필수)
    -- decimals : 원하는 소수점 자리 (필수)
    ```
- **예시**<br>
    ```sql
    SELECT TRUNCATE(345.156, 0);
    -- 345
    ```
- **동작 환경**<br>
    MySQL 4.0부터<br>

### Reference
[문제](https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true)<br>
[MySQL TRUNCATE() Function](https://www.w3schools.com/sql/func_mysql_truncate.asp)<br>