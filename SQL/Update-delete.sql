select * from smjerovi
where sifra =1;

update smjerovi set naziv = 'C# programiranje'
where sifra = 1;

update smjerovi set trajanje = 300, cijena = 2000
where sifra = 1;

update smjerovi set naziv = 'Serviser', trajanje= 120, cijena= 15000
where sifra = 1;

update smjerovi set cijena = cijena*1.2;
update smjerovi set cijena = cijena*0.8;
update smjerovi set cijena = cijena-100;

select * from polaznici;

update polaznici set oib = '00000000001', brojugovora = '12/2023'
where sifra = 18;

update polaznici set oib='     ', brojugovora=''
where sifra=19;

update polaznici set oib = null, brojugovora = null
where sifra=19;


select * from smjerovi;
delete from smjerovi where sifra = 1;
delete from clanovi;
delete from grupe;
delete from smjerovi;
