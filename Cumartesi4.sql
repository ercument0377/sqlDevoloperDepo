
CREATE TABLE calisanlarim ( 
ID number,
TC number, 
Isim varchar(50),
Soyisim varchar(50),
yas number,
Cinsiyet varchar(50),
Tel_No number,  
memleket varchar(50) 
);

insert into calisanlarim values ( 12345, 23456, 'Ahmet','Yilmaz',35,'Erkek',34567,'Van');
insert into calisanlarim values ( 12346, 23457, 'Ahmet','Yildirim',55,'Erkek',34567,'Hatay');
insert into calisanlarim values ( 12347, 23458, 'Mehmet','Yilmaz',30,'Erkek',34567,'Ankara');
insert into calisanlarim values ( 12348, 23459, 'Mustafa','Orhan',38,'Erkek',34567,'Izmir');
insert into calisanlarim values ( 12349, 23460, 'Ay�e','Corbaci',45,'Bayan',34567,'Mus');
insert into calisanlarim values ( 12350, 23461, 'Ebru','Pinar',25,'Bayan',34567,'Yalova');
insert into calisanlarim values ( 12351, 23462, 'Osman','Genc',55,'Erkek',34567,'Istanbul');
insert into calisanlarim values ( 12352, 23463, 'Ali','Kil',33,'Erkek',34567,'Kocaeli');
insert into calisanlarim values ( 12353, 23464, 'Nasuh','Gunes',33,'Erkek',34567,'Kocaeli');
insert into calisanlarim values ( 12354, 23465, 'Bahar','Pinarci',29,'Bayan',34567,'Istanbul');

select * from calisanlarim;


CREATE TABLE satislarimiz (
urun varchar(50),
urun_no number,
satis_elemani number,
satis_tarihi date,
satis_fiyati number
);


insert into satislarimiz values ( 'Makarna', 101,12345,'2022/10/01',10 );
insert into satislarimiz values ( 'Mercimek', 102,12346,'01/10/2022',10 );
insert into satislarimiz values ( 'Makarna', 103,12347,'01/10/2022',10 );
insert into satislarimiz values ( 'Mercimek', 104,12348,'10/10/2022',10 );
insert into satislarimiz values ( 'Makarna', 105,12349,'10/10/2022',10 );
insert into satislarimiz values ( 'Makarna', 106,12350,'10/10/2022',10 );
insert into satislarimiz values ( 'Mati', 107,23461,'2022/10/01',10 );
insert into satislarimiz values ( 'Makarna', 108,12362,'01/10/2022',20 );
insert into satislarimiz values ( 'Mati', 109,12363,'01/10/2022',30 );
insert into satislarimiz values ( 'Makarna', 110,123464,'10/10/2022',40 );
insert into satislarimiz values ( 'Mati', 111,123465,'10/10/2022',50 );
insert into satislarimiz values ('Mati', 112,123566,'10/10/2022',60 );
insert into satislarimiz values ( 'un', 113,12345,'2022/10/01',15 );
insert into satislarimiz values ( 'Pirinc', 114,12346,'01/10/2022',20 );
insert into satislarimiz values ( 'un', 115,12347,'01/10/2022',15 );
insert into satislarimiz values ( 'Pirinc', 116,12348,'10/10/2022',40 );
insert into satislarimiz values ('Nohut', 117,12349,'10/10/2022',15 );
insert into satislarimiz values ('Fasulye', 118,12350,'10/10/2022',25 );

select * from satislarimiz;
select * from calisanlarim order by ID ;

truncate table satislarimiz;
truncate table calisanlarim;

  
/* inner join   ortak nokta */ // kesisen k�me // bende kay�tl� elemanlar�n satt�klar�n� g�sterir
select calisanlarim.ID, calisanlarim.isim,calisanlarim.soyisim,satislarimiz.urun,satislarimiz.satis_fiyati from calisanlarim  inner join satislarimiz  on calisanlarim.ID=satislarimiz.satis_elemani;  // a�a��daki ile ayn�s�d�r
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c inner join satislarimiz s on c.ID=s.satis_elemani;               //  yukar�n�n k�sa yaz�l���d�r
 
 
 
/* left join   soldaki ilk tabloyu g�steir */ personellerin sat�slar�n� g�sterir
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c left join satislarimiz s on c.ID=s.satis_elemani order by isim;               


/* right join   sa�daki son tabloyu g�steir */ sat�slar�n hepsini g�sterir
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c right join satislarimiz s on c.ID=s.satis_elemani order by isim;            


/* full outer join   sa�daki ve soldaki tablolar�n hepsini g�steir */ 
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c full outer join satislarimiz s on c.ID=s.satis_elemani order by isim;      


/*  union    birer defa yaz�l� olanlar� g�sterir, tekrarlar� ��kart�r  */
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c left join satislarimiz s on c.ID=s.satis_elemani
union 
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c right join satislarimiz s on c.ID=s.satis_elemani; 


/* union all birden fazla tekrarlananlar� g�sterir */
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c left join satislarimiz s on c.ID=s.satis_elemani
union all
select c.ID, c.isim,c.soyisim,s.urun,s.satis_fiyati from calisanlarim c right join satislarimiz s on c.ID=s.satis_elemani ; 


select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15 or satis_fiyati>50;

select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15;

select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15
union 
select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>50;



union   // terarlar� ��kar�r her veriyi bir defa g�sterir 
select satis_elemani, satis_fiyati from satislarimiz where satis_fiyati>10;

union all   /  tekrar edenlerle beraber hepsini g�steiri
select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15
union all  
select satis_elemani, satis_fiyati from satislarimiz where satis_fiyati>50;

select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>5 

intersect  // kesisim k�mesine bakar
select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15
intersect  
select satis_elemani, satis_fiyati from satislarimiz where satis_fiyati>50;

// minus   // birinde olup di�erinde olmayanlar� g�sterir
select satis_elemani,satis_fiyati from satislarimiz where satis_fiyati>15 
minus   
select satis_elemani, satis_fiyati from satislarimiz where satis_fiyati>50;


select * from satislarimiz;1
select * from calisanlarim order by ID;

select urun,age(now(), satis_tarihi) as 'yas' from satislarimiz;


/*en y�ksek 2. yas� yada maas� bulmak i�in kullan�r�z 2 yolu */ 
select max(yas) from cal�sanlarim where yas<(select max(yas) from cal�sanlarim);

select yas from cal�sanlarim order by yas desc;

select * from cal�sanlarim order by yas desc offset 1 row fetch next 1 row only;

select * from satislarimiz;
select * from calisanlarim order by ID;



select isim,soyisim,id from calisanlarimiz where    in (select 
 exist 
