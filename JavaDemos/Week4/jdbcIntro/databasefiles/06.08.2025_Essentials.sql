CREATE DATABASE IF NOT EXISTS world; -- creating database
USE world; -- using world as default database

-- creating country table
CREATE TABLE country (
  Code CHAR(3) PRIMARY KEY,            -- e.g. 'USA', 'DEU'
  Name VARCHAR(52) NOT NULL,
  Continent VARCHAR(20) NOT NULL,
  Region VARCHAR(26) NOT NULL,
  SurfaceArea FLOAT NOT NULL,          
  IndepYear SMALLINT,                  -- Nullable (some countries might not have independence years)
  Population INT NOT NULL,
  LifeExpectancy FLOAT,
  GNP FLOAT,
  GNPOld FLOAT,
  LocalName VARCHAR(45) NOT NULL
);

-- creating city table
CREATE TABLE city (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(35) NOT NULL,
  CountryCode CHAR(3) NOT NULL,
  District VARCHAR(20) NOT NULL,
  Population INT NOT NULL,
  FOREIGN KEY (CountryCode)
    REFERENCES country(Code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- creating countrylanguage table
CREATE TABLE countrylanguage (
  CountryCode CHAR(3) NOT NULL,
  Language VARCHAR(30) NOT NULL,
  IsOfficial ENUM('T','F') NOT NULL,
  Percentage FLOAT NOT NULL,
  PRIMARY KEY (CountryCode, Language),
  FOREIGN KEY (CountryCode)
    REFERENCES country(Code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM COUNTRY; -- to get all data in country table

SELECT * FROM COUNTRY WHERE CONTİNENT = 'Asia' and REGiON = 'Middle East';

SELECT CODE, NAME, CONTİNENT, REGİON FROM COUNTRY
WHERE CONTİNENT = 'Europe';

-- CRUD: CREATE, READ, UPDATE, DELETE

-- ID is auto increment so we don't insert value for id
insert into city (Name, CountryCode, District, Population) values ('Düzce', 'TUR', 'Düzce', 345965)

set SQL_SAFE_UPDATES = 0;
update city set Population = 60000 where name = 'Düzce' -- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.

delete from city where id = 17