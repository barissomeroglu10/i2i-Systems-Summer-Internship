-- journey to start over
DROP TABLE JOB_HISTORY CASCADE CONSTRAINTS; -- Cascade ile FK'ları da siler
DROP TABLE EMPLOYEES CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENTS CASCADE CONSTRAINTS;
DROP TABLE LOCATIONS CASCADE CONSTRAINTS;
DROP TABLE COUNTRIES CASCADE CONSTRAINTS;
DROP TABLE REGIONS CASCADE CONSTRAINTS;
DROP TABLE JOBS CASCADE CONSTRAINTS;

-- Bu betik, veri eklemeden önce belirli sütunların hassasiyetini (boyutunu) ayarlar.
-- Bu, özellikle sayısal sütunlara büyük değerler veya ondalıklı değerler eklerken
-- ortaya çıkabilecek ORA-01438 hatalarını önlemek içindir.

Prompt ******* EMPLOYEES tablosundaki sütun hassasiyetleri ayarlanıyor ....

-- SALARY sütununu NUMBER(7,2) olarak değiştirir.
-- Bu, maaş değerlerinin toplamda 7 basamak (ondalık dahil) ve
-- ondalık kısmında 2 basamak içermesine izin verir.
-- Örneğin, 99999.99 gibi değerleri saklayabilir.
ALTER TABLE BARIS.employees MODIFY (SALARY NUMBER(7,2));

-- COMISSION_PERCENT sütununu NUMBER(2,1) olarak değiştirir.
-- Bu, komisyon yüzdesi değerlerinin toplamda 2 basamak (ondalık dahil) ve
-- ondalık kısmında 1 basamak içermesine izin verir.
-- Örneğin, 9.9 gibi değerleri saklayabilir (0.1, 0.2, 0.3, 0.4 gibi değerler için yeterlidir).
ALTER TABLE BARIS.employees MODIFY (COMISSION_PERCENT NUMBER(2,1));

Prompt ******* Sütun hassasiyetleri başarıyla ayarlandı.
