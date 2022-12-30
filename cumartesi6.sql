CREATE TABLE Projelerimiz2 ( 
ProjeNo number,
IsciNo number,
MusteriNo number,
Musteri_Isim varchar2(50),
Proje_Ismi varchar(50),
Proje_Tarihi DATE,
Proje_Fiyati number, 
Adres varchar(50)
);

select * from Projelerimiz2;

drop table projelerimiz2;

insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,Adres)values(213,1,1,'Firma1','Proje1','12.10.2020',35000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(214,2,2,'Firma2','Proje2', '10.10.2010',125000,'Ankara'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(215,3,3,'Firma3','Proje3', '05.10.2020',135000,'Ankara'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(216,4,4,'Firma4','Proje4', '10.10.2000',145000,'Istanbul'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(217,5,5,'Firma5','Proje5', '10.02.2010',15000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(218,6,6,'Firma6','Proje6', '10.05.2020',75000,'Ankara'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(219,7,7,'Firma7','Proje7', '19.10.2020',55000,'Istanbul'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(220,8,8,'Firma8','Proje8', '15.10.2020',95000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(221,9,9,'Firma9','Proje9', '10.10.2010',65000,'Ankara'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(222,10,10,'Firma10','Proje10', '10.09.2020',35000,'Istanbul'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(223,11,11,'Firma11','Proje11', '10.10.2020',75000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(224,12,12,'Firma12','Proje12', '10.11.2020',50000,'Ankara'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(225,13,13,'Firma13','Proje13', '10.10.2020',60000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(226,14,14,'Firma14','Proje14', '10.10.2022',105000,'Istanbul'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(227,15,15,'Firma15','Proje15', '10.10.2019',110000,'Izmir'); 
insert into Projelerimiz2 (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(228,16,16,'Firma16','Proje16', '10.10.2021',75000,'Istanbul'); 



CREATE TABLE Iscilerimiz2 ( 
IsciID number,
Isim Varchar2(50),
Soyisim Varchar(50),
Yas number,
email varchar(50),
TelNo number,
Adres varchar(50),
Maas number
);

select * from Iscilerimiz2;

truncate table iscilerimiz2;
drop table iscilerimiz2;  

insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(1, 'Can','Can',22,'can@hotmail.com', 2345677,'Adana',6500);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(2, 'Cenk','Cen',32,'cenk@hotmail.com', 2345678,'Van',7000);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(3, 'Ali','Can',52,'can@hotmail.com', 2345679,'Adana',8500);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(4, 'Ayse','Ay',29,'ayse@hotmail.com', 2345687,'Van',9500);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(5, 'Nasuh','Nur',39,'can@hotmail.com', 2345577,'Istanbul',5000);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(6, 'Veli','Cay',42,'veli@hotmail.com', 2585677,'Istanbul',8500);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(7, 'Murat','Mur',55,'murat@hotmail.com', 2345627,'Ankara',10000);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(8, 'Bahar','Bah',60,'can@hotmail.com', 2345670,'Ankara',10500);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(9, 'Nasuh','Can',65,'murat@hotmail.com', 2347477,'Izmir',9000);
insert into Iscilerimiz2 (IsciID, Isim, Soyisim, Yas, email,TelNo,Adres,maas) values(10,'Nasuh','Cano',49,'can@hotmail.com', 2345852,'Izmir'8000);


select * from Projelerimiz2;
select * from Iscilerimiz2;

select * from Projelerimiz2 order by IsciNo;   // 2 tabloyu birbirine baðlar IscýNo ile 
select * from Iscilerimiz2 order by IscýID;    // 2 tabloyu birbirine baðlar IscýID ile 


/* en yüksek proje fiyatý */ 
select * from projelerimiz2 order by proje_fiyati desc;      // en yüksek proje fiyatý
select max(proje_fiyati) from projelerimiz2;                 // en yüksek proje fiyatý
select projeno,iscino,proje_fiyati from projelerimiz2 where proje_fiyati=(select max(proje_fiyati) from projelerimiz2) order by projeno;

select * from projelerimiz2  order by proje_fiyati desc fetch next 1 row only;
 
 /* en yüksek 2. proje fiyati */
select * from projelerimiz2  order by proje_fiyati desc offset 1 row  fetch next 1 row only;

select max(proje_fiyati) from projelerimiz2 where proje_fiyati <(select max(proje_fiyati) from projelerimiz2);


select * from iscilerimiz2 where isciid in(select iscino from projelerimiz2 where iscilerimiz2.isciid=projelerimiz2.iscino);


select * from iscilerimiz2;
select * from projelerimiz2;

  /* subquvery */
  
  select IsciNo, musteri_isim, (select avg(yas)  from iscilerimiz2 where iscilerimiz2.adres=projelerimiz2.adres) from projelerimiz2;



select musteri_ismi, proje_ismi, (select max(maas) from iscilerimiz2;


select isim,soyisim,maas from iscilerimiz2 where isim='Nasuh';         // adý Ad olanlarýn maaslarýný yazdýrdým

select * from iscilerimiz2 where maas > any (select maas from iscilerimiz2 where isim='Nasuh');    // adý nasuh olandan yüksek maas alanlar


select max(yas) from iscilerimiz2 where yas<(select max(yas) from iscilerimiz2);      // en büyük yaþýn bir küçügü

select isim,soyisim,yas,maas from iscilerimiz2 where yas>40;                       // yaþý 40 tan büyük olanlar 


 select * from projelerimiz2 where Adres='Ankara'  and (Proje_fiyati between 50000 and 100000);  // ankaradaki projelerimizden 50000 ile 100000 arasýndakiler
  select * from projelerimiz2 where Adres='Ankara'  or (Proje_fiyati between 50000 and 100000);  // ankaradaki projelerimizden yada fiyatý 50000 ile 100000 arasýndakiler
 
 select * from iscilerimiz2;
select * from projelerimiz2;


// projelerimiz2  tablosunda adresi Ankara olanlarýn  id lerini bulup  ve iscilerimiz2
tablosuna giderek bu id lere eþit iþcileri yazdýr.

SELECT * FROM iscilerimiz2 WHERE isciýd IN(SELECT IsciNo FROM projelerimiz2 WHERE adres='Ankara');

SELECT * FROM iscilerimiz2 WHERE maas> (SELECT avg(maas) FROM iscilerimiz2);                     // ortalama maasýn üstündeki maaslar
    
select IsciNo,Musteri_isim, (select max(yas) from iscilerimiz2 where iscilerimiz2.isciID=projelerimiz2.iscino) from projelerimiz2;     //birleþtirme 