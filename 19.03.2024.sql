CREATE TRIGGER przerzuc BEFORE UPDATE ON ksiazki FOR EACH ROW SET new.poprzednia_cena= old.cena;
UPDATE ksiazki SET cena=100;
