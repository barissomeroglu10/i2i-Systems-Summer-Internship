-- Bu betik, HR şeması için tüm tabloları oluşturur.
-- Foreign Key kısıtlamaları bu betikte yer almaz,
-- bunlar genellikle ayrı ALTER TABLE komutlarıyla eklenir.

-- Mevcut tabloları silmek için (temiz bir başlangıç için isteğe bağlı)
-- Foreign Key bağımlılıkları nedeniyle silme sırası önemlidir.
-- CASCADE CONSTRAINTS, bağımlı FK'ları da siler.
-- Dikkatli kullanın, eğer bu tablolarınızda önemli veri varsa çalıştırmayın!
/*
DROP TABLE JOB_HISTORY CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEES CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENTS CASCADE CONSTRAINTS;
DROP TABLE LOCATIONS CASCADE CONSTRAINTS;
DROP TABLE COUNTRIES CASCADE CONSTRAINTS;
DROP TABLE REGIONS CASCADE CONSTRAINTS;
DROP TABLE JOBS CASCADE CONSTRAINTS;
*/

Prompt ******* REGIONS tablosu oluşturuluyor ....
CREATE TABLE REGIONS (
  REGION_ID NUMBER,
  REGION_NAME VARCHAR2(25)
);

Prompt ******* COUNTRIES tablosu oluşturuluyor ....
CREATE TABLE COUNTRIES (
  COUNTRY_ID CHAR(2),
  COUNTRY_NAME VARCHAR2(40),
  REGION_ID NUMBER
);

Prompt ******* LOCATIONS tablosu oluşturuluyor ....
CREATE TABLE LOCATIONS (
  LOCATION_ID NUMBER(4),
  STREET_ADRESS VARCHAR2(40),
  POSTAL_CODE VARCHAR2(12),
  CITY VARCHAR2(30) NOT NULL,
  STATE_PROVINCE VARCHAR2(25),
  COUNTRY_ID CHAR(2)
);

Prompt ******* DEPARTMENTS tablosu oluşturuluyor ....
CREATE TABLE DEPARTMENTS (
  DEPARTMENT_ID NUMBER(2),
  DEPARTMENT_NAME VARCHAR2(30),
  MANAGER_ID NUMBER(4)
);

-- DEPARTMENTS tablosuna LOCATION_ID sütununu ekle
-- Bu sütun, DEPARTMENTS ile LOCATIONS arasında bir ilişki kurmak için gereklidir.
Prompt ******* DEPARTMENTS tablosuna LOCATION_ID sütunu ekleniyor ....
ALTER TABLE DEPARTMENTS ADD LOCATION_ID NUMBER(4);


Prompt ******* JOBS tablosu oluşturuluyor ....
CREATE TABLE JOBS (
  JOB_ID VARCHAR2(10),
  JOB_TITLE VARCHAR2(35) NOT NULL,
  MIN_SALARY NUMBER(6),
  MAX_SALARY NUMBER(6)
);

Prompt ******* EMPLOYEES tablosu oluşturuluyor ....
CREATE TABLE EMPLOYEES (
  EMPLOYEE_ID NUMBER(6),
  FIRST_NAME VARCHAR2(30),
  LAST_NAME VARCHAR2(30),
  EMAIL VARCHAR2(35) NOT NULL,
  HIRE_DATE DATE NOT NULL,
  JOB_ID VARCHAR2(10),
  SALARY NUMBER(8,2), -- Maaş için daha geniş hassasiyet
  COMISSION_PERCENT NUMBER(2,1), -- Komisyon için ondalık hassasiyet
  MANAGER_ID NUMBER(6), -- Yöneticinin EMPLOYEE_ID'si
  CONSTRAINT emp_salary_min CHECK (salary > 0),
  CONSTRAINT emp_mail_uniq UNIQUE (EMAIL)
);

-- EMPLOYEES tablosuna DEPARTMENT_ID sütununu ekle
-- Bu sütun, EMPLOYEES ile DEPARTMENTS arasında bir ilişki kurmak için gereklidir.
Prompt ******* EMPLOYEES tablosuna DEPARTMENT_ID sütunu ekleniyor ....
ALTER TABLE EMPLOYEES ADD DEPARTMENT_ID NUMBER(2);


Prompt ******* JOB_HISTORY tablosu oluşturuluyor ....
CREATE TABLE JOB_HISTORY (
  EMPLOYEE_ID NUMBER(6),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  JOB_ID VARCHAR2(10),
  DEPARTMENT_ID NUMBER(2),
  CONSTRAINT jhist_date_interval CHECK (start_date < end_date)
);

Prompt ******* Tüm tablolar başarıyla oluşturuldu ve gerekli sütunlar eklendi.