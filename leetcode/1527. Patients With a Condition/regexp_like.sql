SELECT *
FROM Patients
WHERE REGEXP_LIKE(conditions, '(^| )DIAB1', 'c');
