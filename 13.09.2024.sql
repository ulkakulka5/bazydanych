CREATE TABLE autor
(
id_autora int IDENTITY (1,1) NOT NULL PRIMARY KEY,
nazwisko nvarchar (50) NOT NULL,
imie nvarchar (30) NOT NULL,
narodowosc nvarchar (30),
okres_tworzenia nvarchar(35),
jezyk nvarchar (30),
rodzaj_tworczosci nvarchar (35),
osiagniecia nvarchar (200)
)

CREATE TABLE faktura
(
nr_faktury int IDENTITY(1,1) NOT NULL PRIMARY KEY,
sposob_platnosci nvarchar(30),
data_wystawienia_faktury date
)

CREATE TABLE klient
(
id_klienta int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nazwisko nvarchar(60) NOT NULL,
imie nvarchar(40) NOT NULL,
kod_pocztowy nvarchar(6),
miejscowosc nvarchar(50) DEFAULT 'Warszawa',
ulica nvarchar(50),
nr_domu nvarchar(7),
PESEL nvarchar(11) NOT NULL,
telefon nvarchar(12) UNIQUE,
adres_e_mail nvarchar(70)
)

CREATE TABLE ksiazki
(
id_ksiazki int IDENTITY(1,1) not null primary key,
tytul varchar(100) not null,
id_autora int references autor (id_autora),
cena money,
wydawnictwo varchar(20),
temat varchar(30),
miejsce_wydania varchar(28),
jezyk_ksiazki varchar(15),
opis varchar(100),
rok_wydania varchar(4)
)

CREATE TABLE zamowienia
(
id_zamowienia int IDENTITY(1,1) NOT NULL PRIMARY KEY,
data_zlozenia_zamowienia date,
data_wyslania date,
koszt_wysylki money,
id_klienta int REFERENCES klient (id_klienta),
id_faktura int REFERENCES faktura(nr_faktury)
)

CREATE TABLE rejestracja_zamowienia
(
id_zamowienia int REFERENCES Zamowienia(id_zamowienia),
id_ksiazki int REFERENCES Ksiazki(id_ksiazki),
liczba_egz int
)
