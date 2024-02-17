### LENGTH
문자열의 길이를 반환하는 함수.<br>
(바이트 수를 반환한다.)<br>
- **기본 문법**<br>
  ```sql
  LENGTH(string)
  -- string : 바이트를 셀 문자열(필수)
  ```
- **예시**<br>
  ```sql
  SELECT LENGTH("hi") AS LengthOfString;
  -- 2
  
  SELECT LENGTH("안녕") AS LengthOfString;
  -- 16
  ```
- **동작 환경**<br>
  MySQL 4.0부터<br>

### Reference
[문제](https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true)<br>
[MySQL LENGTH() Function](https://www.w3schools.com/sql/func_mysql_length.asp)<br>
