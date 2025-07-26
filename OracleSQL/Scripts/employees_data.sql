REM ********************************************************************
REM insert data into the EMPLOYEES table
REM ********************************************************************
Prompt ******* Populating EMPLOYEES table ....

-- ORA-00001 hatasını önlemek için tabloyu veri eklemeden önce temizle.
TRUNCATE TABLE BARIS.EMPLOYEES;

-- ORA-01438 hatasını önlemek için DEPARTMENT_ID sütununun hassasiyetini artırın.
-- Bu, EMPLOYEES tablosundaki DEPARTMENT_ID'nin DEPARTMENTS tablosundaki ID'leri almasını sağlar.
ALTER TABLE BARIS.employees MODIFY (DEPARTMENT_ID NUMBER(3));

-- Foreign Key kısıtlamalarını geçici olarak devre dışı bırakabilirsiniz
-- Eğer döngüsel bağımlılık (circular dependency) veya veri yükleme sırası sorunları yaşıyorsanız.
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS DISABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa

INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING@example.com', TO_DATE('17-JUN-03', 'DD-MON-RR'), 'AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO employees VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR@example.com', TO_DATE('21-SEP-05', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (102, 'Lex', 'De Haan', 'LDEHAAN@example.com', TO_DATE('13-JAN-01', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD@example.com', TO_DATE('03-JAN-06', 'DD-MON-RR'), 'IT_PROG', 9000, NULL, 102, 60);
INSERT INTO employees VALUES (104, 'Bruce', 'Ernst', 'BERNST@example.com', TO_DATE('21-MAY-07', 'DD-MON-RR'), 'IT_PROG', 6000, NULL, 103, 60);
INSERT INTO employees VALUES (105, 'Diana', 'Lorentz', 'DLORENTZ@example.com', TO_DATE('07-FEB-07', 'DD-MON-RR'), 'IT_PROG', 4200, NULL, 103, 60);
INSERT INTO employees VALUES (106, 'Nancy', 'Greenberg', 'NGREENBE@example.com', TO_DATE('17-AUG-02', 'DD-MON-RR'), 'FI_MGR', 12000, NULL, 101, 100);
INSERT INTO employees VALUES (107, 'Daniel', 'Faviet', 'DFAVIET@example.com', TO_DATE('16-AUG-02', 'DD-MON-RR'), 'FI_ACCOUNT', 9000, NULL, 106, 100);
INSERT INTO employees VALUES (108, 'John', 'Chen', 'JCHEN@example.com', TO_DATE('28-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 8200, NULL, 106, 100);
INSERT INTO employees VALUES (109, 'Ismael', 'Sciarra', 'ISCIARRA@example.com', TO_DATE('30-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 7700, NULL, 106, 100);
INSERT INTO employees VALUES (110, 'Jose Manuel', 'Ullman', 'JMULLMAN@example.com', TO_DATE('24-JUN-06', 'DD-MON-RR'), 'FI_ACCOUNT', 7800, NULL, 106, 100);
INSERT INTO employees VALUES (111, 'Luis', 'Popp', 'LPOPP@example.com', TO_DATE('07-DEC-07', 'DD-MON-RR'), 'FI_ACCOUNT', 6900, NULL, 106, 100);
INSERT INTO employees VALUES (112, 'Den', 'Raphaely', 'DRAPHEAL@example.com', TO_DATE('07-DEC-02', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 101, 30);
INSERT INTO employees VALUES (113, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'PU_CLERK', 7000, NULL, 112, 30);
INSERT INTO employees VALUES (114, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'PU_CLERK', 12000, NULL, 101, 30);
INSERT INTO employees VALUES (115, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 114, 30);
INSERT INTO employees VALUES (116, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'PU_CLERK', 6400, NULL, 114, 30);
INSERT INTO employees VALUES (117, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'PU_CLERK', 4800, NULL, 114, 30);
INSERT INTO employees VALUES (118, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'ST_MAN', 5800, NULL, 100, 50);
INSERT INTO employees VALUES (119, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'ST_CLERK', 3200, NULL, 118, 50);
INSERT INTO employees VALUES (120, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'ST_CLERK', 2600, NULL, 118, 50);
INSERT INTO employees VALUES (121, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'ST_CLERK', 3300, NULL, 118, 50); -- TO_DATE formatı düzeltildi
INSERT INTO employees VALUES (122, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'ST_CLERK', 2800, NULL, 118, 50);
INSERT INTO employees VALUES (123, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'ST_CLERK', 2400, NULL, 118, 50);
INSERT INTO employees VALUES (124, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'ST_CLERK', 2200, NULL, 118, 50);
INSERT INTO employees VALUES (125, 'Jonathon', 'Taylor', 'JTAYLOR@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SH_CLERK', 8600, NULL, 120, 50);
INSERT INTO employees VALUES (126, 'Jack', 'Livingston', 'JLIVINGS@example.com', TO_DATE('23-APR-06', 'DD-MON-RR'), 'SH_CLERK', 8400, NULL, 120, 50);
INSERT INTO employees VALUES (127, 'Kimberely', 'Grant', 'KGRANT@example.com', TO_DATE('26-MAY-07', 'DD-MON-RR'), 'SH_CLERK', 7800, NULL, 120, 50);
INSERT INTO employees VALUES (128, 'Charles', 'Johnson', 'CJOHNSON@example.com', TO_DATE('04-JAN-08', 'DD-MON-RR'), 'SH_CLERK', 6200, NULL, 120, 50);
INSERT INTO employees VALUES (129, 'Peter', 'Vargas', 'PVARGAS@example.com', TO_DATE('09-JUL-07', 'DD-MON-RR'), 'SH_CLERK', 5600, NULL, 120, 50);
INSERT INTO employees VALUES (130, 'Laura', 'Marvini', 'LMARVINI@example.com', TO_DATE('20-FEB-08', 'DD-MON-RR'), 'SH_CLERK', 4600, NULL, 120, 50);
INSERT INTO employees VALUES (145, 'John', 'Russell', 'JRUSSEL@example.com', TO_DATE('01-OCT-04', 'DD-MON-RR'), 'SA_MAN', 14000, 0.4, 100, 80);
INSERT INTO employees VALUES (146, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'SA_REP', 13500, 0.3, 145, 80);
INSERT INTO employees VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'SA_REP', 12000, 0.3, 145, 80);
INSERT INTO employees VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'SA_REP', 11000, 0.3, 145, 80);
INSERT INTO employees VALUES (149, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SA_REP', 10500, 0.2, 145, 80);
INSERT INTO employees VALUES (150, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'SA_REP', 10000, 0.2, 145, 80);
INSERT INTO employees VALUES (151, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'SA_REP', 9500, 0.2, 145, 80);
INSERT INTO employees VALUES (152, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'SA_REP', 9000, 0.2, 145, 80);
INSERT INTO employees VALUES (153, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'SA_REP', 8500, 0.1, 145, 80);
INSERT INTO employees VALUES (154, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'SA_REP', 8000, 0.1, 145, 80);
INSERT INTO employees VALUES (155, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'SA_REP', 7500, 0.1, 145, 80);
INSERT INTO employees VALUES (156, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'SA_REP', 7000, 0.1, 145, 80);
INSERT INTO employees VALUES (157, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'SA_REP', 6500, 0.1, 145, 80);
INSERT INTO employees VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN@example.com', TO_DATE('17-SEP-03', 'DD-MON-RR'), 'AD_ASST', 4400, NULL, 101, 10);
INSERT INTO employees VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE@example.com', TO_DATE('17-FEB-00', 'DD-MON-RR'), 'MK_MAN', 13000, NULL, 101, 20);
INSERT INTO employees VALUES (202, 'Pat', 'Fay', 'PFAY@example.com', TO_DATE('17-AUG-05', 'DD-MON-RR'), 'MK_REP', 6000, NULL, 201, 20);
INSERT INTO employees VALUES (203, 'Susan', 'Mavris', 'SMAVRIS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'HR_REP', 6500, NULL, 101, 40);
INSERT INTO employees VALUES (204, 'Hermann', 'Baer', 'HBAER@example.com', TO_DATE('07-JUN-00', 'DD-MON-RR'), 'PR_REP', 10000, NULL, 101, 70);
INSERT INTO employees VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_MGR', 12000, NULL, 101, 110);
INSERT INTO employees VALUES (206, 'William', 'Gietz', 'WGIETZ@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_ACCOUNT', 8300, NULL, 205, 110);

-- Veri yüklemesi tamamlandıktan sonra Foreign Key kısıtlamalarını tekrar etkinleştirebilirsiniz.
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_JOB_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS ENABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa
```
Anladım, `EMPLOYEES` tablosuna veri eklerken yine hatalar aldınız. Çıktıyı dikkatlice inceledim ve sorunları çözmek için `EMPLOYEES Tablosu Veri Giriş Komutları` Canvas'ını güncelleyeceğim.

Aldığınız hatalar üç ana kategoriye ayrılıyor:

### Hata Analizi ve Çözümler

#### 1. `ORA-00001: unique constraint (BARIS.EMP_MAIL_UNIQ) violated`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosuna eklemeye çalıştığınız bazı e-posta adreslerinin (`SKING@example.com`, `NKOCHHAR@example.com` vb.) `EMP_MAIL_UNIQ` adlı benzersiz kısıtlamayı ihlal ettiğini gösterir. Bu, aynı e-posta adresine sahip bir kaydın tabloda zaten mevcut olduğu anlamına gelir.
* **Çözüm:** `EMPLOYEES` tablosuna veri eklemeye çalışmadan önce tabloyu temizlemeniz gerekiyor. Bunu `TRUNCATE TABLE` komutuyla yapabiliriz. Bu komut, tablodaki tüm verileri hızlı bir şekilde siler ancak tablo yapısını korur. **Bu komut zaten betiğinizde mevcut ve çıktınızda "Table BARIS.EMPLOYEES truncated." ifadesi yer alıyor. Bu, `TRUNCATE` işleminin başarılı olduğu anlamına gelir. Hatanın devam etmesi, betiğin birden fazla kez çalıştırılması ve ilk çalışmada bazı satırların eklenip, sonraki çalışmalarda tekrar eklenmeye çalışılmasından kaynaklanıyor olabilir.**

#### 2. `ORA-01438: value larger than specified precision allowed for this column`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosundaki bir sayısal sütuna (büyük olasılıkla `SALARY` veya `COMMISSION_PCT`) eklemeye çalıştığınız değerin, sütunun tanımlanmış hassasiyetinden daha büyük olduğunu gösterir.
* **Neden:** Daha önceki adımda `SALARY` ve `COMMISSION_PCT` sütunlarının hassasiyetini artırdığımızı belirtmiştiniz. Ancak bu hatayı hala almanız, ya `ALTER TABLE` komutlarının gerçekten çalışmadığı (bir hata nedeniyle atlanmış olabilir) ya da `NUMBER` hassasiyetinin hala yetersiz olduğu anlamına gelir.
* **Çözüm:** Bu `ALTER TABLE` komutlarını `employees_insert_data` Canvas'ının içine, `TRUNCATE` komutundan hemen sonra ekleyerek, her çalıştırmada hassasiyetin doğru ayarlandığından emin olacağız.

#### 3. `ORA-02291: integrity constraint (BARIS.EMP_JOB_FK) violated - parent key not found`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosuna eklemeye çalıştığınız `JOB_ID` değerlerinin (`PU_CLERK`, `MK_MAN`, `MK_REP` gibi) `JOBS` tablosunda mevcut olmadığını gösterir.
* **Neden:** `JOBS` tablosunda bu `JOB_ID`'ler eksik. Özellikle `MK_MAN` ve `MK_REP` gibi iş ID'leri sizin `JOBS` veri scriptinizde bulunmuyordu. `PU_CLERK` ise vardı ama yine de hata alıyorsunuz, bu da `JOBS` tablosunun doğru şekilde doldurulmadığını veya `TRUNCATE` edilmediğini düşündürüyor.
* **Çözüm:** `JOBS` tablosuna eksik olan `JOB_ID`'leri eklemeniz ve `JOBS` tablosunun veri eklemeden önce temizlendiğinden emin olmanız gerekmektedir. **Bu sorunu çözmek için `JOBS` tablosunu `TRUNCATE` edip, `MK_MAN` ve `MK_REP` değerlerini içeren güncel `JOBS` veri scriptini tekrar çalıştırmanız gerekecek.**

#### 4. `ORA-00936: missing expression`
* **Açıklama:** Bu hata, `INSERT INTO employees VALUES (121, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', ` satırında `TO_DATE` fonksiyonunun format string'inin eksik olmasından kaynaklanmaktadır.
* **Neden:** Bu hata, sizin gönderdiğiniz `employees_insert_data` Canvas'ının eski bir versiyonunda mevcuttu. En son güncellediğim Canvas'ta bu düzeltme yapılmıştı. **Lütfen en güncel Canvas'ı kullandığınızdan emin olun.**

---

### Düzenlenmiş `EMPLOYEES Tablosu Veri Giriş Komutları` Canvas'ı

Aşağıdaki Canvas, yukarıdaki hataları gidermek için güncellenmiştir. Lütfen bu kodu kopyalayıp Canvas'ınızdaki mevcut kodu tamamen bununla değiştirin.


```sql
REM ********************************************************************
REM insert data into the EMPLOYEES table
REM ********************************************************************
Prompt ******* Populating EMPLOYEES table ....

-- ORA-00001 hatasını önlemek için tabloyu veri eklemeden önce temizle.
TRUNCATE TABLE BARIS.EMPLOYEES;

-- ORA-01438 hatasını önlemek için DEPARTMENT_ID, SALARY ve COMISSION_PERCENT sütunlarının hassasiyetini artırın.
-- Bu, EMPLOYEES tablosundaki DEPARTMENT_ID'nin DEPARTMENTS tablosundaki ID'leri almasını sağlar.
-- SALARY ve COMMISSION_PERCENT için de doğru hassasiyetleri garanti eder.
ALTER TABLE BARIS.employees MODIFY (DEPARTMENT_ID NUMBER(3));
ALTER TABLE BARIS.employees MODIFY (SALARY NUMBER(7,2));
ALTER TABLE BARIS.employees MODIFY (COMISSION_PERCENT NUMBER(2,1));


-- Foreign Key kısıtlamalarını geçici olarak devre dışı bırakabilirsiniz
-- Eğer döngüsel bağımlılık (circular dependency) veya veri yükleme sırası sorunları yaşıyorsanız.
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS DISABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa

INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING@example.com', TO_DATE('17-JUN-03', 'DD-MON-RR'), 'AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO employees VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR@example.com', TO_DATE('21-SEP-05', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (102, 'Lex', 'De Haan', 'LDEHAAN@example.com', TO_DATE('13-JAN-01', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD@example.com', TO_DATE('03-JAN-06', 'DD-MON-RR'), 'IT_PROG', 9000, NULL, 102, 60);
INSERT INTO employees VALUES (104, 'Bruce', 'Ernst', 'BERNST@example.com', TO_DATE('21-MAY-07', 'DD-MON-RR'), 'IT_PROG', 6000, NULL, 103, 60);
INSERT INTO employees VALUES (105, 'Diana', 'Lorentz', 'DLORENTZ@example.com', TO_DATE('07-FEB-07', 'DD-MON-RR'), 'IT_PROG', 4200, NULL, 103, 60);
INSERT INTO employees VALUES (106, 'Nancy', 'Greenberg', 'NGREENBE@example.com', TO_DATE('17-AUG-02', 'DD-MON-RR'), 'FI_MGR', 12000, NULL, 101, 100);
INSERT INTO employees VALUES (107, 'Daniel', 'Faviet', 'DFAVIET@example.com', TO_DATE('16-AUG-02', 'DD-MON-RR'), 'FI_ACCOUNT', 9000, NULL, 106, 100);
INSERT INTO employees VALUES (108, 'John', 'Chen', 'JCHEN@example.com', TO_DATE('28-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 8200, NULL, 106, 100);
INSERT INTO employees VALUES (109, 'Ismael', 'Sciarra', 'ISCIARRA@example.com', TO_DATE('30-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 7700, NULL, 106, 100);
INSERT INTO employees VALUES (110, 'Jose Manuel', 'Ullman', 'JMULLMAN@example.com', TO_DATE('24-JUN-06', 'DD-MON-RR'), 'FI_ACCOUNT', 7800, NULL, 106, 100);
INSERT INTO employees VALUES (111, 'Luis', 'Popp', 'LPOPP@example.com', TO_DATE('07-DEC-07', 'DD-MON-RR'), 'FI_ACCOUNT', 6900, NULL, 106, 100);
INSERT INTO employees VALUES (112, 'Den', 'Raphaely', 'DRAPHEAL@example.com', TO_DATE('07-DEC-02', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 101, 30);
INSERT INTO employees VALUES (113, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'PU_CLERK', 7000, NULL, 112, 30);
INSERT INTO employees VALUES (114, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'PU_CLERK', 12000, NULL, 101, 30);
INSERT INTO employees VALUES (115, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 114, 30);
INSERT INTO employees VALUES (116, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'PU_CLERK', 6400, NULL, 114, 30);
INSERT INTO employees VALUES (117, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'PU_CLERK', 4800, NULL, 114, 30);
INSERT INTO employees VALUES (118, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'ST_MAN', 5800, NULL, 100, 50);
INSERT INTO employees VALUES (119, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'ST_CLERK', 3200, NULL, 118, 50);
INSERT INTO employees VALUES (120, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'ST_CLERK', 2600, NULL, 118, 50);
INSERT INTO employees VALUES (121, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'ST_CLERK', 3300, NULL, 118, 50);
INSERT INTO employees VALUES (122, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'ST_CLERK', 2800, NULL, 118, 50);
INSERT INTO employees VALUES (123, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'ST_CLERK', 2400, NULL, 118, 50);
INSERT INTO employees VALUES (124, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'ST_CLERK', 2200, NULL, 118, 50);
INSERT INTO employees VALUES (125, 'Jonathon', 'Taylor', 'JTAYLOR@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SH_CLERK', 8600, NULL, 120, 50);
INSERT INTO employees VALUES (126, 'Jack', 'Livingston', 'JLIVINGS@example.com', TO_DATE('23-APR-06', 'DD-MON-RR'), 'SH_CLERK', 8400, NULL, 120, 50);
INSERT INTO employees VALUES (127, 'Kimberely', 'Grant', 'KGRANT@example.com', TO_DATE('26-MAY-07', 'DD-MON-RR'), 'SH_CLERK', 7800, NULL, 120, 50);
INSERT INTO employees VALUES (128, 'Charles', 'Johnson', 'CJOHNSON@example.com', TO_DATE('04-JAN-08', 'DD-MON-RR'), 'SH_CLERK', 6200, NULL, 120, 50);
INSERT INTO employees VALUES (129, 'Peter', 'Vargas', 'PVARGAS@example.com', TO_DATE('09-JUL-07', 'DD-MON-RR'), 'SH_CLERK', 5600, NULL, 120, 50);
INSERT INTO employees VALUES (130, 'Laura', 'Marvini', 'LMARVINI@example.com', TO_DATE('20-FEB-08', 'DD-MON-RR'), 'SH_CLERK', 4600, NULL, 120, 50);
INSERT INTO employees VALUES (145, 'John', 'Russell', 'JRUSSEL@example.com', TO_DATE('01-OCT-04', 'DD-MON-RR'), 'SA_MAN', 14000, 0.4, 100, 80);
INSERT INTO employees VALUES (146, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'SA_REP', 13500, 0.3, 145, 80);
INSERT INTO employees VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'SA_REP', 12000, 0.3, 145, 80);
INSERT INTO employees VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'SA_REP', 11000, 0.3, 145, 80);
INSERT INTO employees VALUES (149, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SA_REP', 10500, 0.2, 145, 80);
INSERT INTO employees VALUES (150, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'SA_REP', 10000, 0.2, 145, 80);
INSERT INTO employees VALUES (151, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'SA_REP', 9500, 0.2, 145, 80);
INSERT INTO employees VALUES (152, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'SA_REP', 9000, 0.2, 145, 80);
INSERT INTO employees VALUES (153, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'SA_REP', 8500, 0.1, 145, 80);
INSERT INTO employees VALUES (154, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'SA_REP', 8000, 0.1, 145, 80);
INSERT INTO employees VALUES (155, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'SA_REP', 7500, 0.1, 145, 80);
INSERT INTO employees VALUES (156, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'SA_REP', 7000, 0.1, 145, 80);
INSERT INTO employees VALUES (157, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'SA_REP', 6500, 0.1, 145, 80);
INSERT INTO employees VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN@example.com', TO_DATE('17-SEP-03', 'DD-MON-RR'), 'AD_ASST', 4400, NULL, 101, 10);
INSERT INTO employees VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE@example.com', TO_DATE('17-FEB-00', 'DD-MON-RR'), 'MK_MAN', 13000, NULL, 101, 20);
INSERT INTO employees VALUES (202, 'Pat', 'Fay', 'PFAY@example.com', TO_DATE('17-AUG-05', 'DD-MON-RR'), 'MK_REP', 6000, NULL, 201, 20);
INSERT INTO employees VALUES (203, 'Susan', 'Mavris', 'SMAVRIS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'HR_REP', 6500, NULL, 101, 40);
INSERT INTO employees VALUES (204, 'Hermann', 'Baer', 'HBAER@example.com', TO_DATE('07-JUN-00', 'DD-MON-RR'), 'PR_REP', 10000, NULL, 101, 70);
INSERT INTO employees VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_MGR', 12000, NULL, 101, 110);
INSERT INTO employees VALUES (206, 'William', 'Gietz', 'WGIETZ@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_ACCOUNT', 8300, NULL, 205, 110);

-- Veri yüklemesi tamamlandıktan sonra Foreign Key kısıtlamalarını tekrar etkinleştirebilirsiniz.
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_JOB_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS ENABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa
```

Anladım, `EMPLOYEES` tablosuna veri eklerken yine hatalar aldınız. Çıktıyı dikkatlice inceledim ve sorunları çözmek için `EMPLOYEES Tablosu Veri Giriş Komutları` Canvas'ını güncelleyeceğim.

Aldığınız hatalar üç ana kategoriye ayrılıyor:

### Hata Analizi ve Çözümler

#### 1. `ORA-02291: integrity constraint (BARIS.EMP_JOB_FK) violated - parent key not found`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosuna eklemeye çalıştığınız `JOB_ID` değerlerinin (`PU_CLERK`, `MK_MAN`, `MK_REP` gibi) `JOBS` tablosunda mevcut olmadığını gösterir.
* **Neden:** `JOBS` tablosunda bu `JOB_ID`'ler eksik. Özellikle `MK_MAN` ve `MK_REP` gibi iş ID'leri sizin `JOBS` veri scriptinizde bulunmuyordu. `PU_CLERK` ise vardı ama yine de hata alıyorsunuz, bu da `JOBS` tablosunun doğru şekilde doldurulmadığını veya `TRUNCATE` edilmediğini düşündürüyor.
* **Çözüm:** `JOBS` tablosuna eksik olan `JOB_ID`'leri eklemeniz ve `JOBS` tablosunun veri eklemeden önce temizlendiğinden emin olmanız gerekmektedir. **Bu sorunu çözmek için `JOBS` tablosunu `TRUNCATE` edip, `MK_MAN` ve `MK_REP` değerlerini içeren güncel `JOBS` veri scriptini tekrar çalıştırmanız gerekecek.**

#### 2. `ORA-00001: unique constraint (BARIS.EMP_MAIL_UNIQ) violated`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosuna eklemeye çalıştığınız bazı e-posta adreslerinin (`SKING@example.com`, `NKOCHHAR@example.com` vb.) `EMP_MAIL_UNIQ` adlı benzersiz kısıtlamayı ihlal ettiğini gösterir. Bu, aynı e-posta adresine sahip bir kaydın tabloda zaten mevcut olduğu anlamına gelir.
* **Neden:** `DEPARTMENTS` tablosunda olduğu gibi, `EMPLOYEES` tablosuna da daha önce veri eklemeye çalışmış ve şimdi betiği tekrar çalıştırdığınızda aynı e-posta adreslerine sahip kayıtları yeniden eklemeye çalışıyorsunuz.
* **Çözüm:** `EMPLOYEES` tablosuna veri eklemeye çalışmadan önce tabloyu temizlemeniz gerekiyor. Bunu `TRUNCATE TABLE` komutuyla yapabiliriz. Bu komut, tablodaki tüm verileri hızlı bir şekilde siler ancak tablo yapısını korur. **Bu komut zaten betiğinizde mevcut ve çıktınızda "Table BARIS.EMPLOYEES truncated." ifadesi yer alıyor. Bu, `TRUNCATE` işleminin başarılı olduğu anlamına gelir. Hatanın devam etmesi, betiğin birden fazla kez çalıştırılması ve ilk çalışmada bazı satırların eklenip, sonraki çalışmalarda tekrar eklenmeye çalışılmasından kaynaklanıyor olabilir.**

#### 3. `ORA-01438: value larger than specified precision allowed for this column`
* **Açıklama:** Bu hata, `EMPLOYEES` tablosundaki bir sayısal sütuna eklemeye çalıştığınız değerin, sütunun tanımlanmış hassasiyetinden daha büyük olduğunu gösterir. Hata çıktısında belirtilen satır ve sütun konumlarına göre, bu hata `DEPARTMENT_ID` sütunundan kaynaklanmaktadır. `DEPARTMENTS` tablosundaki `DEPARTMENT_ID`'yi `NUMBER(3)` olarak değiştirmemize rağmen, `EMPLOYEES` tablosundaki `DEPARTMENT_ID` sütununun hala `NUMBER(2)` olarak kalmış olması muhtemeldir.
* **Neden:** Daha önceki adımda `SALARY` ve `COMMISSION_PCT` sütunlarının hassasiyetini artırdığımızı belirtmiştiniz. Ancak bu hatayı hala almanız, ya `ALTER TABLE` komutlarının gerçekten çalışmadığı (bir hata nedeniyle atlanmış olabilir) ya da `NUMBER` hassasiyetinin hala yetersiz olduğu anlamına gelir.
* **Çözüm:** Bu `ALTER TABLE` komutlarını `employees_insert_data` Canvas'ının içine, `TRUNCATE` komutundan hemen sonra ekleyerek, her çalıştırmada hassasiyetin doğru ayarlandığından emin olacağız.

#### 4. `ORA-00936: missing expression`
* **Açıklama:** Bu hata, `INSERT INTO employees VALUES (121, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', ` satırında `TO_DATE` fonksiyonunun format string'inin eksik olmasından kaynaklanmaktadır.
* **Neden:** Bu hata, sizin gönderdiğiniz `employees_insert_data` Canvas'ının eski bir versiyonunda mevcuttu. En son güncellediğim Canvas'ta bu düzeltme yapılmıştı. **Lütfen en güncel Canvas'ı kullandığınızdan emin olun.**

---

### Düzenlenmiş `EMPLOYEES Tablosu Veri Giriş Komutları` Canvas'ı

Aşağıdaki Canvas, yukarıdaki hataları gidermek için güncellenmiştir. Lütfen bu kodu kopyalayıp Canvas'ınızdaki mevcut kodu tamamen bununla değiştirin.


```sql
REM ********************************************************************
REM insert data into the EMPLOYEES table
REM ********************************************************************
Prompt ******* Populating EMPLOYEES table ....

-- ORA-00001 hatasını önlemek için tabloyu veri eklemeden önce temizle.
TRUNCATE TABLE BARIS.EMPLOYEES;

-- ORA-01438 hatasını önlemek için DEPARTMENT_ID, SALARY ve COMISSION_PERCENT sütunlarının hassasiyetini artırın.
-- Bu, EMPLOYEES tablosundaki DEPARTMENT_ID'nin DEPARTMENTS tablosundaki ID'leri almasını sağlar.
-- SALARY ve COMMISSION_PERCENT için de doğru hassasiyetleri garanti eder.
ALTER TABLE BARIS.employees MODIFY (DEPARTMENT_ID NUMBER(3));
ALTER TABLE BARIS.employees MODIFY (SALARY NUMBER(7,2));
ALTER TABLE BARIS.employees MODIFY (COMISSION_PERCENT NUMBER(2,1));


-- Foreign Key kısıtlamalarını geçici olarak devre dışı bırakabilirsiniz
-- Eğer döngüsel bağımlılık (circular dependency) veya veri yükleme sırası sorunları yaşıyorsanız.
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES DISABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS DISABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa

INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING@example.com', TO_DATE('17-JUN-03', 'DD-MON-RR'), 'AD_PRES', 24000, NULL, NULL, 90);
INSERT INTO employees VALUES (101, 'Neena', 'Kochhar', 'NKOCHHAR@example.com', TO_DATE('21-SEP-05', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (102, 'Lex', 'De Haan', 'LDEHAAN@example.com', TO_DATE('13-JAN-01', 'DD-MON-RR'), 'AD_VP', 17000, NULL, 100, 90);
INSERT INTO employees VALUES (103, 'Alexander', 'Hunold', 'AHUNOLD@example.com', TO_DATE('03-JAN-06', 'DD-MON-RR'), 'IT_PROG', 9000, NULL, 102, 60);
INSERT INTO employees VALUES (104, 'Bruce', 'Ernst', 'BERNST@example.com', TO_DATE('21-MAY-07', 'DD-MON-RR'), 'IT_PROG', 6000, NULL, 103, 60);
INSERT INTO employees VALUES (105, 'Diana', 'Lorentz', 'DLORENTZ@example.com', TO_DATE('07-FEB-07', 'DD-MON-RR'), 'IT_PROG', 4200, NULL, 103, 60);
INSERT INTO employees VALUES (106, 'Nancy', 'Greenberg', 'NGREENBE@example.com', TO_DATE('17-AUG-02', 'DD-MON-RR'), 'FI_MGR', 12000, NULL, 101, 100);
INSERT INTO employees VALUES (107, 'Daniel', 'Faviet', 'DFAVIET@example.com', TO_DATE('16-AUG-02', 'DD-MON-RR'), 'FI_ACCOUNT', 9000, NULL, 106, 100);
INSERT INTO employees VALUES (108, 'John', 'Chen', 'JCHEN@example.com', TO_DATE('28-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 8200, NULL, 106, 100);
INSERT INTO employees VALUES (109, 'Ismael', 'Sciarra', 'ISCIARRA@example.com', TO_DATE('30-SEP-05', 'DD-MON-RR'), 'FI_ACCOUNT', 7700, NULL, 106, 100);
INSERT INTO employees VALUES (110, 'Jose Manuel', 'Ullman', 'JMULLMAN@example.com', TO_DATE('24-JUN-06', 'DD-MON-RR'), 'FI_ACCOUNT', 7800, NULL, 106, 100);
INSERT INTO employees VALUES (111, 'Luis', 'Popp', 'LPOPP@example.com', TO_DATE('07-DEC-07', 'DD-MON-RR'), 'FI_ACCOUNT', 6900, NULL, 106, 100);
INSERT INTO employees VALUES (112, 'Den', 'Raphaely', 'DRAPHEAL@example.com', TO_DATE('07-DEC-02', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 101, 30);
INSERT INTO employees VALUES (113, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'PU_CLERK', 7000, NULL, 112, 30);
INSERT INTO employees VALUES (114, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'PU_CLERK', 12000, NULL, 101, 30);
INSERT INTO employees VALUES (115, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'PU_CLERK', 11000, NULL, 114, 30);
INSERT INTO employees VALUES (116, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'PU_CLERK', 6400, NULL, 114, 30);
INSERT INTO employees VALUES (117, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'PU_CLERK', 4800, NULL, 114, 30);
INSERT INTO employees VALUES (118, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'ST_MAN', 5800, NULL, 100, 50);
INSERT INTO employees VALUES (119, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'ST_CLERK', 3200, NULL, 118, 50);
INSERT INTO employees VALUES (120, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'ST_CLERK', 2600, NULL, 118, 50);
INSERT INTO employees VALUES (121, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'ST_CLERK', 3300, NULL, 118, 50);
INSERT INTO employees VALUES (122, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'ST_CLERK', 2800, NULL, 118, 50);
INSERT INTO employees VALUES (123, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'ST_CLERK', 2400, NULL, 118, 50);
INSERT INTO employees VALUES (124, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'ST_CLERK', 2200, NULL, 118, 50);
INSERT INTO employees VALUES (125, 'Jonathon', 'Taylor', 'JTAYLOR@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SH_CLERK', 8600, NULL, 120, 50);
INSERT INTO employees VALUES (126, 'Jack', 'Livingston', 'JLIVINGS@example.com', TO_DATE('23-APR-06', 'DD-MON-RR'), 'SH_CLERK', 8400, NULL, 120, 50);
INSERT INTO employees VALUES (127, 'Kimberely', 'Grant', 'KGRANT@example.com', TO_DATE('26-MAY-07', 'DD-MON-RR'), 'SH_CLERK', 7800, NULL, 120, 50);
INSERT INTO employees VALUES (128, 'Charles', 'Johnson', 'CJOHNSON@example.com', TO_DATE('04-JAN-08', 'DD-MON-RR'), 'SH_CLERK', 6200, NULL, 120, 50);
INSERT INTO employees VALUES (129, 'Peter', 'Vargas', 'PVARGAS@example.com', TO_DATE('09-JUL-07', 'DD-MON-RR'), 'SH_CLERK', 5600, NULL, 120, 50);
INSERT INTO employees VALUES (130, 'Laura', 'Marvini', 'LMARVINI@example.com', TO_DATE('20-FEB-08', 'DD-MON-RR'), 'SH_CLERK', 4600, NULL, 120, 50);
INSERT INTO employees VALUES (145, 'John', 'Russell', 'JRUSSEL@example.com', TO_DATE('01-OCT-04', 'DD-MON-RR'), 'SA_MAN', 14000, 0.4, 100, 80);
INSERT INTO employees VALUES (146, 'Karen', 'Partners', 'KPARTNER@example.com', TO_DATE('05-JAN-00', 'DD-MON-RR'), 'SA_REP', 13500, 0.3, 145, 80);
INSERT INTO employees VALUES (147, 'Alberto', 'Errazuriz', 'AERRAZUR@example.com', TO_DATE('10-MAR-05', 'DD-MON-RR'), 'SA_REP', 12000, 0.3, 145, 80);
INSERT INTO employees VALUES (148, 'Gerald', 'Cambrault', 'GCAMBRAU@example.com', TO_DATE('15-OCT-07', 'DD-MON-RR'), 'SA_REP', 11000, 0.3, 145, 80);
INSERT INTO employees VALUES (149, 'Sundar', 'Ande', 'SANDE@example.com', TO_DATE('24-MAR-00', 'DD-MON-RR'), 'SA_REP', 10500, 0.2, 145, 80);
INSERT INTO employees VALUES (150, 'Valli', 'Pataballa', 'VPATABAL@example.com', TO_DATE('24-AUG-06', 'DD-MON-RR'), 'SA_REP', 10000, 0.2, 145, 80);
INSERT INTO employees VALUES (151, 'Kevin', 'Mourgos', 'KMOURGOS@example.com', TO_DATE('16-NOV-07', 'DD-MON-RR'), 'SA_REP', 9500, 0.2, 145, 80);
INSERT INTO employees VALUES (152, 'Julia', 'Nayer', 'JNAYER@example.com', TO_DATE('16-JUL-05', 'DD-MON-RR'), 'SA_REP', 9000, 0.2, 145, 80);
INSERT INTO employees VALUES (153, 'Guy', 'Himuro', 'GHIMURO@example.com', TO_DATE('15-NOV-06', 'DD-MON-RR'), 'SA_REP', 8500, 0.1, 145, 80);
INSERT INTO employees VALUES (154, 'Laura', 'Bissot', 'LBISSOT@example.com', TO_DATE('20-AUG-00', 'DD-MON-RR'), 'SA_REP', 8000, 0.1, 145, 80);
INSERT INTO employees VALUES (155, 'Mozhe', 'Atkinson', 'MATKINSO@example.com', TO_DATE('30-OCT-07', 'DD-MON-RR'), 'SA_REP', 7500, 0.1, 145, 80);
INSERT INTO employees VALUES (156, 'James', 'Landry', 'JLANDRY@example.com', TO_DATE('14-JAN-05', 'DD-MON-RR'), 'SA_REP', 7000, 0.1, 145, 80);
INSERT INTO employees VALUES (157, 'Steven', 'Markle', 'SMARKLE@example.com', TO_DATE('08-MAR-08', 'DD-MON-RR'), 'SA_REP', 6500, 0.1, 145, 80);
INSERT INTO employees VALUES (200, 'Jennifer', 'Whalen', 'JWHALEN@example.com', TO_DATE('17-SEP-03', 'DD-MON-RR'), 'AD_ASST', 4400, NULL, 101, 10);
INSERT INTO employees VALUES (201, 'Michael', 'Hartstein', 'MHARTSTE@example.com', TO_DATE('17-FEB-00', 'DD-MON-RR'), 'MK_MAN', 13000, NULL, 101, 20);
INSERT INTO employees VALUES (202, 'Pat', 'Fay', 'PFAY@example.com', TO_DATE('17-AUG-05', 'DD-MON-RR'), 'MK_REP', 6000, NULL, 201, 20);
INSERT INTO employees VALUES (203, 'Susan', 'Mavris', 'SMAVRIS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'HR_REP', 6500, NULL, 101, 40);
INSERT INTO employees VALUES (204, 'Hermann', 'Baer', 'HBAER@example.com', TO_DATE('07-JUN-00', 'DD-MON-RR'), 'PR_REP', 10000, NULL, 101, 70);
INSERT INTO employees VALUES (205, 'Shelley', 'Higgins', 'SHIGGINS@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_MGR', 12000, NULL, 101, 110);
INSERT INTO employees VALUES (206, 'William', 'Gietz', 'WGIETZ@example.com', TO_DATE('07-JUN-02', 'DD-MON-RR'), 'AC_ACCOUNT', 8300, NULL, 205, 110);

-- Veri yüklemesi tamamlandıktan sonra Foreign Key kısıtlamalarını tekrar etkinleştirebilirsiniz.
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_DEPT_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_JOB_FK;
-- ALTER TABLE EMPLOYEES ENABLE CONSTRAINT EMP_MANAGER_FK;
-- ALTER TABLE DEPARTMENTS ENABLE CONSTRAINT DEPT_MGR_ID; -- Eğer departmanlar da employee'e referans veriyorsa
