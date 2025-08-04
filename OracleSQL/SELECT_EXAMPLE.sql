-- 1) The most basic form of the SELECT statement (Querying all columns in a table)
SELECT * FROM EMPLOYEES; -- * means you want to see all columns

-- 2) Querying specific parts (columns) of a table
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM EMPLOYEES;

-- 3) Changing the column headers of the queried results (Label Alias) (Headers consisting of one words)
SELECT MANAGER_ID MGR, FIRST_NAME ADI, LAST_NAME SOYADI, EMAIL POSTA FROM EMPLOYEES;
-- we can write like this: SELECT MANAGER_ID AS MGR, FIRST_NAME AS ADI, LAST_NAME AS SOYADI, EMAIL AS POSTA FROM EMPLOYEES;

-- 4) Changing the column headers of the queried results (Label Alias) (Headers consisting of multiple words)
SELECT MANAGER_ID "MUDUR_NO", FIRST_NAME "ILK_ADI", LAST_NAME "SON_ADI", EMAIL "E_POSTA" FROM EMPLOYEES;

-- 5) WHERE CONDITIONS (for example workers who work in section 90)
SELECT * FROM EMPLOYEES WHERE department_id = 90;
SELECT * FROM EMPLOYEES WHERE department_id = 100;
-- for section 90 and 100
SELECT * FROM EMPLOYEES WHERE department_id IN (90,100);
SELECT * FROM EMPLOYEES WHERE department_id = 90 OR department_id = 100; -- this one has more performance

-- 6) Worker whom surname starts with M
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE 'M%';

-- 7) Worke whom surname contains MA
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE '%ma%';

-- 8) Worker whom surnames' 2. character is a and 4. character is e
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE '_a_e%';

-- 9) Worker whom salary more than 10k and commision ratio is not null
SELECT * FROM EMPLOYEES WHERE SALARY > 10000 and COMISSION_PERCENT is not NULL;