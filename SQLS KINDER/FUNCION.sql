/*
PROCEDIMIENTO ALMACENADO
- Procedimiento almacenado que retorne todas las actividades que tiene un programa que se le ingrese. 
*/
CREATE OR REPLACE FUNCTION ACT_POR_PROGRAMA (VARCHAR) RETURNS SETOF VARCHAR
AS
$$ 

SELECT NOMBRE_AVTIVI FROM ACTIVIDAD ACT
INNER JOIN PROGRAMA PRG ON PRG.ID_PROGRAMA = ACT.ID_PROGRAMA 
WHERE
NOMBRE_PROGRAMA = $1

$$
LANGUAGE SQL;
--EJEMPLO:
/*
AL INGRESAR "Desarrollo emocional" LA FUNCIÓN NOS DEVOLVERÁ:
CUENTO, DICCIONARIO EMOCIONES, MUSICA, PINTURA, MIMICA, ACTIVIDADES
CORRESPONDIENTES AL PROGRAMA
SELECT ACT_POR_PROGRAMA('Desarrollo emocional');*/
