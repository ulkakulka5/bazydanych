T: funkcje składowane mysql

CREATE FUNCTION nazwa_funkcji([parametry_funckji]) 
RETURNS typ_danych_zwracanej_wartości
instrukcje_składające_się_na_funkcję;


CREATE FUNCTION date_s(s char)
RETURNS char(10)
RETURN concat(day(now()),s, month(now()),s,year(now());


IF j>m AND j<100               <-------------NIE W NAWIASIE
THEN ...
ELSE IF j=30
THEN ...
END IF;
END;

IF j>m AND j<100               
THEN ...
ELSEIF j=30                     <-------------RAZEM, JEDNO ZAKOŃCZENIE IF
THEN ...
END IF;


WHILE v <3 DO
...
SET v=v+1
END WHILE;


CREATE FUNCTION potega(liczba int, potega int)
    -> RETURNS int
    -> RETURN
    -> WHILE potega>0 DO
    -> liczba=liczba * liczba
    -> potega=potega-1
    -> END WHILE;
