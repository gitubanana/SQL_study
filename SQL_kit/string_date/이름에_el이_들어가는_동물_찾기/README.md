### 문제 간단 설명
ANIMAL_INS 테이블에서<br>
ANIMAL_TYPE이 'Dog'이고 NAME에 'el'이 들어가는 ANIMAL_ID와 NAME을 조회하는 SQL문 작성<br>
이때 결과는 NAME순으로 조회<br>
단, 이름의 대소문자는 구분하지 않는다.<br>

### 새롭게 알게 된 점
기본적으로, `MySQL`에서는 nonbinary string과 nonbinary string을 비교할 때는 대소문자 구분을 하지 않는다. (case-insensitive)<br>
하지만, nonbinary string과 binary string을 비교하면 대소문자를 구분한다. (case-sensitive)<br>
따라서, 대소문자를 구분하고 싶을 때는 피연산자 둘 중 하나에 `BINARY`를 붙여 binary string으로 만들면 대소문자를 구분하게 만들 수 있다.
```sql
-- 대소문자 구분없이 비교
SELECT NAME
    FROM ANIMAL_INS
    WHERE NAME LIKE '%E%';

-- 대소문자 구분해서 비교
SELECT NAME
    FROM ANIMAL_INS
    WHERE NAME LIKE BINARY '%E%';
-- 혹은
SELECT NAME
    FROM ANIMAL_INS
    WHERE BINARY NAME LIKE '%E%';
```
하지만, `Oracle`에서는 기본적으로 대소문자를 구분한다.
따라서, 대소문자 구분을 안 하고 싶다면 `UPPER`/`LOWER`함수로 대문자/소문자로 바꿔서 비교를 해야 한다.

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/59047)<br>
[MySQL :: MySQL 8.0 Reference Manual :: B.3.4.1 Case Sensitivity in String Searches](https://dev.mysql.com/doc/refman/8.0/en/case-sensitivity.html)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
