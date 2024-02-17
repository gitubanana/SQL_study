### 새로 알게 된 점
`SUBSTR`함수는<br>
만약에 추출할 부분열의 길이가 전체 문자열의 길이보다 길다면<br>
즉, 문자열을 초과해서 추출하려고 하면 빈 문자열을 반환한다.<br>
이 문제에서는 빈 문자열과 비교한 결과값이 나와도 정답으로 처리하는 것 같다.<br>
```sql
SELECT LENGTH(SUBSTR("HI", -3, 3)) AS ExtractString;
-- 0

SELECT LENGTH(NULL) AS ExtractString;
-- NULL
-- 혹시나 SUBSTR이 NULL을 리턴해서 0이 나온 것이 아닐까 확인해봤다.
-- 두 결과값이 다르기 때문에, 빈 문자열을 리턴하는 것이 맞다.
```

### Reference
[문제](https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true)<br>