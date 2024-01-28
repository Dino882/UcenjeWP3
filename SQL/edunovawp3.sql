use master;
go
drop database if exists edunovawp3;
go

create database edunovawp3 collate Croatian_CI_AS;
go

use edunovawp3;

create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
trajanje int null, 
cijena decimal(18,2), 
vaucer bit
);

create table grupe(

	sifra			int			not null primary key identity(1,1),
	naziv			varchar(5)	not null,
	smjer			int			not null,
	datumpocetka	datetime,
	maxpolaznika	int			not null,
	predavac		int

);


create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100),
oib char(11),
brojugovora varchar(10)
);

create table predavaci(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null,
oib char(11),
iban varchar(50)
);




create table clanovi(
grupa int not null,
polaznik int not null
);


alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table grupe add foreign key (predavac) references predavaci(sifra);

alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key (polaznik) references polaznici(sifra);





insert into smjerovi (naziv, trajanje,cijena,vaucer)
values ('Web programiranje', 225, 1859.45,1);


insert into smjerovi values
('Web dizajn',null,null,null);


insert into smjerovi (naziv) values ('��� Ȋ�Ў');





insert into predavaci (ime, prezime, email) values
-- 1
('Tomislav','Jakopec','tjakopec@gmail.com'),
-- 2
('Shaquille','O''Neal','shaki@gmail.com');






insert into polaznici(ime,prezime,email) values
('Slaven','Pozni�','slaven.poznic@hotmail.com'),
('Karla','Kraljik','kraljikkarla@gmail.com'),
('Dino','Sablji�','dino.sabljic@gmail.com'),
('Luka','Crlji�','lukacrljic7@gmail.com'),
('Mario','Baliban','mariobalibanos@gmail.com'),
('Branimir','Fekete','branimir.fekete@gmail.com'),
('Dajana','Toli�','dajanabozic@gmail.com'),
('Ivan','Toli�','ivan.tolic1989@gmail.com'),
('Tomislav','Ku�i�','tomislavkucic@gmail.com'),
('Zdenko','Bari�','zbaric_hr@yahoo.com'),
('Mihael','�ulj','mihaelzulj@gmail.com'),
('Ivan','Maro�evi�','ivanmarosevic4@gmail.com'),
('Goran','Kova�i�','kovacic.go@gmail.com'),
('Nata�a','Jakopec','njakopec@gmail.com'),
('Goran','Franji�','goran@proces.hr'),
('Ana','Juri�','ana.juric19@gmail.com'),
('Emina','Vejsilovi�','emiomiemi@gmail.com'),
('Josip','Rebolj','rebolj.josip031@gmail.com'),
('Merlin','Ji��e','jisse.merlin@gmail.com'),
('Sne�ana','Grkovi�','snezana4688@yahoo.com'),
('Rade','Jasenov�anin','rade.jasenovcanin@yahoo.com'),
('Kre�imir','Bilokapi�','ilead7@gmail.com'),
('Sr�an','Filipovi�','srdjanfilipovic991@gmail.com'),
('Veljko','Vuji�','veljko2805vujic@gmail.com');



select * from grupe

insert into grupe (naziv,predavac,datumpocetka,smjer,maxpolaznika)
values
-- 1
('WP3',1,'2023-11-29 19:00:00',1,25),
-- 2
('WP2',null,'2023-11-07 17:00:00',1,25);

select *from clanovi 

insert into clanovi (grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8)
,(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16)
,(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
