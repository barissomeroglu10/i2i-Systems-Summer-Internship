ALTER TABLE REGIONS ADD (
  CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
);

-- veri modelleme
-- üstteki komut çalışmadan alttaki komut çalışırsa hata alırız
-- foreign key tanımlayabilmemiz için referans alacağımız tablodaki kolon ya da kolonların primary key olması gerekiyor

ALTER TABLE COUNTRIES ADD (
  CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES REGIONS (region_id)
);

ALTER TABLE COUNTRIES ADD (
  CONSTRAINT countr_id_pk PRIMARY KEY (country_id)
);

-- üstteki iki satırlık işlemi başka bir tablo için tek satırda yapma işlemi
ALTER TABLE LOCATIONS ADD (
  CONSTRAINT loc_id_pk PRIMARY KEY (location_id),
  CONSTRAINT loc_c_id_fk FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRIES (country_id)
);

-- departments tablosunda LOCATION_ID kolonu yoktu, önce bunu eklemeliyiz
ALTER TABLE DEPARTMENTS ADD LOCATION_ID NUMBER(4);

-- Şimdi kısıtlamaları ekleyebiliriz
ALTER TABLE DEPARTMENTS ADD (
  CONSTRAINT dept_id_pk PRIMARY KEY (department_id),
  -- Foreign key, LOCATIONS tablosundaki LOCATION_ID sütununu referans almalı
  CONSTRAINT dep_loc_fk FOREIGN KEY (LOCATION_ID) REFERENCES LOCATIONS (location_id)
);

ALTER TABLE JOBS ADD (
  CONSTRAINT job_id_pk PRIMARY KEY (job_id)
);

-- Daha önce eklenmemişse DEPARTMENT_ID sütununu eklediğinizden emin olun
ALTER TABLE EMPLOYEES ADD DEPARTMENT_ID NUMBER(2);

ALTER TABLE EMPLOYEES ADD (
  CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id), 
  CONSTRAINT emp_dept_fk FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (department_id),
  CONSTRAINT emp_job_fk FOREIGN KEY (JOB_ID) REFERENCES JOBS (job_id),
  CONSTRAINT emp_manager_fk FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES (EMPLOYEE_ID)
);

ALTER TABLE DEPARTMENTS ADD (
  CONSTRAINT dept_mgr_id FOREIGN KEY (manager_id) REFERENCES EMPLOYEES (EMPLOYEE_ID)
);

ALTER TABLE JOB_HISTORY ADD (
  -- birden fazla kolon üzerinde primary key olabilir
  CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date), 
  CONSTRAINT jhist_job_id_fk FOREIGN KEY (JOB_ID) REFERENCES JOBS (job_id),
  CONSTRAINT jhist_emp_id_fk FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (employee_id),
  CONSTRAINT jhist_dept_fk FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (department_id)
);

-- CONSTRAINT silmek için
-- ALTER TABLE DEPARTMENTS DROP CONSTRAINT dept_mgr_id;

-- parent tablo silmeden child tablo silinemez
-- DROP TABLE REGIONS;
-- aşağıdaki şekilde hem regions tablosunu hem de constraınt'lerini silebiliriz
-- DROP TABLE REGIONS CASCADE CONSTRAINT;

-- drop komutu ile user silebiliriz



















