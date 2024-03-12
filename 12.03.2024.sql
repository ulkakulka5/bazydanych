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





DELIMITER //
CREATE FUNCTION potega(liczba INT, potega INT)
RETURNS INT

    DECLARE x INT;
    SET x = 1;
    WHILE potega > 0 DO
        SET x = x * liczba;
        SET potega = potega - 1;
    END WHILE;
    RETURN x;
END //
DELIMITER ;






CREATE FUNCTION trojkat(a INT, b INT, c INT)
    -> RETURNS BOOL
    -> BEGIN
    -> DECLARE x BOOL;
    -> IF a+b>c and c+a>b and c+b>a
    -> THEN SET x=TRUE;
    -> ELSE
    -> SET x=FALSE;
    -> END IF;
    -> return x;
    -> END//


