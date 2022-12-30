select * from TABLOISMINI;

CREATE TABLE YeniGrup ( 
KullaniciNo number,
KayitSiraNo number,
Isim varchar(50 char),
Soyisim varchar(50 char),
Meslek varchar(50 char),
Cinsiyet varchar(50 char),
Yas number,
Memleket varchar(50 char));

insert into yenigrup values (12,1,'Ercument','ercu','ogrenci','erkek',22,'afyon'); 
insert into yenigrup values (13,2,'Mustafa','bb','ogretmen','erkek',42,'istanbul'); 
insert into yenigrup values (14,3,'Bilal','cc','ogrenci','erkek',18,'izmir'); 
insert into yenigrup values (15,4,'Ayse','dd','asci','bayan',42,'kocaeli'); 
insert into yenigrup values (16,5,'Bahar','eee','muhendis','bayan',58,'adana'); 
insert into yenigrup values (17,6,'Erhan','fff','doktor','erkek',55,'adana'); 
insert into yenigrup values (18,8,'Ali','ggg','avukat','erkek',57,'balikesir'); 
insert into yenigrup values (19,8,'Veli','hhh','ogrenci','erkek',12,'afyon'); 
insert into yenigrup values (20,10,'Busra','lll','ogrenci','bayan',18,'Bursa'); 
insert into yenigrup values (20,10,'Hasan','kkk','muhendis','erkek',38,'ankara'); 
insert into yenigrup values (22,11,'Hayri','mmm','ogrenci','erkek',19,'konya'); 
insert into yenigrup values (22,11,'Ebru','nnn','ogretmen','bayan',29,'afyon');



select * from yenigrup;

select Isim, Soyisim, Cinsiyet,Memleket from yenigrup;

drop table yenigrup; /* cok tehlikeli bil ama KULLANMA

SELECT DISTINCT kayitsirano FROM YENIGRUP;

select kayitsirano,count(*) from yenigrup group by kayitsirano having count(kayitsirano)>1;

CREATE TABLE YeniGrup2 (
KullaniciNo number,
KayitSiraNo number,
Isim varchar(50),
Soyisim varchar(50),
Meslek varchar(50),
Cinsiyet varchar(50),
Yas number,
Memleket varchar(50));

select * from yenigrup2;

select * from yenigrup;
update yenigrup set isim ='YeniAdý', Soyisim='yenisi' where kullanicino=22;  //bilgi guncelleme
update yenigrup set Meslek='Lise Ogrencisi' where yas<19;
update yenigrup set Meslek='Orta okul Ogrencisi' where yas<15;
update yenigrup set Meslek='Emekli' where yas>50;
select * from yenigrup;


create table arabalar ( 
firma_id number (15),
marka varchar(50),
galeri varchar(50)
);

insert into arabalar values (222,'Ford','Ford Bayi');
insert into arabalar values (333,'Toyota','XX Firma');
insert into arabalar values (675,'Mazda','Toyota Bayi');

create table modeller(
firma_id number(15),
model_no number(15),
model_ismi varchar(50),
alici varchar (50)
);

insert into modeller value (222,1598,'Fiesta','Ercument');
insert into modeller values (333,2256,'Corona','Ahmet');
insert into modeller values (675,6666,'CX-9','Murat');
insert into modeller values (675,6666,'Spor','Eyup');
insert into modeller (firma_id,model_no) values ( 235,321);   // eksikbilgi gereken kullenýlýr

select * from arabalar;
select * from modeller;
truncate table modeller;
drop table modeller;


update arabalar set galeri=(select model_ismi from modeller where arabalar.galeri=modeller.alici) where firma_id=333;

select * from yenigrup;
select * from yenigrup where yas >22;

having where 
where hicbir islem yapmadan where kullanýlýyoruz
having toplama, çýkarma, çarpma, bolme, sayma


select kullanicino, count(*) from yenigrup group by kullanicino having count(*)>1;
select * from yenigrup;

delete from modeller where alici='Eyup';
select * from modeller;

where yas <=35
1. Adana and yas 35 kac kisi
select * from yenigrup  where memleket='adana' and yas >=55;
select * from yenigrup  where memleket='adana' or yas >=45;
select * from yenigrup;

2. yenigrup 55 kaç kiþi
select * from yenigrup where yas >52;

3. sonra yas 55 silin 
delete from yenigrup where yas>55;

select * from yenigrup where memleket in ('adana','izmir','Bursa');
select * from yenigrup where meslek in ('ogrenci','ogretmen');
select * from yenigrup where meslek='ogrenci';

select * from yenigrup;
select * from yenigrup2;
truncate table yenigrup;    // sadece verileri siler
truncate table yenigrup2;

drop table yenigrup2;        // her þeyi siler


select * from musterilerimiz kullaniciismi where like '____'; 
select * from arabalar where marka like 'F%';
select * from arabalar where marka like '____';


select * from modeller where alici like '_____';
select * from modeller where alici like 'A%';
select * from modeller where alici like '_u%';
select * from modeller where model_ismi like 'C_%_%_%';

like '____t'; 5 harfli son harfi t olanlarý bulur
like '__e_c%';  3.e  5.c
like '__e_c_';   3.e   5.c  6 harfli
like 'M%t';     M ile baþlayan t ile biten 


select * from arabalar where marka like '%a';

group by
order by   desc -- azalan
order by    asc  -- artan

select * from arabalar where marka  like '%a';
select * from arabalar where marka not like '%a';

select * from arabalar where marka  like '%a'  order by Firma_id asc;  // artar
select * from arabalar where marka  like '%a'  order by Marka desc;     // azalýr
select * from arabalar where marka not like '%a'  order by Marka;

select * from arabalar;
select * from modeller;


