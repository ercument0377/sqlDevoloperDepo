CREATE TABLE ogrenciler ( 
numara number,
Isim varchar(50),
Soyisim varchar(50),
Cinsiyet varchar(50),
Okul varchar(50),
yazili1 number,
yazili2 number
);

insert into ogrenciler values (101,'Mustafa','mert','Erkek','Ataurk O',85,90);
insert into ogrenciler values (102,'Mustafa','yilmaz','Erkek','Ataurk O',80,85);
insert into ogrenciler values (103,'Erdinc','bostan','Erkek','Ataurk O',90,95);
insert into ogrenciler values (104,'Ayse','Ak','Bayan','Ataurk O',95,100);
insert into ogrenciler values (105,'Bahar','gencer','Bayan','Ataurk O',75,null);
insert into ogrenciler values (106,'Ayse','genc','Bayan','Ataurk O',null,null);

select * from ogrenciler;
drop table ogrenciler;                                                          // cok tehlikeli bil ama KULLANMA
truncate table ogrenciler;                                                      // sadece verileri siler


select ogrenciler, min(yazili1) AS yazili1 from ogrenciler group by ogrenciler;             // okuldaki yazýlý1 deki en düþük notu gösterir.

select ogrenciler, max(yazili2) AS yazili from ogrenciler group by ogrenciler;              // okuldaki yazýlý2 deki en yüksek notu gösterir.

select max(yazili2) as "En Fazla not" from ogrenciler;                          //yazýlý2 de en yüksek notu gösterir

select avg(yazili1) as "yazýlý1 not ortalamasý" from ogrenciler;                // yazýlý1 not ortalamasýný gösterir

select * from ogrenciler where yazili1 >(select avg(yazili1) from ogrenciler);  // yazýlý1 de ortalamanýn ustundeki not alanlarý gösterir 

select * from ogrenciler where yazili1 >(select min(yazili1) from ogrenciler);  // yazýlý1 de ortalamanýn altýnda not alanlarý gösterir

select * from ogrenciler where yazili2 in (select max(yazili2) from ogrenciler);     // yazýlý2 de en yüksek not alaný gösterir

select * from ogrenciler  where yazili2 in (select min(yazili2) from ogrenciler);  // yazýlý2 de en düþük) not alaný gösterir
select  cinsiyet, min (yazili1) as "en düþük yazýlý" from ogrenciler group by cinsiyet having min(yazili1)>50;  //cinsiyete göre 50den büyük en küçük not alanlar 

// yazýlý1 de cinsiyete göre 80 ve altý not alanlarý gösterir
select cinsiyet,isim,soyisim, min (yazili1)  "yazýlý1 yüksek alanlar" from ogrenciler group by cinsiyet,isim,soyisim having  min(yazili1)>=80; 



select okul,isim,soyisim, yazili2 from ogrenciler where yazili2 >85;            //okula göre yazýlý2 den 85 ve üstü not alanlarý  gösteri

select * from ogrenciler where cinsiyet='erkek' or yazili2>85;                  // erkek veya yazili2 den 85 üstü alanlarý gösterir

select * from ogrenciler where yazili2 is null;                                 // where kullanýmý ve yazýlý2  null olanlarý yazdýrýr

alter table ogrenciler add sehir varchar(50) default 'Istanbul';                // tabloya sehir sütununu ve istanbul  ekler  ??

alter table ogrenciler add okul_acilis_tarihi varchar(50) default '01/10/2010'; //tabloya okul açýlýs  tarihi ekler ve 01/10/2010 tarihini ekler 

alter table ogrenciler rename column okul to ortaokul;                          // OKULU ortaokula CEVÝRÝR

select distinct isim from ogrenciler;                                           // tekrarlananlarý göstermez
 
select isim, count(*) from ogrenciler group by isim having count (*)>1;         //biden fazla tekrarlanan isimleri  gösterir

select * from ogrenciler order by isim asc;                                     // order by kullanýmý ve ismi a dan z ye sýralama

select count(numara) from ogrenciler;					                        //count kullanimi ve kac kiþinin vumarasý var  gösterir

select * from ogrenciler where cinsiyet like 'Erkek' order by isim asc;			//where&like&orderby kullanimi ve erkek olanlarý a dan z ye sýralama

update ogrenciler set numara=110  where numara=106;                             // 106 numaralý onrencinin numarasýný 110 a cevirir

update ogrenciler set soyisim='yildirim'  where numara=110;                     // 110  numaralý onrencinin soyadýný 'yýldýrým' a  cevirir

update ogrenciler set yazili2='99' where numara=101;                            // 101 numaralý ögrencinin yazýlý2 sine 99 ekler

update ogrenciler set yazili1='77',yazili2='88' where numara=106;               // 106 numaralý ogrencinin null olan yazýlý1 ve yazýlý2 ye 77 ve 88 ekler

alter table ogrenciler add basari_durumu varchar(50);                           // tabloya 'basarý_durumu' kýsmýný ekler

update ogrenciler set basari_durumu='basarili' where yazili2>=85;               // yazýlý2 den 85 ve üstü alanlara baþarýlý yazdýrdýk

update ogrenciler set basari_durumu='calýþmalý' where yazili1<85;               // yazýlý1 den 85 altý alanlara calýsmalý yazdýrdýk

delete from ogrenciler where numara=101;                                        // 101 numaralý ogrenciyi siler 

select * from ogrenciler  where isim like'A%';                                  // ismi A ile baþlayanlarý gösterir

select * from ogrenciler  where isim like'%a';                                  // ismi A ile bitenleri gösterir

select * from ogrenciler  where isim not like'A%';                              // ismi A ile baþlamayanlarý gösterir

select * from ogrenciler  where isim not like'%a';                              // ismi A ile bitmenleri gösterir

select * from ogrenciler;



/////////////////////////////////////////

PRIMARY KEY ile tablomuzdaki ilgili alanda benzersiz kayýtlarýn 
                   tutulmasýný istediðimiz durumlarda kullanýlýr.
                   
  - Birden fazla alan tek bir PRIMARY KEY ile tanýmlanabilir.
  - Ancak PRIMARY KEY yapýsý her tabloda sadece bir tane olabilir.  
  - PRIMARY KEY yapýsý ile boþ kayýtlara izin verilmez.
  PRIMARY KEY (id) seklinde yazýlýr
  
  
  secondary key  
  
  
  