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


select ogrenciler, min(yazili1) AS yazili1 from ogrenciler group by ogrenciler;             // okuldaki yaz�l�1 deki en d���k notu g�sterir.

select ogrenciler, max(yazili2) AS yazili from ogrenciler group by ogrenciler;              // okuldaki yaz�l�2 deki en y�ksek notu g�sterir.

select max(yazili2) as "En Fazla not" from ogrenciler;                          //yaz�l�2 de en y�ksek notu g�sterir

select avg(yazili1) as "yaz�l�1 not ortalamas�" from ogrenciler;                // yaz�l�1 not ortalamas�n� g�sterir

select * from ogrenciler where yazili1 >(select avg(yazili1) from ogrenciler);  // yaz�l�1 de ortalaman�n ustundeki not alanlar� g�sterir 

select * from ogrenciler where yazili1 >(select min(yazili1) from ogrenciler);  // yaz�l�1 de ortalaman�n alt�nda not alanlar� g�sterir

select * from ogrenciler where yazili2 in (select max(yazili2) from ogrenciler);     // yaz�l�2 de en y�ksek not alan� g�sterir

select * from ogrenciler  where yazili2 in (select min(yazili2) from ogrenciler);  // yaz�l�2 de en d���k) not alan� g�sterir
select  cinsiyet, min (yazili1) as "en d���k yaz�l�" from ogrenciler group by cinsiyet having min(yazili1)>50;  //cinsiyete g�re 50den b�y�k en k���k not alanlar 

// yaz�l�1 de cinsiyete g�re 80 ve alt� not alanlar� g�sterir
select cinsiyet,isim,soyisim, min (yazili1)  "yaz�l�1 y�ksek alanlar" from ogrenciler group by cinsiyet,isim,soyisim having  min(yazili1)>=80; 



select okul,isim,soyisim, yazili2 from ogrenciler where yazili2 >85;            //okula g�re yaz�l�2 den 85 ve �st� not alanlar�  g�steri

select * from ogrenciler where cinsiyet='erkek' or yazili2>85;                  // erkek veya yazili2 den 85 �st� alanlar� g�sterir

select * from ogrenciler where yazili2 is null;                                 // where kullan�m� ve yaz�l�2  null olanlar� yazd�r�r

alter table ogrenciler add sehir varchar(50) default 'Istanbul';                // tabloya sehir s�tununu ve istanbul  ekler  ??

alter table ogrenciler add okul_acilis_tarihi varchar(50) default '01/10/2010'; //tabloya okul a��l�s  tarihi ekler ve 01/10/2010 tarihini ekler 

alter table ogrenciler rename column okul to ortaokul;                          // OKULU ortaokula CEV�R�R

select distinct isim from ogrenciler;                                           // tekrarlananlar� g�stermez
 
select isim, count(*) from ogrenciler group by isim having count (*)>1;         //biden fazla tekrarlanan isimleri  g�sterir

select * from ogrenciler order by isim asc;                                     // order by kullan�m� ve ismi a dan z ye s�ralama

select count(numara) from ogrenciler;					                        //count kullanimi ve kac ki�inin vumaras� var  g�sterir

select * from ogrenciler where cinsiyet like 'Erkek' order by isim asc;			//where&like&orderby kullanimi ve erkek olanlar� a dan z ye s�ralama

update ogrenciler set numara=110  where numara=106;                             // 106 numaral� onrencinin numaras�n� 110 a cevirir

update ogrenciler set soyisim='yildirim'  where numara=110;                     // 110  numaral� onrencinin soyad�n� 'y�ld�r�m' a  cevirir

update ogrenciler set yazili2='99' where numara=101;                            // 101 numaral� �grencinin yaz�l�2 sine 99 ekler

update ogrenciler set yazili1='77',yazili2='88' where numara=106;               // 106 numaral� ogrencinin null olan yaz�l�1 ve yaz�l�2 ye 77 ve 88 ekler

alter table ogrenciler add basari_durumu varchar(50);                           // tabloya 'basar�_durumu' k�sm�n� ekler

update ogrenciler set basari_durumu='basarili' where yazili2>=85;               // yaz�l�2 den 85 ve �st� alanlara ba�ar�l� yazd�rd�k

update ogrenciler set basari_durumu='cal��mal�' where yazili1<85;               // yaz�l�1 den 85 alt� alanlara cal�smal� yazd�rd�k

delete from ogrenciler where numara=101;                                        // 101 numaral� ogrenciyi siler 

select * from ogrenciler  where isim like'A%';                                  // ismi A ile ba�layanlar� g�sterir

select * from ogrenciler  where isim like'%a';                                  // ismi A ile bitenleri g�sterir

select * from ogrenciler  where isim not like'A%';                              // ismi A ile ba�lamayanlar� g�sterir

select * from ogrenciler  where isim not like'%a';                              // ismi A ile bitmenleri g�sterir

select * from ogrenciler;



/////////////////////////////////////////

PRIMARY KEY ile tablomuzdaki ilgili alanda benzersiz kay�tlar�n 
                   tutulmas�n� istedi�imiz durumlarda kullan�l�r.
                   
  - Birden fazla alan tek bir PRIMARY KEY ile tan�mlanabilir.
  - Ancak PRIMARY KEY yap�s� her tabloda sadece bir tane olabilir.  
  - PRIMARY KEY yap�s� ile bo� kay�tlara izin verilmez.
  PRIMARY KEY (id) seklinde yaz�l�r
  
  
  secondary key  
  
  
  