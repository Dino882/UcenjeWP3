--use master;
--drop database if exists tvrtka;
--create database tvrtka;
--use tvrtka;

--create table zaposlenici(
--sifra int not null primary key identity(1,1),
--ime varchar(50) not null,
--prezime varchar(50) not null,
--datumrodj datetime,
--placa decimal(18,2),
--invalid bit);

--create table slike(
--sifra int not null primary key identity(1,1),
--zaposlenik int not null,
--rednibroj int,
--putanja varchar(50)
--);

--alter table slike add foreign key (zaposlenik) references zaposlenici(sifra);


--select * from zaposlenici
--insert into zaposlenici  (ime, prezime, datumrodj, placa, invalid) values
--('Ime1', 'Prezime1', '2000-05-03 19:00', 1500.00, 0),
--('Ime2', 'Prezime2', '2000-05-04 19:00', 1300.00, 0),
--('Ime3', 'Prezime3', '2000-05-05 19:00', 1400.00, 0);

--select * from slike

--insert into slike (zaposlenik, rednibroj, putanja) values

--(1,1,'putanja1'), (1,2,'putanja2'),
--(2,1,'putanja1'), (2,2,'putanja2'),
--(3,1,'putanja1'), (3,2,'putanja2');





use master;
drop database if exists webshop;
create database webshop;
use webshop;

create table proizvodi (
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
datumnabave datetime,
cijena decimal,
aktivan bit);

create table kupci(
sifra int not null primary key identity(1,1),
ime varchar (50) not null ,
prezime varchar (50) not null ,
ulica varchar (50),
mjesto varchar (50),
);


create table racuni (
sifra int not null primary key identity(1,1),
datum datetime,
kupac int,
status bit);

create table stavke(
racun int,
proizvod int,
kolicina int,
cijena decimal
);


alter table racuni add foreign key (kupac) references kupci(sifra);
alter table stavke add foreign key (proizvod) references proizvodi (sifra);
alter table stavke add foreign key (racun) references racuni (sifra);

select * from proizvodi
insert into proizvodi (naziv, datumnabave, cijena, aktivan) values
('Cokolada', '2000-05-03 19:00' , 2,1);

select * from kupci
insert into kupci (ime, prezime, ulica, mjesto) values
('Ivan', 'Ivanovic', 'Vukovarska 50', 'Osijek');

select * from racuni
insert into racuni (datum, kupac) values
(1,1)

select * from stavke(racun, proizvod,kolicina,cijena) values 










