CREATE TYPE ADRES_T AS OBJECT( -- kendi veritipimizi oluşturma aşaması
  CADDE VARCHAR2(30),
  SEHIR VARCHAR2(30),
  ULKE_KODU CHAR(2),
  POSTA_KODU CHAR(5)
); -- bu şekilde bir object tipi oluşturduk

CREATE TYPE adres_tab IS TABLE OF ADRES_T; -- veritipimizden bir kopys oluşturduk

INSERT INTO MUSTERILER VALUES (1,
ADRES_TAB(
 ADRES_T('İstanbul cad.', 'Ankara', 'TR', '06100'),
 ADRES_T('Ankara cad.', 'Çankırı', 'TR', '06200')
 )
);

INSERT INTO MUSTERILER VALUES (2,
ADRES_TAB(
 ADRES_T('İpekyolu cad.', 'Van', 'TR', '65000'),
 ADRES_T('Özgürlük cad.', 'Diyarbakır', 'TR', '21000')
 )
);

-- SELECT * FROM musteriler; user define data type'lar için bu çağrım sonucunda tüm bilgiler açık olarak tabloya gelmez

SELECT
 M.MUSTERI_ID, U.*
FROM MUSTERILER M, TABLE(ADRES) U;