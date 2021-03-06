/*
TRIGGER 1
-El kínder solo acepta infantes para los programas entre los 3
y 4 años de edad (se debe hacer con trigger,).
*/
--creación de funcion
CREATE OR REPLACE FUNCTION TG_IMPIDENINOS() RETURNS TRIGGER
AS
$$
    DECLARE
        MAX_EDAD INT := 4;
        MIN_EDAD INT := 3;
        EDAD INT;
        ANO_LECT VARCHAR;

    BEGIN	
        SELECT MAX(ANO) INTO ANO_LECT FROM ANO_LECTIVO;
        EDAD = (CAST(ANO_LECT AS DOUBLE PRECISION) - EXTRACT(YEAR FROM NEW.NACIMIENTO_DATE)); 
        IF( EDAD > MAX_EDAD OR EDAD < MIN_EDAD) THEN
            RAISE EXCEPTION 'ERROR AL INGRESAR AL NIÑO!! ES UN KINDER SOLO SE ACEPTA NIÑOS DE 3 Y 4 AÑOS';
        END IF;
        RETURN NEW;
    END;
    $$
    LANGUAGE PLPGSQL;
--creación del trigger
CREATE TRIGGER TG_IMPIDENINOS
BEFORE
INSERT ON NINIO
FOR EACH ROW
EXECUTE PROCEDURE TG_IMPIDENINOS();
--DATO DE PRUEBA
/*
--NIÑO MAYOR DE EDAD (5 AÑOS)
INSERT INTO NINIO (ID_NACIONALIDAD,ID_GENERO,ID_TALLA_ZAPATO,ID_TALLA_VESTIMENTA,
				   CI_NINIO,NOMBRE_NINIO,APELLIDO_NINIO,NACIMIENTO_DATE) VALUES
(1,1,1,1,'1301231537','LENIN ALEXIS','GALLEGO CARDENAS','2016-01-06');
--NIÑO MENOR DE EDAD (2 AÑOS)
INSERT INTO NINIO (ID_NACIONALIDAD,ID_GENERO,ID_TALLA_ZAPATO,ID_TALLA_VESTIMENTA,
				   CI_NINIO,NOMBRE_NINIO,APELLIDO_NINIO,NACIMIENTO_DATE) VALUES
(1,1,1,1,'1301231537','LENIN ALEXIS','GALLEGO CARDENAS','2019-01-06');*/