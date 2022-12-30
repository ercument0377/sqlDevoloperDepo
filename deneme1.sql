        CALISMA SAYFASI
  
ORDER BY :Buyuk kucuk sirasina gore duzenler. 
select * from calisanlar order by yas;  //KUCUKTEN BUYUGE
select * from calisanlar order by yas ASC;  //KUCUKTEN BUYUGE
select * from calisanlar order by maas desc; //BUYUKTEN KUCUGE                        
select * from calisanlar order by yas desc;   //BUYUKTEN KUCUGE
?
HAVING: Bunu Group by ile kullaniyoruz. Suzmeyi sarta baglar.
select yas,count(*) from calisanlar group by yas having count(*)>1; 
select yas,count(*) from calisanlar group by yas having count(*)<10;
select memleket,count(*) from calisanlar group by memleket;
?
SUM: Verilerin toplamini verir. Toplam maas gibi
select cinsiyet, sum(maas) as"toplam maas" from calisanlar group by cinsiyet having sum(maas)>10000;
select memleket, sum(yas) as "toplam yas" from calisanlar group by memleket having sum(yas)>30;
                                            //Yasi 30'un uzerinde olanlarin yaslarinin toplami 
GROUP BY:Verileri tek tek gruplandirir.
select count(isim), soyisim from calisanlar group by soyisim; 
select count(isim), cinsiyet from calisanlar group by cinsiyet;
?
WHERE
select cinsiyet,okul,maas from calisanlar where maas>10000;
select cinsiyet,okul,yas from calisanlar where yas<=30;
?
MAX, MIN
select cinsiyet,min(yas) "en genc calisan" from calisanlar group by cinsiyet having min(yas)<=20;
select soyisim,max(yas) "en yasli calisan" from calisanlar group by soyisim having max(yas)>=50;
SELECT MAX(MAAS) "EN BUYUK MAAS" FROM CALISANLAR HAVING MAX(MAAS)>=5000;
select min(yas) "en kucuk yas" from calisanlar having min(yas)<=30;
?
DROP:Veri tabanindaki bir nesneyi silmek icin kullanilir.
alter table calisanlar DROP COLUMN KISILER; 
truncate table calisanlar;    //tablonun tamamini siler'''''
?
RENAME:Tblodaki herhangi bir sutun ismi degistirir.
alter table calisanlar RENAME column kisi to kisiler; 
?
UPDATE:Guncellemeler yapilir.
UPDATE CALISANLAR SET ID = '66655544', SOYISIM='Akilli' where soyisim='Yilmaz';
                                      //  Soyadi YILMAZ Olan kaydin ID ve SOYISIMini degistirdim.
update calisanlar set ID='33366699' where isim='Yildiz';               // Tek hane guncellesti.
?
ADD:Ekleme yapar.
ALTER TABLE CALISANLAR ADD KISIyi NUMBER(7);
alter table calisanlar add kisi number(20);
?
DISTINCT :Bir sutunda tekrar etmeyen verileri getirir.
select distinct isim from calisanlar;
select distinct boy from calisanlar;
select distinct maas from calisanlar;
select DISTINCT city from MOCK_DATA order by city; // Kim hangi sehirde yasiyor
?
LIKE: Bezer ifadeleri gosterir.
select * from calisanlar where memleket LIKE 'B%';  //Memleketi B ile baslayanlar 
select *from calisanlar where okul like '_o%';       //okul'un 2. harfi O olan okullar
select * from calisanlar where memleket LIKE '[A-H]%';  ??  //ilk harfi A ile H arasinda baslayan isimler
SELECT * FROM CALISANLAR WHERE memleket LIKE '[^A-H]%';   ?? //A ile H arasinda olmayan soyisimler
select * from MOCK_DATA WHERE EMAIL LIKE '%google%';
select * from MOCK_DATA WHERE EMAIL LIKE '%gov%';
?
select * from calisanlar;
?
PRIMARY KEY: Tekrarlanmayan ve ozel veriler icin kullanilir.
alter table calisanlar add constraint pk_calisanlar primary key (maas);    //calisanlar alanini birincil anahtar yapiniz
alter table calisanlar drop constrain pk_calisanlar;                       // anahtar tablosunda birincil anahtari silin
?
SELECT CITY, COUNT(*)FROM MOCK_DATA GROUP BY CITY;   //Kac sehir var
?
MIN
select CITY,min(Salery) "en dusuk maas" from MOCK_DATA group by City having min(Salery)<=10;  //En genc calisan cehirliler
MAX
select CITY,max(Salery) "en yuksek maas" from MOCK_DATA group by City having max(Salery)>=80;  //En genc calisan cehirliler
?
SELECT * FROM MOCK_DATA WHERE GENDER='Female' AND CITY='Veternik';  //Veternik'dan kimse var mi
?
select gender, count(*)from MOCK_DATA group by gender;  //Cinsiyet sayisi
?
select * from MOCK_DATA order by salery;  //Butun salery veriyor
?
OFFSET
select * from MOCK_DATA order by salery offset 1 row;   //butunden ilk sayi eksik
select * from MOCK_DATA order by salery offset 5 row;  //butunden ilk 5 eksik
?
FETCH NEXT
select * from MOCK_DATA order by salery fetch next 5 row only; //sadece ilk 5'ini goster
select * from MOCK_DATA order by salery fetch next 1 row only; //sadece ilkini goster
?
select * from MOCK_DATA order by salery OFFSET 5 row FETCH next 5 row only;
                                                      //ilk 5'i atladi sonraki 5 tane gosterdi
?
UNION=tekrar eden verileri cikarmiyor
select satis_elemani, satis_fiyati from oursales where satis_fiyati>100;
union all
select satis_elemani, satis_fiyati from oursales where satis_fiyati>360;
?
UNION=tekrar eden verileri cikarir
select satis_elemani, satis_fiyati from oursales where satis_fiyati>100
union 
select satis_elemani, satis_fiyati from oursales where satis_fiyati>360;
?
INTERSECT=kesismek, kesisim kumesine bakiyor
select satis_elemani, satis_fiyati from oursales where satis_fiyati>100
intersect                                                                   
select satis_elemani, satis_fiyati from oursales where satis_fiyati>360;
?
MINUS:birinde olup digerinde olmayan
select satis_elemani, satis_fiyati from oursales where satis_fiyati>100
minus                                                                        
select satis_elemani, satis_fiyati from oursales where satis_fiyati>3600;
?
SUBQUERY
SELECT * FROM CALISANLAR WHERE ISIM=(SELECT MAX(ISIM)FROM CALISANLAR);  //EN UZUN ISIM
SELECT MAX(ISIM)FROM CALISANLAR;
SELECT * FROM CALISANLAR WHERE MAAS=(SELECT MIN(MAAS)FROM CALISANLAR);    //EN DUSUK MAAS
SELECT MIN(MAAS)FROM CALISANLAR;
select yas from calisanlar where YAS>(select AVG (YAS) FROM CALISANLAR); //ORTALAMANIN USTUNDEKI YAS
select AVG (YAS) FROM CALISANLAR;                                         //YAS ORTALAMASI
select yas from calisanlar where YAS<(select AVG (YAS) FROM CALISANLAR);  //ORTALAMANIN ALTINDAKI YAS
SELECT * FROM CALISANLAR WHERE MAAS<>(SELECT AVG (MAAS) FROM CALISANLAR); //TABLODAKI TUM VERILER
SELECT * FROM CALISANLAR WHERE MAAS >(SELECT AVG(11000)FROM CALISANLAR);  //MAASI 11000 UZERINDE OLANLAR
SELECT * FROM CALISANLAR WHERE MAAS >(SELECT AVG(MAAS)FROM CALISANLAR);   //MAASI ORTALAMANIN USTUNDE OLANLAR
?
SELECT MIN(MAAS)FROM CALISANLAR;
select * from calisanlar order by yas desc fetch next 3 row only;   // EN YUKDEK  YAS GRUPLA VERILIYOR
SELECT MAX(MAAS) FROM CALISANLAR WHERE MAAS<(SELECT MAX(MAAS) FROM CALISANLAR);  //EN YUKSEK 2. MAAS
SELECT MIN(MAAS) FROM CALISANLAR WHERE MAAS>(SELECT MIN(MAAS) FROM CALISANLAR);  // EN DUSUK MAAS
SELECT MIN(MAAS) FROM CALISANLAR WHERE MAAS>(SELECT MIN(MAAS) FROM CALISANLAR); //EN DUSUK 2. MAAS
?
alter table calisanlar add constraint pk_calisanlar primary key (maas);   
                                                              //calisanlar alanini birincil anahtar yapiniz
alter table calisanlar drop constraint  pk_calisanlar;                      
                                                              // anahtar tablosunda birincil anahtari silin
SELECT ISIM || ' ' ||SOYISIM  as Kisi_Adi from CALISANLAR;  //2 SOZCUGU BIRLESTIRME. BIR ARADA YAZMA
?
SELECT * FROM (SELECT * FROM CALISANLAR WHERE MAAS < (SELECT MAX(MAAS) FROM CALISANLAR) ORDER BY MAAS DESC) WHERE ROWNUM =1;
?
SELECT MAAS FROM CALISANLAR ORDER BY MAAS DESC;
?
INNER JOIN....
?
SELECT ISIM, UPPER(SOYISIM) FROM CALISANLAR;   //soyisim harflerini buyuk yapar
SELECT LOWER(ISIM), SOYISIM FROM CALISANLAR;   //isimdeki harfleri kucuk yapar
?
SELECT INITCAP (ISIM), SOYISIM, MESLEK FROM CALISANLAR; //isimlerin ilk harfini buyuk yapar





select concat( concat(first_name,' '), last_name) as Name_Surname from ornek;
SELECT first_name || ' ' ||last_name  as Kisi_Adi from ORNEK;
SELECT * FROM ORNEK;
SELECT FIRST_NAME, UPPER(LAST_NAME) FROM ORNEK;
SELECT LOWER(FIRST_NAME), LAST_NAME FROM ORNEK;
SELECT INITCAP(FIRST_NAME), LAST_NAME FROM ORNEK;

SELECT * from ornek where email LIKE '%gov%';
SELECT count(EMAIL) from ornek WHERE email LIKE '%com%';
select email, count(*) from ornek group by email;
SELECT  c.ID, c.soyisim from calisanlar c INNER JOIN satilanlar s on c.ID = s.satis_elemani;
SELECT * FROM ORNEK ORDER BY SALARY DESC OFFSET  1 ROW FETCH NEXT 1 ROW ONLY;
SELECT * FROM ORNEK WHERE SALARY > ANY(SELECT SALARY FROM ORNEK WHERE id>0) OFFSET  1 ROW FETCH NEXT 1 ROW ONLY;
SELECT CITY FROM ORNEK WHERE regexp_like(CITY,'[AHM](*)');
select concat( concat(first_name,' '), last_name) as Name_Surname from ornek;
SELECT first_name || ' ' ||last_name  as Kisi_Adi from ORNEK;
SELECT * FROM ORNEK;
SELECT FIRST_NAME, UPPER(LAST_NAME) FROM ORNEK;
SELECT LOWER(FIRST_NAME), LAST_NAME FROM ORNEK;
SELECT INITCAP(FIRST_NAME), LAST_NAME FROM ORNEK;


