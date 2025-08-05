-- DML Comment (Data Manipulation Language)
-- UPDATE and DELETE

-- We must use COMMIT and ROLLBACK keuwords with UPDATE and DELETE
-- after update/delete if we want to permanent processes we must use COMMIT
-- after update/delete if we want to undo our processes we must use ROLLBACK

-- != and <> mean's not equale

DESC employees_copy;

SELECT * FROM employees_copy;

SELECT EMPLOYEE_ID, SALARY, COMISSION_PERCENT  FROM employees_copy;

-- Senario
-- We'll set employee number 101 and 102's comission rate as 0 and reduce their salary as 400 dollar
UPDATE EMPLOYEES_COPY
SET
SALARY = SALARY - 400,
COMISSION_PERCENT = NULL
WHERE EMPLOYEE_ID IN (101,102);

-- Senario
-- We will undo extra for sallary who works at station 100 (updating the salary)
-- To do this, we will use value in Employess table to birng it Employees_Copy table.

SELECT EMPLOYEE_ID, SALARY, COMISSION_PERCENT  FROM employees_copy
WHERE department_id = 100;

UPDATE EMPLOYEES_COPY A SET 
A.SALARY = (SELECT B.SALARY FROM EMPLOYEES B
WHERE A.EMPLOYEE_ID = B.EMPLOYEE_ID)
WHERE A.DEPARTMENT_ID = 100;

COMMIT;

UPDATE EMPLOYEES_COPY A SET 
A.SALARY = (SELECT B.SALARY FROM EMPLOYEES B
WHERE A.EMPLOYEE_ID = B.EMPLOYEE_ID)
WHERE A.DEPARTMENT_ID = 90;

ROLLBACK;

SELECT EMPLOYEE_ID, SALARY, COMISSION_PERCENT  FROM employees_copy
WHERE department_id = 90;

-----------------------------------DELETE--------------------------------------
SELECT * FROM EMPLOYEES_COPY;

SELECT * FROM EMPLOYEES_COPY
WHERE DEPARTMENT_ID = 90;