## SELECT 문이란?
Database에서 데이터를 선택할 때 사용된다.

### 기본 문법

```sql
SELECT column1, column2,...columnN 
FROM table_name
[WHERE]
[GROUP BY]
[HAVING]
[ORDER BY column(s) [ASC|DESC]]
```
table_name : 데이터를 가져올 테이블명.<br>
column1, column2 : 데이터를 가져올 테이블의 필드명들.<br>

### 예시
```sql
-- 한 줄 주석은 --을 사용하면 됩니다.

SELECT CustomerName, City FROM Customers;
-- Customers 테이블에서 CustomerName과 City 필드를 가져온다.

SELECT * FROM Customer;
-- *를 사용하면, 모든 필드를 가져올 수 있다.
```

### Reference
[SQL SELECT Statement](https://www.w3schools.com/sql/sql_select.asp)<br>
[SQL Comments](https://www.w3schools.com/sql/sql_comments.asp)<br>
[SELECT문 순서](https://www.tutorialsteacher.com/sql/sql-orderby)
