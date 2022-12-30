

CREATE TABLE Calisanlar ( 
Isim varchar(50),
Soyisim varchar(50),
Yas number,
Cinsiyet varchar(50),
Okul varchar(50),
Meslek varchar(50),
CalistigiSehir varchar(50),
Maas number);

insert into calisanlar values ('Mustafa','mert',65,'Erkek','N Universitesi',null,'Istanbul',9500);
insert into calisanlar values ('Veysi','yilmaz',48,'Erkek','K Universitesi',null,'Izmir',11000);
insert into calisanlar values ('Erdinc','bostan',45,'Erkek','Z Universitesi','muhendis','Bursa',11000);
insert into calisanlar values ('Orhan','Ak',25,'Erkek','Y Universitesi','memur','Izmir',9000);
insert into calisanlar values ('Veysel','gencer',35,'Erkek','Z Universitesi','ogretmen','Ankara',8500);
insert into calisanlar values ('Mursel','yýldýz',55,'Erkek','M Universitesi','doktor','Adana',10000);
insert into calisanlar values ('Mustafa','mutlu',65,'Erkek','N Universitesi','muhendis','Istanbul',9500);
insert into calisanlar values ('Vedat','yilmaz',48,'Erkek','K Universitesi','doktor','Izmir',11000);
insert into calisanlar values ('Aysel','mutlu',40,'Bayan','F Universitesi','memur','Istanbul',9000);
insert into calisanlar values ('Emine','cakirlý',30,'Bayan','D Universitesi','disci','Ankara',12000);
insert into calisanlar values ('Betül','pinar',28,'Bayan','X Universitesi','avukat','Istanbul',15000);
insert into calisanlar values ('Aliye','orhanlý',50,'Erkek','D Universitesi','ogretmen','Bursa',8500);
insert into calisanlar values ('Erkul','bostancý',45,'Erkek','Z Universitesi','muhendis','Bursa',11000);
insert into calisanlar (Isim,soyisim,yas,cinsiyet,calistigisehir)    values ('Ayse','bulut',40,'Bayan','Istanbul');
insert into calisanlar  (Isim,soyisim,yas,cinsiyet,calistigisehir)   values ('Emine','cakir',30,'Bayan','Ankara');
insert into calisanlar  (Isim,soyisim,yas,cinsiyet,calistigisehir)   values ('Bahar','pinarci',28,'Bayan','Istanbul');
insert into calisanlar (Isim,soyisim,yas,cinsiyet,calistigisehir)   values ('Ali','orhan',50,'Erkek','Bursa');
insert into calisanlar (Isim,soyisim,yas,cinsiyet,okul,meslek,calistigisehir) values ('Ercument','ercu',45,'Erkek','X Universitesi','ogretmen','Istanbul'); 
insert into calisanlar ((Isim,soyisim,yas,cinsiyet,okul,meslek,calistigisehir) values ('Ayhan','Ay',25,'Erkek','Y Universitesi','memur','Izmir');
insert into calisanlar( (Isim,soyisim,yas,cinsiyet,okul,maas) ) values ('Veli','genc',35,'Erkek','Z Universitesi',8500);
insert into calisanlar ( (Isim,soyisim,yas,cinsiyet,okul,meslek,maas) )  values ('Murat','yigit',55,'Erkek','M Universitesi','doktor',10000);

select * from calisanlar;

drop table calisanlar;

select * from calisanlar where isim like '%a' order by isim asc;
select * from calisanlar where isim like 'A%' order by isim asc;
select * from calisanlar where isim  like 'A___' order by isim asc;


select * from calisanlar where isim=isim  order by isim asc;
select * from calisanlar where isim=isim  order by isim desc;

select * from calisanlar where soyisim like '%u' order by soyisim desc;

select * from calisanlar where yas >=50;

select * from calisanlar where meslek='ogretmen';

select * from calisanlar where CalistigiSehir  in('Istanbul', 'Izmir') order by isim asc;


select * from calisanlar where CalistigiSehir='Istanbul' or  yas>50;

select yas, count(*) from calisanlar group by yas;
select cinsiyet, count(*) from calisanlar group by cinsiyet;


select count(*) as toplam,meslek, min(maas) as min_maas, max(maas) as maks_maas from calisanlar group by meslek having min(maas)>0; // mesleklere göre en az ve en fazla maas alanlarý gösteriyor
