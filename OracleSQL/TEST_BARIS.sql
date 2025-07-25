DESC REGIONS -- DESC: description

INSERT INTO regions VALUES (1,'Europe'); -- 1. SYNTAX TYPE

ALTER TABLE REGIONS ADD POPULATE NUMBER(15); -- to add a column to the table

-- INSERT INTO regions VALUES (1,'Europe'); -- we will get error after this line because we should write columns name

INSERT INTO regions (region_id, region_name) VALUES (2,'Asia'); -- suggested use syntax

ALTER TABLE REGIONS DROP COLUMN POPULATE; -- to delete populate column

-- -----------------------------------------------------------------------------------------------------

DESC COUNTRIES;

INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES ('TR', 'Türkiye', 1);

-- INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES ('TR', 'KKTC', 1);
-- we'll get error after this line beacause country_id is uniqe

-- INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES ('KK', 'KKTC', 3);
-- we'll get error after this line beacause there is no foreing key for 3 right now
-- Integrity Constraint

INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES ('KT', 'KKTC', 1);

INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES ('IT', 'Italy', 1);

SELECT * FROM COUNTRIES;