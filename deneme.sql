
create table calisaan (
	id int generated always as identity (start with 11 increment by 11) not null,
	isim VARCHAR(50) not null,
	soyisim VARCHAR(50) not null,
	adres VARCHAR(50) not null,
	maas INT not null,
    Yas  int not null
);

insert into calisaan (isim,soyisim,adres,maas,yas) values ('Tildie', 'Cawtheray', 'China', 23764,33);
insert into calisaan (isim,soyisim,adres,maas,yas) values ('Oralle', 'Doogan', 'Indonesia', 13178,44);
insert into calisaan (isim,soyisim,adres,maas,yas) values ('Hymie', 'Stanyland', 'Indonesia', 11571,55);
insert into calisaan (isim,soyisim,adres,maas,yas) values ('ildi', 'Caway', 'Canada', 237645,39);
insert into calisaan (isim,soyisim,adres,maas,yas) values ('Orle', 'ogan', 'ABD', 131784,49);
insert into calisaan (isim,soyisim,adres,maas,yas) values ('Hye', 'Sland', 'Canada', 115721,59);
 
 select * from calisaan;
 drop table calisaan;
 truncate table calisaan;


CREATE TABLE Projeler ( 
ProjeNo number,
IsciNo number,
MusteriNo number,
Musteri_Isim varchar2(50),
Proje_Ismi varchar(50),
Proje_Tarihi DATE,
Proje_Fiyati number, 
Adres varchar(50)
);

select * from Projeler;

drop table projeler;

insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,Adres)values(213,1,1,'Firma1','Proje1','12.10.2020',35000,'Izmir'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(214,2,2,'Firma2','Proje2', '10.10.2010',125000,'Ankara'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(215,3,3,'Firma3','Proje3', '05.10.2020',135000,'Ankara'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(216,4,4,'Firma4','Proje4', '10.10.2000',145000,'Istanbul'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(217,5,5,'Firma5','Proje5', '10.02.2010',15000,'Izmir'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(218,6,6,'Firma6','Proje6', '10.05.2020',75000,'Ankara'); 
insert into Projeler (ProjeNo,IsciNo,MusteriNo,Musteri_Isim,Proje_Ismi,Proje_Tarihi,Proje_Fiyati,adres)values(219,7,7,'Firma7','Proje7', '19.10.2020',55000,'Istanbul'); 

 select * from calisaan;
 select * from Projeler;

update calisan set salary=50000 where ýd=33;    // ýd=33 ün maasý 50000 ile deðiþtirdik

delete from calisan where id=11;         // id 11 i sildik

select distinct id from calisaan;

select first_name,salary from calisaan where salary<20000;
select projeno,musteri_isim,proje_fiyati,Proje_Tarihi,Adres from projeler where adres='Ankara';

select first_name, yas from calisaan where yas>=44 and salary<=14000;

select DISTINCT Country_Of_Birty from calisaan;  // TEKRAR etmeyen adresler
select * from Projeler order by adres desc;