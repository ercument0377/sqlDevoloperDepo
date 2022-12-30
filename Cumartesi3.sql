-- sum min max avg
//Sum(): Seçilen sütunun deðerlerinin toplamýný verir.
SELECT cinsiyet, sum(maas) AS maas FROM Calisanlar GROUP BY cinsiyet;    // Bir yýlda ödenen toplam maaþ miktarýnýn cinsiyete göre listelenmesi.
SELECT calistigisehir, sum(maas) AS maas FROM Calisanlar GROUP BY calistigisehir;  //// Bir yýlda ödenen toplam maaþ miktarýnýn sehirlere göre listelenmesi

//Min(): Seçilen sütunun en küçük deðerini verir. 
//Max(): Seçilen sütunun en büyük deðerini verir. 
SELECT calistigisehir, min(maas) AS maas FROM calisanlar GROUP BY calistigisehir;     //Ýllerde ki en düþük maaþlarý listeler.
SELECT calistigisehir, max(maas) AS maas FROM calisanlar GROUP BY calistigisehir;     //Ýllerde ki en yüksek maaþlarý listeler.

// Avg(): Seçilen sütunun deðerlerinin ortalamasýný verir.
SELECT calisanlar, avg(maas) AS ortalama FROM calisanlar GROUP BY calisanlar;           //Odenen maaþlarýn illere göre ortalamasýný listeler.   SORRR

SELECT isim,soyisim,yas MAX(maas) FROM calisanlar WHERE yas>35 GROUP BY isim,soyisim, yas;   // 35 yaþýn üstündekilerden en çok maaþ alanlar SORR

SELECT isim,soyisim MAX(maas) FROM calisanlar WHERE yas<35 GROUP BY isim,soyisim;          // // 35 yaþýn üstündekilerden en az maaþ alanlar SORR

select * from calisanlar where maas >(select avg(maas) from calisanlar);        // ortalamanýn ustundeki maas alanlarý gösterir 
select * from calisanlar where maas >(select min(maas) from calisanlar);        // ortalamanýn altýndaki maas alanlarý gösterir 
select * from calisanlar where maas in (select max(maas) from calisanlar);      // en çok maas alaný gösterir 
select * from calisanlar where maas in (select min(maas) from calisanlar);      // en az maas alaný gösterir 

select avg(maas) as "ortalama maas" from calisanlar;                             // maas sütununun ortalamasýn gösterir
select max(maas) as "En Fazla maas" from calisanlar;                            // en fazla maas ne kadar onu gösterir



SELECT CalistigiSehir,MIN(MAAS)  "fazla maas alanlar" FROM CALISANLAR GROUP BY CalistigiSehir HAVING  MIN(MAAS)>=8500;  //calýstýgý sehre göre 8500den fazla maas alanlarý gösterir
SELECT CalistigiSehir, MAAS FROM CALISANLAR WHERE MAAS >=8500;                           //calýstýgý sehre göre 8500den fazla maas alanlarý gösterir

SELECT meslek,Max(MAAS)  "en cok maas alanlar" FROM CALISANLAR GROUP BY meslek HAVING  Max(MAAS)>10000;     // meslege göre 10000den fazla maas alanlar

SELECT CalistigiSehir,MESLEK, MAAS FROM CALISANLAR WHERE MAAS >8500;    // meslege ve çalýstýgý þehre  göre 8500den fazla maas alanlar

select yas, count(*) from calisanlar group by yas having count(yas)>1;     //birden fazla tekrarlanan yaslar 

SELECT * FROM CALISANLAR WHERE MAAS IS NULL ;       // maasý null olanlar 
select * from Calisanlar where meslek is null;     // where kullanýmý ve mesleði null olanlarý yazdýrýr



ALTER TABLE CALISANLAR ADD MEMLEKET VARCHAR(50);      // tabloya memleket sütunu  ekler

select * from calisanlar;

ALTER TABLE CALISANLAR ADD MEMLEKET_2 VARCHAR(50) DEFAULT 'KAYSERI ';  //tabloya memleket2 sütunu  ekler

ALTER TABLE CALISANLAR DROP COLUMN MEMLEKET;             // SORRR
select * from calisanlar;

ALTER TABLE CALISANLAR RENAME COLUMN OKUL TO UNIVERSÝTE;  // OKULU UNVERSITEYE CEVÝRÝR

ALTER TABLE CALISANLAR ADD ISE_GIRIS_TARIHI VARCHAR(50) DEFAULT '01/10/2010';  //tabloya iþe giriþ tarihi ekler ve 01/10/2010 tarihini ekler   

SELECT DISTINCT ISIM FROM CALISANLAR;                                          // TEKRARLANANLARI GÖSTERÝR
SELECT DISTINCT MEMLEKET FROM CALISANLAR;


select isim, count(*) from calisanlar group by isim having count (*)>1; //biden fazla tekrarlanan isimleri  gösterir


select * from Calisanlar order by isim asc; // order by kullanýmý ve ismi a dan z ye sýralama

SELECT COUNT(maas) FROM calisanlar;					//count kullanimi ve maas alanlarýn sayýsýný gösterir

select * from Calisanlar where cinsiyet like 'Erkek' order by isim asc;			//where&like&orderby kullanimi ve erkek olanlarý a dan z ye sýralama

select cinsiyet, count(*) from calisanlar group by cinsiyet;                    // cinsiyete göre kaç kiþi var onu gösterir

select * from calisanlar order by meslek;










