### REPLACE
문자열에서 모든 부분열을 찾아 새로운 문자열로 치환하는 함수.<br>
(부분열 찾을 때는 대소문자 구분한다. (case-sensitive))
- **기본 문법**<br>
  ```sql
  REPLACE(string, from_string, new_string)
  -- string : 전체 문자열(필수)
  -- from_string : 치환될 부분열(필수)
  -- new_string : 치환할 새 문자열(필수)
  ```
- **예시**<br>
  ```sql
  SELECT REPLACE("XYZ FGH xYZ", "X", "M");
  -- MYZ FGH xYZ
  ```
- **동작 환경**<br>
  MySQL 4.0부터<br>

### 느낀 점
문제에서 나온 표현인 `round it up to the next integer`을 Google 번역 돌려도 `반올림`하라고 해석된다.<br>
그래서, `ROUND`함수를 처음에 썼지만 계속 틀렸다.<br>
결국 답을 찾아보니 `CEIL`함수로 `올림`을 하는 것이었다...?<br>
나는 억울하다...<br>

### Reference
[문제](https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true)<br>
[Google 번역](https://translate.google.co.kr/?sl=auto&tl=ko&text=round%20it%20up%20to%20the%20next%20integer&op=translate)<br>
[MySQL automatically cast/convert a string to a number?](https://stackoverflow.com/questions/21762075/mysql-automatically-cast-convert-a-string-to-a-number)<br>
[MySQL REPLACE() Function](https://www.w3schools.com/sql/func_mysql_replace.asp)<br>
