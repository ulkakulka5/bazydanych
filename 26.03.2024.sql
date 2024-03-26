SIGNAL sygnalizuje blad

DECLARE EXIT(przerwani procedury)/CONTINUE(przeskoczenie) HANDLER FOR kod błędu/SQLSTATE znak_bledu | warunek} 


________________________________________________________________________________________________

DELIMITER //
CREATE PROCEDURE zakupy (IN name VARCHAR(20), IN surename VARCHAR(20))
BEGIN
    SELECT ksiazki.tytul
    FROM ksiazki
    INNER JOIN rejestracja_zam ON rejestracja_zam.id_ksiazki = ksiazki.id_ksiazki
    INNER JOIN zamowienia ON zamowienia.id_zamowienia = rejestracja_zam.id_zamowienia
    INNER JOIN klient ON klient.id_klienta = zamowienia.id_klienta
    WHERE klient.nazwisko = surename AND klient.imie = name;
END//




DELIMITER //
CREATE PROCEDURE pobierz_autora (OUT nazwiskoZM VARCHAR(30), IN imie VARCHAR(30))
BEGIN
    SELECT nazwisko INTO nazwiskoZM FROM autor WHERE autor.imie = imie;
END //
