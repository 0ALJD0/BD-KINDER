--INSERTANDO DATOS DE GENEROS Y NACIONALIDADES--
INSERT INTO GENERO (NOMBRE_GENERO) VALUES ('Masculino'), ('Femenino');
INSERT INTO NACIONALIDAD (NOMBRE_NACIONALIDAD) VALUES ('Peruana'),('Colombiana'),('Ecuatoriana');
--INSERTANDO TALLAS DE VESTIMENTA Y ZAPATO--
INSERT INTO TALLA_VESTIMENTA (NUMERO_TALLA) VALUES (98),(100),(102),(104),(106);
INSERT INTO TALLA_ZAPATO (NUMERO_TALLA) VALUES (20),(22),(24);
--INSERTANDO DATOS EN RELACION--
INSERT INTO RELACION (NOMBRE_PARENTESCO) VALUES ('TÍO/A'), ('ABUELO/A'),('HERMANO/A'),('PRIMO/A'),('PADRINO/A');
--INSERTANDO DATOS EN ALERGIAS Y MEDICAMENTOS--
INSERT INTO ALERGIAS (NOMBRE_ALERGIA) VALUES ('SARPULLIDO'),('INTOLERANCIA A LACTOSA'),('ACAROS DEL POLVO'),('POLEN'),('MOHO'),('MASCOTAS');
INSERT INTO MEDICAMENTO (NOMBRE_MEDICAMENTO,DESCRIPTION_MEDICAMENTO) VALUES ('ACETAMINOFENO','Reducir molestias, dolores, fiebre en niños con resfriados'),
('AMOXICILINA','Medicamento para las infecciones por microrganismos'),('LORATADINA','Tratamiento para la rino conjuntivitis y urticaria crónica');
INSERT INTO ANO_LECTIVO (ANO) VALUES ('2018'),('2019'),('2020'),('2021');
INSERT INTO PROGRAMA (NOMBRE_PROGRAMA) VALUES ('Desarrollo intelectual'),('Desarrollo emocional'),('Desarrollo motriz');
INSERT INTO TIPO_RENDIMIENTO (NOMBRE_RENDIMIENT) VALUES ('REGULAR'),('BUENO'),('EXCELENTE');
INSERT INTO ACTIVIDAD (ID_PROGRAMA,NOMBRE_AVTIVI,DESCRIPCION_ACTIVI,DURACION_ACTIVI) VALUES (1,'PREGUNTAS Y RESPUESTAS','EL PROFESOR PROPONDRÁ ALGUNAS PREGUNTAS SENCILLAS PARA QUE LOS NIÑOS LA RESPONDAN Y SE LLEVEN UN PREMIO',1),
												(2,'CUENTO','LEER UN CUENTO EN CONJUNTO PARA RECONOCER EMOCIONES Y FOMENTAR EL AMOR A LOS LIBROS',6),
												(3,'BAILAR','SE LES DISPONDRÁN A LOS NIÑOS CANCIONES INFANTILES PARA QUE SE EJERCITEN Y DIVIERTAN USANDO MÁSCARAS COLORIDAS',3),
												(1,'JUEGO DE MEMORIA','SE COLOCARAN CARTAS CON IMAGENES DE ANIMALES Y LOS NIÑOS BUSCARAN AQUELLAS QUE SEAN IGUALES',2),
												(2,'DICCIONARIO EMOCIONES','CONSISTE EN COGER VARIAS FOTOGRAFÍAS CON PERSONAS, NIÑOS O PERSONAJES EXPRESANDO UNA EMOCIÓN Y LOS NIÑOS DEBEN IDENTIFICAR LA EMOCIÓN Y CLASIFICAR LAS IMÁGENES.',2),
												(3,'SALTAR LA CUERDA','LOS NIÑOS TENDRÁN A SU DISPOSICIÓN UNA CUERDA CON LAS QUE HARÁN UNA RUTINA DE SALTOS',2),
												(1,'VOCALES','PRACTICAR LAS VOCALES, TANTO SU ESCRITURA COMO SU PRONUNCIACION',4),
												(2,'MUSICA','SE COLOCARAN MUSICAS DISTINTAS Y SE PREGUNTARA QUE TIPO DE EMOCIONES LES HACE SENTIR ESAS MUSICAS',1),
												(3,'ATARSE LOS CORDONES','SE LES ENSEÑARÁ A LOS NIÑOS DIFERENTES NUDOS PARA ATAR SUS ZAPATOS',2),
												(1,'LETRAS CON PLASTILINA','LOS NIÑOST ENDRÁN PLASTILINAS CON LAS QUE CREARÁN LAS LETRAS DEL ABECEDARIO',1),
												(2,'PINTURA','EN ESTA ACTIVIDAD DEJAREMOS QUE PINTEN LIBREMENTE LAS EMOCIONES QUE SIENTEN',1),
												(3,'EQUILIBRIO','SE PARARÁN EN UNA PIERNA Y EL QUE AGUANTE MÁS TIEMPO PODRÁ TOMAR LA COLADA',1),
												(1,'NUMEROS','CONTAR LOS NUMEROS DE LO 1 AL 10 PARA SU DESAROLLO  INTELECTUAL',5),
												(2,'MIMICA','SE PREPARAN VARIAS TARJETAS Y SE ESCRIBE EN ELLAS DIFERENTES EMOCIONES, LUEGO EL NIÑO COGE UNA TARJETA Y DEBE REPRESENTAR LA EMOCIÓN MÍMICAMENTE.',2),
												(3,'CARRETILLA','LOS NIÑOS SE TOMARAN LAS PIERNAS Y ALZARAN HACIENDO FORMA DE CARRETILLA Y HARÁN CARRERAS',1);
INSERT INTO MATERIAL (NOMBRE_MATERIAL) VALUES ('CUADERNO'),('LAPIZ'),('BORRADOR'),('ACUARELA'),('PINCEL'),('MANDÍL'),('PARLANTE BLUETOOTH'),('LIBRO'),('TARJETAS'),('PLASTILINA'),('FOTOGRAFÍAS'),('CUERDA PARA SALTAR'),('MÁSCARAS'),('LLEVAR ZAPATOS');
INSERT INTO PROFESIONAL (ID_ACTIVIDAD,ID_GENERO,ID_NACIONALIDAD, NOMBRES_PROF,APELLIDOS_PROF, CI_PROF,DIRECCION_PROF,TELEFONO_PROF,NO_CERTIFI_SENECYT) VALUES
											(1,1,2,'RONNY LAURIANO', 'BARREIRA CARREÑO','1254726531','CALLE 2 Y AV 4','0984563212','VILLA 1'),
											(2,1,3,'LAURIANO CHRISTIAN','CARREÑO MENENDEZ','1456547892','CALLE 3 Y AV 5','0984253618','VILLA 2'),
											(3,2,2,'CLAUDIA EMILIA','SMITH FIGUEROA','1457893214','CALLE 5 Y AV 7','0961982573','VILLA 3'),
											(4,1,1,'PEDRO EMILIO','ARCE PONCE','1458627891','CALLE 4 Y AV 6','0994562137','VILLA 4'),
											(5,2,3,'CYNTHYA RUPERTA','COPIANO DOLORES','1234567890','CALLE 6 Y AV 8','0984561233','VILLA 5'),
											(6,2,1,'RUPERTA CRISTINA','DOLORES COPIANO','1548457893','CALLE 7 Y AV 9','0984562571','VILLA 6'),
											(7,1,2,'CARLOS MANUEL','VILLAGRÁN CORTÉS','1452638795','CALLE 8 Y AV 10','0987453211','VILLA 7'),
											(8,1,3,'RAMÓN GILBERTO','VALDÉZ MONTESDEOCA','1365894753','CALLE 9 Y AV 11','0985623145','VILLA 8'),
											(9,2,1,'CRISTINA MELISSA','AGUILER DARNI','1524896521','CALLE 10 Y AV 12','0921564562','VILLA 9'),
											(10,1,2,'BORIS LEONEL','LOOR BARRETO','1456213759','CALLE 11 Y AV 13','0985243216','VILLA 10'),
											(11,1,1,'MIGUEL ANGEL','POZO VERA','1234756827','CALLE 12 Y AV 14','0987562456','VILLA 11'),
											(12,2,3,'VALENTINA VALERIA','MAYORGA YAMBAE','1425687951','CALLE 13 Y AV 15','0956248723','VILLA 12'),
											(13,2,2,'LUCY MARY','FREEMAN SMITH','1234569510','CALLE 14 Y AV 16','0945213685','VILLA 13'),
											(14,1,2,'CAROLINA JULIETA','MDRANDA VERA','1456328942','CALLE 15 Y AV 17','0986521427','VILLA 14'),
											(15,2,1,'MATILDA LAURA','BARRIGA MEZA','1452368524','CALLE 16 Y AV 18','0985243697','VILLA 15');
											
INSERT INTO EMPLEA (ID_MATERIAL,ID_ACTIVIDAD) VALUES (1,1),(2,1),(3,1),	(8,2),(7,3),(9,4),(11,5),(12,6),(1,7),(2,7),(3,7),(7,8),(14,9),(10,10),(4,11),(5,11),(6,11),(1,13),(2,13),(3,13),(9,14);									
INSERT INTO CREADO (ID_ANO_LECTIVO, ID_ACTIVIDAD) VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(3,9),(3,10),(3,11),(4,12),(4,13),(4,14),(4,15);
INSERT INTO PADRE (ID_GENERO,ID_NACIONALIDAD,NOMBRE_PADRE,APELLIDO_PADRE,CI_PADRE,DIRECCION_PADRE,TELEFONO_PADRE,DOMICILIO_PADRE) VALUES
												(1,1,'FLORENTINO FERNANDO','CARDENAS BARRE','1234132523','COSTA AZUL','0958746859','VILLA 1'),
												(2,2,'TATIANA MARIA','BARRE CARDENAS','1342132525','LOS ESTEROS','0988646850','VILLA 2'),
												(1,3,'JAIME FERNANDO','DUARTE LOPEZ','1450132527','COSTA AZUL','0918546841','VILLA 3'),
												(2,1,'MONSERRATE ANA','LUCAS DUARTE','1558132529','LOS ESTEROS','0948446832','VILLA 4'),
												(1,2,'PETER DIEGO','LOPEZ ORDOÑEZ','1666132531','LA AURORA','0978346823','VILLA 5'),
												(2,3,'MARIA ANTONIA','ORDOÑEZ FLORES','1774132533','LAS MARIAS','0908246814','VILLA 6'),
												(1,1,'FERNANDO PETER','FLORES CHICA','1882132535','JOCAY','0938146805','VILLA 7'),
												(2,2,'MARIA JOSE','GUERRERO RIVERA','1990132537','LAS CUMBRES','0968046796','VILLA 8'),
												(1,3,'DIEGO HERNANDO','CHICA LOOR','2098132539','15 DE SEPTIEMBRE','0997946787','VILLA 9'),
												(2,1,'MARCELA ANTONIA','CARDONA CARDENAS','2206132541','CORDOVA','0927846778','VILLA 10'),
												(1,2,'MIKEL JAIME','RIVERA DUARTE','2314132543','SAN JUAN','0957746769','VILLA 11'),
												(2,3,'NANA MONSERRATE','PAEZ VERA','2422132545','SAN MATEO','0987646760','VILLA 12'),
												(1,1,'HERNANDO MARIO','MONTIEL PAEZ','2530132547','COSTA AZUL','0917546751','VILLA 13'),
												(2,2,'ROBERTA ANA','ALVARADO CHICA','2638132549','LOS ESTEROS','0947446742','VILLA 14'),
												(1,3,'MARIO PEDRO','LOOR RIVERA','2746132551','ALTAGRACIA','0977346733','VILLA 15'),
												(2,1,'FLORENTINA MARIA','VERA GUERRERO','2854132553','ALTAMIRA','0907246724','VILLA 16'),
												(1,2,'ALEJANDRO BRYAN','PONCE ARCE','2962132555','SAN MATEO','0917546751','VILLA 17'),
												(2,3,'ESTHER LAIDY','PEREZ BECERRA','3070132557','COSTA AZUL','0947446742','VILLA 18'),
												(1,1,'ERICK MATEO','BRIONES NAVARRO','3178132559','LOS ESTEROS','0977346733','VILLA 19'),
												(2,2,'ZARA JUDITH','PAREJO JARA','3286132561','ALTAGRACIA','0907246724','VILLA 20'),
												(1,3,'DANIEL LEO','PAZ MERA','3394132563','ALTAMIRA','0917546751','VILLA 21'),
												(2,1,'MAITÉ ANA','MONTES MARTIN','3502132565','SAN MATEO','0947446742','VILLA 22'),
												(1,2,'DARIO DAVID','MOREIRA SILVA','3610132567','COSTA AZUL','0977346733','VILLA 23'),
												(2,3,'VANESA ALARCÍ','MARTINEZ MOREIRA','3718132569','LOS ESTEROS','0907246724','VILLA 24');

INSERT INTO NINIO (ID_NACIONALIDAD,ID_GENERO,ID_TALLA_ZAPATO,ID_TALLA_VESTIMENTA,CI_NINIO,NOMBRE_NINIO,APELLIDO_NINIO,NACIMIENTO_DATE) VALUES
												(1,1,1,1,'1301234537','ALEXIS LENIN','CARDENAS GALLEGO','2015-01-06'),
												(1,2,2,2,'1301324538','EMILIA MARIA','BARRE SIERRA','2015-01-07'),
												(1,1,3,3,'1301414539','IAN BRYAN','DUARTE MARQUEZ','2015-01-08'),
												(1,2,1,4,'1301504540','ISABEL ZOE','LUCAS MERCHAN','2014-01-09'),
												(1,1,2,5,'1301594541','MIGUEL ANGEL','LOPEZ PERELLO','2014-01-10'),
												(1,2,3,1,'1301684542','DIANA ANDREA','ORDOÑEZ PORTUGAS','2014-01-11'),
												(1,1,1,2,'1301774543','NOAH DANIEL','FLORES BELMONTE','2016-01-12'),
												(1,2,2,3,'1301864544','GALDYS DANIELA','GUERRERO COBOS','2016-01-13'),
												(1,1,3,4,'1301954545','TEODORO LEONEL','CHICA CASTILLA','2016-01-14'),
												(1,2,1,5,'1302044546','MARIA INES','CARDONA OLIVARES','2015-01-15'),
												(1,1,2,1,'1302134547','GREGORIO ARIEL','RIVERA NARVAEZ','2015-01-16'),
												(1,2,3,2,'1302224548','AVELINA MISHEL','PAEZ OLIVIERA','2015-01-17'),
												(1,1,1,3,'1302314549','ENRIC JUAN','MONTIEL JARA','2017-01-18'),
												(1,2,2,4,'1302404550','RAMONA SOFIA','ALVARADO BARROS','2017-01-19'),
												(1,1,3,5,'1302494551','POL MARIO','LOOR GALVAN','2017-01-20'),
												(1,2,1,1,'1302584552','PALOMA JOHANA','VERA CAMACHO','2016-01-21'),
												(1,1,2,2,'1302674553','OMAR ZEUS','PONCE SILVESTRE','2016-01-22'),
												(1,2,3,3,'1302764554','AIMAR ROSMARY','PEREZ CHEN','2016-01-23'),
												(1,1,1,4,'1302854555','ALEXANDER DAVID','BRIONES PAREJA','2018-01-24'),
												(1,2,2,5,'1302944556','DAMARIS CARLA','PAREJO PEÑARRIETA','2018-01-25'),
												(1,1,3,1,'1303034557','MAXIMO DORIAN','PAZ MARTIN','2018-01-26'),
												(1,2,1,2,'1303124558','ASCENSION AZUCENA','MONTES NOVOA','2017-01-27'),
												(1,1,2,3,'1303214559','ABRHAM JOSE','MOREIRA MALDONADO','2017-01-28'),
												(1,2,3,4,'1303304560','SOFIA SHEILA','MARTINEZ FONSECA','2017-01-29');
INSERT INTO ESTADO_SALUD (ID_NINIO, ULTIMA_FECHA_ENFERMO,DIAGNOSTICO,DOCTOR_TRATANTE) VALUES 
												(1,'2018-01-02','EL NIÑO PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(2,'2018-01-03','LA NIÑA PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(3,'2018-01-04','EL NIÑO PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(4,'2018-01-01','LA NIÑA PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(5,'2018-01-05','EL NIÑO PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(6,'2018-01-06','LA NIÑA PRESENTABA SINTOMAS DEUNA FUERTE ALERGÍA','DR. MARCELO MILÁN'),
												(7,'2017-02-23','EL NIÑO HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(8,'2017-02-24','LA NIÑA HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(9,'2017-02-25','EL NIÑO HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(10,'2017-02-22','LA NIÑA HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(11,'2017-02-26','EL NIÑO HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(12,'2017-02-27','LA NIÑA HA ESTADO CON FUERTE FIEBRE DEBIDO A SU ALERGÍA AL POLÉN','DR. MEDARDO SILVA'),
												(13,'2018-05-06','EL NIÑO SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(14,'2018-05-07','LA NIÑA SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(15,'2018-05-08','EL NIÑO SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(16,'2018-05-05','LA NIÑA SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(17,'2018-05-09','EL NIÑO SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(18,'2018-05-10','LA NIÑA SUFRIÓ DE UN RECIENTE SALPULLIDO DEBIDO A SU ALERGÍA AL CALOR','DR. WILLIAM GUILLERM'),
												(19,'2020-06-01','EL BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA'),
												(20,'2020-06-03','LA BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA'),
												(21,'2020-06-04','EL BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA'),
												(22,'2020-06-05','LA BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA'),
												(23,'2020-06-06','EL BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA'),
												(24,'2020-06-07','LA BEBÉ SE ENCUENTRA  BIEN PERO PODRÍA ENPEORAR','DR.PEDRO  PICAPIEDRA');
INSERT INTO SALUD_ALERGIAS_RELATION (ID_ALERGIA,ID_SALUD_STAT) VALUES
									(1,1),(2,2),(1,2),(3,3),(4,4),(5,5),(6,6),(1,7),(2,8),(3,8),(3,9),(4,10),(5,11),
									(6,12),(1,13),(2,14),(4,14),(3,15),(4,16),(5,17),(6,18),(1,19),(2,20),(6,20),(3,21),
									(4,22),(5,23),(6,24);
INSERT INTO SALUD_MEDICAMENT_RELATION (ID_MEDICAMENTO,ID_SALUD_STAT) VALUES
									(1,1),(2,2),(3,3),(1,3),(1,4),(2,5),(3,6),(1,7),(2,8),(3,9),(1,10),(2,11),(3,12),
									(1,13),(2,14),(1,14),(3,15),(1,16),(2,17),(3,17),(3,18),(1,19),(2,20),(3,20),(3,21),
									(1,22),(2,23),(3,24);
INSERT INTO TUTOR (ID_GENERO,ID_NACIONALIDAD,ID_PARENTESCO,NOMBRE_TUTOR,APELLIDO_TUTOR,CI_TUTOR,DIRECCION_TUTOR,TELEFONO_TUTOR,DOMICILIO_TUTOR,MOTIVO) VALUES
												(1,1,1,'FERNANDO FLORENTINO','CARDENAS BARRE','1234132523','COSTA AZUL','0958746859','VILLA 1','LOS PADRES POR TRABAJO NO PUEDEN ESTARCON EL NIÑO'),
												(2,2,2,'MARIA TATIANA','BARRE CARDENAS','1342132525','LOS ESTEROS','0988646850','VILLA 2','NO POSEE PADRE Y SU MADRE ESTÁ EN UN MANICOMIO'),
												(1,3,3,'FERNANDO JAIME','DUARTE LOPEZ','1450132527','COSTA AZUL','0918546841','VILLA 3','SUS PADRES SE LO DEJARON ENCARGADO, Y SE FUERON A OTRO PAÍS POR TRABAJO'),
												(2,1,4,'ANA MONSERRATE','LUCAS DUARTE','1558132529','LOS ESTEROS','0948446832','VILLA 4','SUS PADRES FALLECIERON EN UN ACCIDENTE DONDE SE QUEMÓ LA CASA'),
												(1,2,5,'DIEGO PETER','LOPEZ ORDOÑEZ','1666132531','LA AURORA','0978346823','VILLA 5','NO POSEE PADRE Y SU MADRE ESTÁ EN UN MANICOMIO'),
												(2,3,1,'ANTONIA MARIA','ORDOÑEZ FLORES','1774132533','LAS MARIAS','0908246814','VILLA 6','SUS PADRES FALLECIERON EN UN ACCIDENTE DONDE SE QUEMÓ LA CASA'),
												(1,1,2,'PETER FERNANDO','FLORES CHICA','1882132535','JOCAY','0938146805','VILLA 7','NO POSEE PADRE Y SU MADRE ESTÁ EN UN MANICOMIO');
INSERT INTO TUTORES_NINIOS_RELATION (ID_NINIO,ID_TUTOR) VALUES (1,1),(6,2),(11,3),(18,4),(17,5),(23,6),(24,7);
INSERT INTO RELATIONSHIP_15 (ID_PADRE,ID_NINIO) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
												(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(16,16),
												(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),
												(24,24);
INSERT INTO RENDIMIENTO (ID_ACTIVIDAD,ID_NINIO,ID_TIPO_RENDIMIENT,OBSERVACIONES) VALUES
												(1,1,1,'EL NIÑO NO RINDIÓ BIEN'),(2,1,2,'EL NIÑO RINDIÓ BIEN'),(3,1,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,1,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(1,2,1,'EL NIÑO NO RINDIÓ BIEN'),(2,2,2,'EL NIÑO RINDIÓ BIEN'),(3,2,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,2,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(1,3,1,'EL NIÑO NO RINDIÓ BIEN'),(2,3,2,'EL NIÑO RINDIÓ BIEN'),(3,3,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,3,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(1,4,1,'EL NIÑO NO RINDIÓ BIEN'),(2,4,2,'EL NIÑO RINDIÓ BIEN'),(3,4,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,4,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(1,5,1,'EL NIÑO NO RINDIÓ BIEN'),(2,5,2,'EL NIÑO RINDIÓ BIEN'),(3,5,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,5,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(1,6,1,'EL NIÑO NO RINDIÓ BIEN'),(2,6,2,'EL NIÑO RINDIÓ BIEN'),(3,6,3,'EL NIÑO RINDIÓ EXCELENTE'),(4,6,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,7,1,'EL NIÑO NO RINDIÓ BIEN'),(6,7,2,'EL NIÑO RINDIÓ BIEN'),(7,7,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,7,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,8,1,'EL NIÑO NO RINDIÓ BIEN'),(6,8,2,'EL NIÑO RINDIÓ BIEN'),(7,8,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,8,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,9,1,'EL NIÑO NO RINDIÓ BIEN'),(6,9,2,'EL NIÑO RINDIÓ BIEN'),(7,9,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,9,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,10,1,'EL NIÑO NO RINDIÓ BIEN'),(6,10,2,'EL NIÑO RINDIÓ BIEN'),(7,10,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,10,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,11,1,'EL NIÑO NO RINDIÓ BIEN'),(6,11,2,'EL NIÑO RINDIÓ BIEN'),(7,11,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,11,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(5,12,1,'EL NIÑO NO RINDIÓ BIEN'),(6,12,2,'EL NIÑO RINDIÓ BIEN'),(7,12,3,'EL NIÑO RINDIÓ EXCELENTE'),(8,12,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,13,1,'EL NIÑO NO RINDIÓ BIEN'),(10,13,2,'EL NIÑO RINDIÓ BIEN'),(11,13,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,14,1,'EL NIÑO NO RINDIÓ BIEN'),(10,14,2,'EL NIÑO RINDIÓ BIEN'),(11,14,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,15,1,'EL NIÑO NO RINDIÓ BIEN'),(10,15,2,'EL NIÑO RINDIÓ BIEN'),(11,15,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,16,1,'EL NIÑO NO RINDIÓ BIEN'),(10,16,2,'EL NIÑO RINDIÓ BIEN'),(11,16,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,17,1,'EL NIÑO NO RINDIÓ BIEN'),(10,17,2,'EL NIÑO RINDIÓ BIEN'),(11,17,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(9,18,1,'EL NIÑO NO RINDIÓ BIEN'),(10,18,2,'EL NIÑO RINDIÓ BIEN'),(11,18,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,19,1,'EL NIÑO NO RINDIÓ BIEN'),(13,19,2,'EL NIÑO RINDIÓ BIEN'),(14,19,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,19,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,20,1,'EL NIÑO NO RINDIÓ BIEN'),(13,20,2,'EL NIÑO RINDIÓ BIEN'),(14,20,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,20,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,21,1,'EL NIÑO NO RINDIÓ BIEN'),(13,21,2,'EL NIÑO RINDIÓ BIEN'),(14,21,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,21,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,22,1,'EL NIÑO NO RINDIÓ BIEN'),(13,22,2,'EL NIÑO RINDIÓ BIEN'),(14,22,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,22,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,23,1,'EL NIÑO NO RINDIÓ BIEN'),(13,23,2,'EL NIÑO RINDIÓ BIEN'),(14,23,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,23,3,'EL NIÑO RINDIÓ EXCELENTE'),
												(12,24,1,'EL NIÑO NO RINDIÓ BIEN'),(13,24,2,'EL NIÑO RINDIÓ BIEN'),(14,24,3,'EL NIÑO RINDIÓ EXCELENTE'),(15,24,3,'EL NIÑO RINDIÓ EXCELENTE');
INSERT INTO MATRICULA (ID_ACTIVIDAD,ID_NINIO,ESTADO_MATRICULA,PRECIO_MATRICULA) VALUES
												(1,1,TRUE,10),(2,1,TRUE,10),(3,1,TRUE,10),(4,1,TRUE,10),
												(1,2,FALSE,10),(2,2,TRUE,10),(3,2,TRUE,10),(4,2,TRUE,10),
												(1,3,TRUE,10),(2,3,FALSE,10),(3,3,TRUE,10),(4,3,TRUE,10),
												(1,4,TRUE,10),(2,4,TRUE,10),(3,4,TRUE,10),(4,4,TRUE,10),
												(1,5,TRUE,10),(2,5,TRUE,10),(3,5,FALSE,10),(4,5,TRUE,10),
												(1,6,TRUE,10),(2,6,FALSE,10),(3,6,TRUE,10),(4,6,TRUE,10),
												(5,7,TRUE,10),(6,7,TRUE,10),(7,7,TRUE,10),(8,7,TRUE,10),
												(5,8,TRUE,10),(6,8,TRUE,10),(7,8,TRUE,10),(8,8,FALSE,10),
												(5,9,TRUE,10),(6,9,TRUE,10),(7,9,TRUE,10),(8,9,TRUE,10),
												(5,10,TRUE,10),(6,10,FALSE,10),(7,10,TRUE,10),(8,10,TRUE,10),
												(5,11,TRUE,10),(6,11,TRUE,10),(7,11,FALSE,10),(8,11,TRUE,10),
												(5,12,TRUE,10),(6,12,FALSE,10),(7,12,TRUE,10),(8,12,TRUE,10),
												(9,13,TRUE,10),(10,13,FALSE,10),(11,13,TRUE,10),
												(9,14,TRUE,10),(10,14,TRUE,10),(11,14,TRUE,10),
												(9,15,TRUE,10),(10,15,TRUE,10),(11,15,TRUE,10),
												(9,16,TRUE,10),(10,16,TRUE,10),(11,16,TRUE,10),
												(9,17,TRUE,10),(10,17,TRUE,10),(11,17,TRUE,10),
												(9,18,TRUE,10),(10,18,TRUE,10),(11,18,TRUE,10),
												(12,19,TRUE,10),(13,19,TRUE,10),(14,19,TRUE,10),(15,19,TRUE,10),
												(12,20,FALSE,10),(13,20,TRUE,10),(14,20,TRUE,10),(15,20,TRUE,10),
												(12,21,TRUE,10),(13,21,TRUE,10),(14,21,TRUE,10),(15,21,FALSE,10),
												(12,22,TRUE,10),(13,22,TRUE,10),(14,22,TRUE,10),(15,22,TRUE,10),
												(12,23,TRUE,10),(13,23,FALSE,10),(14,23,TRUE,10),(15,23,TRUE,10),
												(12,24,FALSE,10),(13,24,TRUE,10),(14,24,TRUE,10),(15,24,TRUE,10);
												
												
												
																							
												
									
