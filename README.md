# SQL 공부하기

### SQL이란?
Structured Query Language의 줄임말로, Database를 조작하거나 접근할 수 있게 해준다.<br>
ANSI/ISO 표준이지만, 다른 버젼의 SQL이 많이 있다. (ex : MySQL, Oracle, ...)<br>
하지만, ANSI 표준과 호환가능하게 SELECT, INSERT, UPDATE, DELETE 등 최소한의 명령어는 지원해준다.<br>
### SQL 기본 문법

- **SQL 키워드 대소문자**<br>
    SQL 키워드는 대소문자를 구분하지 않는다. (case insensitive)<br>
    `select` 와 `SELECT` 는 똑같다.<br>
    
- **세미콜론**<br>
    대부분의 DB 시스템에서 SQL문 마지막에 `;` 를 써야한다.<br>
    SQL문 마지막에 `;` 을 쓰는 것이 표준이다.<br>
    ```sql
    -- 예시
    SELECT * FROM A;
    ```

- **중요한 SQL 명령어**<br>
    `SELECT` - DB에서 데이터 추출<br>
    `UPDATE` - DB에 데이터 갱신<br>
    `DELETE` - DB에서 데이터 삭제<br>
    `INSERT INTO` - DB에 새 데이터 삽입<br>
    `CREATE DATABASE` - 새 DB 생성<br>
    `ALTER DATABASE` - DB 수정<br>
    `CREATE TABLE` - 새 Table 생성<br>
    `ALTER TABLE` - Table 수정<br>
    `DROP TABLE` - Table 삭제<br>
    `CREATE INDEX` - 인덱스 생성<br>
    `DROP INDEX` - 인덱스 삭제<br>

### 공부하는 방법
Programmers에 있는 [SQL 고득점 kit](https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit)를 풀면서 개념 정리를 한다.<br>

### Reference
[SQL Introduction](https://www.w3schools.com/sql/sql_intro.asp)<br>
[SQL Syntax](https://www.w3schools.com/sql/sql_syntax.asp)<br>
