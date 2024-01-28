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


insert into smjerovi (naziv) values ('èšæðž ÈŠÆÐŽ');





insert into predavaci (ime, prezime, email) values
-- 1
('Tomislav','Jakopec','tjakopec@gmail.com'),
-- 2
('Shaquille','O''Neal','shaki@gmail.com');






insert into polaznici(ime,prezime,email) values
('Slaven','Pozniæ','slaven.poznic@hotmail.com'),
('Karla','Kraljik','kraljikkarla@gmail.com'),
('Dino','Sabljiæ','dino.sabljic@gmail.com'),
('Luka','Crljiæ','lukacrljic7@gmail.com'),
('Mario','Baliban','mariobalibanos@gmail.com'),
('Branimir','Fekete','branimir.fekete@gmail.com'),
('Dajana','Toliæ','dajanabozic@gmail.com'),
('Ivan','Toliæ','ivan.tolic1989@gmail.com'),
('Tomislav','Kuèiæ','tomislavkucic@gmail.com'),
('Zdenko','Bariæ','zbaric_hr@yahoo.com'),
('Mihael','Žulj','mihaelzulj@gmail.com'),
('Ivan','Maroševiæ','ivanmarosevic4@gmail.com'),
('Goran','Kovaèiæ','kovacic.go@gmail.com'),
('Nataša','Jakopec','njakopec@gmail.com'),
('Goran','Franjiæ','goran@proces.hr'),
('Ana','Juriæ','ana.juric19@gmail.com'),
('Emina','Vejsiloviæ','emiomiemi@gmail.com'),
('Josip','Rebolj','rebolj.josip031@gmail.com'),
('Merlin','Jišše','jisse.merlin@gmail.com'),
('Snežana','Grkoviæ','snezana4688@yahoo.com'),
('Rade','Jasenovèanin','rade.jasenovcanin@yahoo.com'),
('Krešimir','Bilokapiæ','ilead7@gmail.com'),
('Srðan','Filipoviæ','srdjanfilipovic991@gmail.com'),
('Veljko','Vujiæ','veljko2805vujic@gmail.com');



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
