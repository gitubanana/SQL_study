### 문제 간단 설명
REST_INFO 테이블에서<br>
FOOD_TYPE별로 FAVORITES가 가장 많은 식당의 FOOD_TYPE, REST_ID, REST_NAME, FAVORITES를 조회하는 SQL문 작성.<br>
FOOD_TYPE을 기준으로 내림차순 정렬.<br>

### 공부한 점
GROUP BY는 같은 값을 가지는 행들을 묶어서 한 행으로 만든다.<br>
이때, 한 행으로 만들 때 집계함수를 쓴다. (ex : 성별 평균 키)<br>
    ```sql
    SELECT gender, AVG(height) FROM FRIENDS GROUP BY gender; 
    ```
집계함수 없이 group by를 사용하는 건 의미가 없는 것 같다. (최신 버젼에서는 막는 것 같기도 하다..... 어렵다...)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/131123)<br>
[GROUP BY](https://github.com/gitubanana/SQL_study/tree/main/select/재구매가_일어난_상품과_회원_리스트_구하기#group-by)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
[MAX/MIN](https://github.com/gitubanana/SQL_study/tree/main/sum_max_min#maxmin)<br>
