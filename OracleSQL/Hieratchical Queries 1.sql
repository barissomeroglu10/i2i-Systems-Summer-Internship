                      -- Hieratchical Queries
            
-- 1) CONNECT BY PRIOR example (Hieratchical Queries between workers and managers)

-- 2) LEVEL example (Hieratchical Queries between worker and manager - level no)

-- 3) START WITH example (We can start Hieratchi at a selected point)
     -- btw we can use SIBLINGS keyword to make  Hieratchical order
     
-- 4) CONNECT BY ROOT - SYS CONNECT BY PATH example (the superior unit and level to which each employee is affiliated)


-- 1)
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID FROM EMPLOYEES
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;

-- 3)
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID, LEVEL FROM EMPLOYEES
START WITH EMPLOYEE_ID = 100
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID
ORDER SIBLINGS BY LAST_NAME;

-- 4)
-- Level1 -> Level2 -> Level3...
--  Grandfather - Father - Son 
SELECT LAST_NAME, CONNECT_BY_ROOT LAST_NAME, 
LEVEL -1, SYS_CONNECT_BY_PATH(LAST_NAME, '->')
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 110 AND LEVEL > 1
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;

