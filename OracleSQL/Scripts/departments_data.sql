REM ********************************************************************
REM insert data into the DEPARTMENTS table
REM ********************************************************************
Prompt ******* Populating DEPARTMENTS table ....

-- ORA-00001 hatasını önlemek için tabloyu veri eklemeden önce temizle.
TRUNCATE TABLE BARIS.DEPARTMENTS;

-- Dairesel bağımlılık nedeniyle (DEPARTMENTS'ın MANAGER_ID'si EMPLOYEES'e referans verirken,
-- EMPLOYEES'in DEPARTMENT_ID'si DEPARTMENTS'a referans veriyor),
-- dept_mgr_id kısıtlamasını geçici olarak devre dışı bırakıyoruz.
-- Bu, MANAGER_ID'si henüz EMPLOYEES tablosunda bulunmayan departmanları eklememizi sağlar.
-- ORA-02431 hatasını önlemek için bu satır kaldırıldı, çünkü kısıtlama henüz eklenmedi.
-- ALTER TABLE departments DISABLE CONSTRAINT dept_mgr_id;

-- DEPARTMENTS tablosundaki DEPARTMENT_ID sütununun hassasiyetini artırın.
-- ORA-01438 hatasını önlemek için NUMBER(2) yerine NUMBER(3) yapıldı.
ALTER TABLE BARIS.DEPARTMENTS MODIFY (DEPARTMENT_ID NUMBER(3));

INSERT INTO departments VALUES(10, 'Administration', 200, 1700);
INSERT INTO departments VALUES(20, 'Marketing', 201, 1800);
INSERT INTO departments VALUES(30, 'Purchasing', 114, 1700);
INSERT INTO departments VALUES(40, 'Human Resources', 203, 2400);
INSERT INTO departments VALUES(50, 'Shipping', 121, 1500);
INSERT INTO departments VALUES(60, 'IT', 103, 1400);
INSERT INTO departments VALUES(70, 'Public Relations', 204, 2400); -- LOCATION_ID 2700 yerine 2400 olarak değiştirildi (London)
INSERT INTO departments VALUES(80, 'Sales', 145, 2500);
INSERT INTO departments VALUES(90, 'Executive', 100, 1700);
INSERT INTO departments VALUES(100, 'Finance', 108, 1700);
INSERT INTO departments VALUES(110, 'Accounting', 205, 1700);
INSERT INTO departments VALUES(120, 'Treasury', NULL, 1700);
INSERT INTO departments VALUES(130, 'Corporate Tax', NULL, 1700);

-- Bu kısıtlamayı şimdilik etkinleştirmeyin.
-- EMPLOYEES tablosu tamamen doldurulduktan sonra etkinleştirilecektir.
-- ALTER TABLE departments ENABLE CONSTRAINT dept_mgr_id;