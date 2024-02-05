### 새로 배운 점
전화번호를 형식에 맞출 때, SUBSTR과 CONCAT을 사용했는데<br>
왼쪽과 오른쪽에서 부분열을 구할 때는 LEFT, RIGHT라는 함수를 사용해도 된다.<br>
```sql
SELECT LEFT("SQL Tutorial", 3) AS ExtractString;
-- SQL

SELECT RIGHT("SQL Tutorial is cool", 4) AS ExtractString;
-- cool
```

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/164670)<br>
[MySQL RIGHT() Function](https://www.w3schools.com/sql/func_mysql_right.asp)<br>
[MySQL LEFT() Function](https://www.w3schools.com/sql/func_mysql_left.asp)<br>
[JOIN](https://github.com/gitubanana/SQL_study/tree/main/group_by/%EC%84%B1%EB%B6%84%EC%9C%BC%EB%A1%9C_%EA%B5%AC%EB%B6%84%EC%9C%BC%EB%A1%9C_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC_%EC%B4%9D%EC%A3%BC%EB%AC%B8%EB%9F%89#join)<br>
[SUBSTRING](https://github.com/gitubanana/SQL_study/tree/main/string_date/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC%EB%B3%84_%EC%83%81%ED%92%88_%EA%B0%9C%EC%88%98_%EA%B5%AC%ED%95%98%EA%B8%B0#substring)<br>
[CONCAT](https://github.com/gitubanana/SQL_study/tree/main/string_date/%EC%A1%B0%ED%9A%8C%EC%88%98%EA%B0%80_%EA%B0%80%EC%9E%A5_%EB%A7%8E%EC%9D%80_%EC%A4%91%EA%B3%A0%EA%B1%B0%EB%9E%98_%EA%B2%8C%EC%8B%9C%ED%8C%90%EC%9D%98_%EC%B2%A8%EB%B6%80%ED%8C%8C%EC%9D%BC_%EC%A1%B0%ED%9A%8C%ED%95%98%EA%B8%B0#concat)<br>
