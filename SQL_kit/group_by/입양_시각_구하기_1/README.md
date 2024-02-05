### 문제 간단 설명
ANIMAL_OUTS 테이블에서<br>
09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문 작성<br>
이때 결과는 시간대 순으로 정렬<br>

### 새롭게 알게된 내용
MySQL에서는 WHERE절에서 칼럼 alias를 사용할 수 없다.<br>
[How do I use alias in where clause?](https://stackoverflow.com/questions/13031013/how-do-i-use-alias-in-where-clause)<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/59412)<br>
[GROUP BY](https://github.com/gitubanana/SQL_study/tree/main/select/재구매가_일어난_상품과_회원_리스트_구하기#group-by)<br>
[ORDER BY](https://github.com/gitubanana/SQL_study/blob/main/select/%EC%9D%B8%EA%B8%B0%EC%9E%88%EB%8A%94_%EC%95%84%EC%9D%B4%EC%8A%A4%ED%81%AC%EB%A6%BC/README.md#order-by)<br>
[WHERE](https://github.com/gitubanana/SQL_study/blob/main/select/%EA%B0%95%EC%9B%90%EB%8F%84%EC%97%90_%EC%9C%84%EC%B9%98%ED%95%9C_%EC%83%9D%EC%82%B0%EA%B3%B5%EC%9E%A5_%EB%AA%A9%EB%A1%9D_%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0/README.md#where)<br>
[COUNT](https://github.com/gitubanana/SQL_study/tree/main/sum_max_min#count)<br>
