-- Bu betik, HR şeması için tüm Birincil Anahtar (PK) ve Yabancı Anahtar (FK) kısıtlamalarını ekler.
-- Veri yüklemesi sırasında oluşabilecek dairesel bağımlılık sorunlarını önlemek için
-- EMPLOYEES ve DEPARTMENTS arasındaki bazı FK'lar başlangıçta devre dışı bırakılabilir
-- ve tüm veriler yüklendikten sonra etkinleştirilebilir.

Prompt ******* Birincil Anahtar (PK) kısıtlamaları ekleniyor ....

ALTER TABLE REGIONS ADD (
  CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
);

ALTER TABLE COUNTRIES ADD (
  CONSTRAINT countr_id_pk PRIMARY KEY (country_id)
);

ALTER TABLE LOCATIONS ADD (
  CONSTRAINT loc_id_pk PRIMARY KEY (location_id)
);

ALTER TABLE DEPARTMENTS ADD (
  CONSTRAINT dept_id_pk PRIMARY KEY (department_id)
);

ALTER TABLE JOBS ADD (
  CONSTRAINT job_id_pk PRIMARY KEY (job_id)
);

ALTER TABLE EMPLOYEES ADD (
  CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id)
);

ALTER TABLE JOB_HISTORY ADD (
  CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date)
);

Prompt ******* Yabancı Anahtar (FK) kısıtlamaları ekleniyor ....

-- COUNTRIES ve REGIONS arasındaki FK
ALTER TABLE COUNTRIES ADD (
  CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES REGIONS (region_id)
);

-- LOCATIONS ve COUNTRIES arasındaki FK
ALTER TABLE LOCATIONS ADD (
  CONSTRAINT loc_c_id_fk FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRIES (country_id)
);

-- DEPARTMENTS ve LOCATIONS arasındaki FK
ALTER TABLE DEPARTMENTS ADD (
  CONSTRAINT dep_loc_fk FOREIGN KEY (LOCATION_ID) REFERENCES LOCATIONS (location_id)
);

-- EMPLOYEES ve JOBS arasındaki FK
ALTER TABLE EMPLOYEES ADD (
  CONSTRAINT emp_job_fk FOREIGN KEY (JOB_ID) REFERENCES JOBS (job_id)
);

-- EMPLOYEES ve DEPARTMENTS arasındaki FK
-- Dairesel bağımlılık nedeniyle (DEPARTMENTS'ın da EMPLOYEES'e referansı var),
-- bu kısıtlama veri girişinden sonra etkinleştirilmelidir.
-- Şimdilik yorum satırı olarak bırakıldı.
-- ALTER TABLE EMPLOYEES ADD (
--   CONSTRAINT emp_dept_fk FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (department_id)
-- );

-- EMPLOYEES ve EMPLOYEES (Manager) arasındaki FK
-- Dairesel bağımlılık nedeniyle, bu kısıtlama veri girişinden sonra etkinleştirilmelidir.
-- Şimdilik yorum satırı olarak bırakıldı.
-- ALTER TABLE EMPLOYEES ADD (
--   CONSTRAINT emp_manager_fk FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES (EMPLOYEE_ID)
-- );

-- DEPARTMENTS ve EMPLOYEES (Manager) arasındaki FK
-- Dairesel bağımlılık nedeniyle, bu kısıtlama veri girişinden sonra etkinleştirilmelidir.
-- Şimdilik yorum satırı olarak bırakıldı.
-- ALTER TABLE DEPARTMENTS ADD (
--   CONSTRAINT dept_mgr_id FOREIGN KEY (manager_id) REFERENCES EMPLOYEES (EMPLOYEE_ID)
-- );

-- JOB_HISTORY'nin FK'ları
ALTER TABLE JOB_HISTORY ADD (
  CONSTRAINT jhist_job_id_fk FOREIGN KEY (JOB_ID) REFERENCES JOBS (job_id)
);

ALTER TABLE JOB_HISTORY ADD (
  CONSTRAINT jhist_emp_id_fk FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (employee_id)
);

ALTER TABLE JOB_HISTORY ADD (
  CONSTRAINT jhist_dept_fk FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (department_id)
);

Prompt ******* Tüm PK ve dairesel olmayan FK kısıtlamaları başarıyla eklendi.
Prompt ******* Dairesel bağımlılık içeren FK'lar (EMP_DEPT_FK, EMP_MANAGER_FK, DEPT_MGR_ID)
Prompt ******* veri girişinden sonra manuel olarak etkinleştirilmelidir.