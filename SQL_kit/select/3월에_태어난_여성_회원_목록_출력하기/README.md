### 문제 간단 설명
MEMBER_PROFILE 테이블에서<br>
생일이 3월인 여성 회원의<br>
MEMBER_ID, MEMBER_NAME, GENDER, DATE_OF_BIRTH을 조회하는 SQL문을 작성.<br>
이때 TLNO가 NULL인 경우는 제외시켜 주시고,<br>
결과는 MEMBER_ID를 기준으로 오름차순 정렬.<br>

### IS NULL
NULL값을 확인할 대 사용하는 키워드다.<br>
NULL값을 찾을 때는, `IS NULL`을 사용해야 한다.<br>
<aside>
💡 NULL값은 0값이나 공백으로 채워진 필드랑은 다르다.

</aside>

- **예시**<br>
    ```sql
    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NULL;
    -- Cutomers 테이블에서
    -- CustomerName, ContactName, Address를 가져오는데
    -- Address가 NULL값인
    ```

### 그 외
[Alias](https://github.com/gitubanana/SQL_study/tree/main/select/12%EC%84%B8_%EC%9D%B4%ED%95%98%EC%9D%B8_%EC%97%AC%EC%9E%90_%ED%99%98%EC%9E%90_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0#alias)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[DATE_FORMAT](https://github.com/gitubanana/SQL_study/tree/main/select/%EC%A1%B0%EA%B1%B4%EC%97%90_%EB%A7%9E%EB%8A%94_%EB%8F%84%EC%84%9C_%EB%A6%AC%EC%8A%A4%ED%8A%B8_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0#date_format)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131120)<br>
[SQL IS NULL](https://www.w3schools.com/sql/sql_ref_is_null.asp)<br>
