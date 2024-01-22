use master;
drop database if exists edunovawp3;
create database edunovawp3 collate Croatian_CI_AS; 
use edunovawp3;

create table smjerovi(
sifra int not null primary key identity (1,1),
naziv varchar(50) not null,
trajanje int, 
cijena decimal(18,2),
);

create table grupe(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
smjer int not null,
datumpocetka datetime,
maxpolaznika int not null,
predavac int
);

create table polaznici (
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
email varchar (100),
oib char (11),
brojugovora varchar (10)
);

create table predavaci(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar (50) not null,
email varchar (100),
oib char (11),
brojugovora varchar (10)
);

create table clanovi(
grupa int not null,
polaznik int not null
);

alter table grupe add foreign key (smjer) references smjerovi (sifra);
alter table grupe add foreign key (predavac) references predavaci (sifra);

alter table clanovi add foreign key (grupa) references grupe (sifra);
alter table clanovi add foreign key (polaznik) references polaznici (sifra);
