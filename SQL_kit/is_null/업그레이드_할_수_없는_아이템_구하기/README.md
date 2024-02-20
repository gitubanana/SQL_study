### NOT IN NULL
SQL은 세 가지의 논리적인 값(`true`, `false`, `unknown`)을 가지고 있다.<br>
NULL과 비교 연산을 하는 것은 `unknown`이기 때문에, 결과값도 `unknown`이 된다.<br>
그렇기 때문에, 이 문제에서 where절로 null값을 제외하지 않으면, 결과값이 아무것도 없게 된다.<br>

### Reference
[문제](https://school.programmers.co.kr/learn/courses/30/lessons/273712)<br>
[AND field NOT IN(NULL) returns an empty set [duplicate]](https://stackoverflow.com/questions/16038414/and-field-not-innull-returns-an-empty-set)<br>