-- sum min max avg
//Sum(): Se�ilen s�tunun de�erlerinin toplam�n� verir.
SELECT cinsiyet, sum(maas) AS maas FROM Calisanlar GROUP BY cinsiyet;    // Bir y�lda �denen toplam maa� miktar�n�n cinsiyete g�re listelenmesi.
SELECT calistigisehir, sum(maas) AS maas FROM Calisanlar GROUP BY calistigisehir;  //// Bir y�lda �denen toplam maa� miktar�n�n sehirlere g�re listelenmesi

//Min(): Se�ilen s�tunun en k���k de�erini verir. 
//Max(): Se�ilen s�tunun en b�y�k de�erini verir. 
SELECT calistigisehir, min(maas) AS maas FROM calisanlar GROUP BY calistigisehir;     //�llerde ki en d���k maa�lar� listeler.
SELECT calistigisehir, max(maas) AS maas FROM calisanlar GROUP BY calistigisehir;     //�llerde ki en y�ksek maa�lar� listeler.

// Avg(): Se�ilen s�tunun de�erlerinin ortalamas�n� verir.
SELECT calisanlar, avg(maas) AS ortalama FROM calisanlar GROUP BY calisanlar;           //Odenen maa�lar�n illere g�re ortalamas�n� listeler.   SORRR

SELECT isim,soyisim,yas MAX(maas) FROM calisanlar WHERE yas>35 GROUP BY isim,soyisim, yas;   // 35 ya��n �st�ndekilerden en �ok maa� alanlar SORR

SELECT isim,soyisim MAX(maas) FROM calisanlar WHERE yas<35 GROUP BY isim,soyisim;          // // 35 ya��n �st�ndekilerden en az maa� alanlar SORR

select * from calisanlar where maas >(select avg(maas) from calisanlar);        // ortalaman�n ustundeki maas alanlar� g�sterir 
select * from calisanlar where maas >(select min(maas) from calisanlar);        // ortalaman�n alt�ndaki maas alanlar� g�sterir 
select * from calisanlar where maas in (select max(maas) from calisanlar);      // en �ok maas alan� g�sterir 
select * from calisanlar where maas in (select min(maas) from calisanlar);      // en az maas alan� g�sterir 

select avg(maas) as "ortalama maas" from calisanlar;                             // maas s�tununun ortalamas�n g�sterir
select max(maas) as "En Fazla maas" from calisanlar;                            // en fazla maas ne kadar onu g�sterir



SELECT CalistigiSehir,MIN(MAAS)  "fazla maas alanlar" FROM CALISANLAR GROUP BY CalistigiSehir HAVING  MIN(MAAS)>=8500;  //cal�st�g� sehre g�re 8500den fazla maas alanlar� g�sterir
SELECT CalistigiSehir, MAAS FROM CALISANLAR WHERE MAAS >=8500;                           //cal�st�g� sehre g�re 8500den fazla maas alanlar� g�sterir

SELECT meslek,Max(MAAS)  "en cok maas alanlar" FROM CALISANLAR GROUP BY meslek HAVING  Max(MAAS)>10000;     // meslege g�re 10000den fazla maas alanlar

SELECT CalistigiSehir,MESLEK, MAAS FROM CALISANLAR WHERE MAAS >8500;    // meslege ve �al�st�g� �ehre  g�re 8500den fazla maas alanlar

select yas, count(*) from calisanlar group by yas having count(yas)>1;     //birden fazla tekrarlanan yaslar 

SELECT * FROM CALISANLAR WHERE MAAS IS NULL ;       // maas� null olanlar 
select * from Calisanlar where meslek is null;     // where kullan�m� ve mesle�i null olanlar� yazd�r�r



ALTER TABLE CALISANLAR ADD MEMLEKET VARCHAR(50);      // tabloya memleket s�tunu  ekler

select * from calisanlar;

ALTER TABLE CALISANLAR ADD MEMLEKET_2 VARCHAR(50) DEFAULT 'KAYSERI ';  //tabloya memleket2 s�tunu  ekler

ALTER TABLE CALISANLAR DROP COLUMN MEMLEKET;             // SORRR
select * from calisanlar;

ALTER TABLE CALISANLAR RENAME COLUMN OKUL TO UNIVERS�TE;  // OKULU UNVERSITEYE CEV�R�R

ALTER TABLE CALISANLAR ADD ISE_GIRIS_TARIHI VARCHAR(50) DEFAULT '01/10/2010';  //tabloya i�e giri� tarihi ekler ve 01/10/2010 tarihini ekler   

SELECT DISTINCT ISIM FROM CALISANLAR;                                          // TEKRARLANANLARI G�STER�R
SELECT DISTINCT MEMLEKET FROM CALISANLAR;


select isim, count(*) from calisanlar group by isim having count (*)>1; //biden fazla tekrarlanan isimleri  g�sterir


select * from Calisanlar order by isim asc; // order by kullan�m� ve ismi a dan z ye s�ralama

SELECT COUNT(maas) FROM calisanlar;					//count kullanimi ve maas alanlar�n say�s�n� g�sterir

select * from Calisanlar where cinsiyet like 'Erkek' order by isim asc;			//where&like&orderby kullanimi ve erkek olanlar� a dan z ye s�ralama

select cinsiyet, count(*) from calisanlar group by cinsiyet;                    // cinsiyete g�re ka� ki�i var onu g�sterir

select * from calisanlar order by meslek;










