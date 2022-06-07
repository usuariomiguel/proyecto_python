-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 192.168.1.138    Database: Exameness
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `informatica`
--

DROP TABLE IF EXISTS `informatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informatica` (
  `idexamen1` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idexamen1`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informatica`
--

LOCK TABLES `informatica` WRITE;
/*!40000 ALTER TABLE `informatica` DISABLE KEYS */;
INSERT INTO `informatica` VALUES (1,'Cual de las siguientes opciones corresponden a tipos de Sistemas Operativos Existentes en el mercado.'),(2,'Que programa de ofimática utilizamos para escribir cartas?'),(3,'Cuando realizamos dibujos y hacemos edicion de imagenes en la computadora lo podemos hacer con algunos de estos programas, ¿cuales son?'),(4,'Los elementos de un computador son Ratón y Teclado?'),(5,' Menciona que son los elementos de entrada a un computador.'),(6,'¿Qué función cree usted que cumplan los dispositivos que están conectados a la computadora?'),(7,'El teclado permite la entrada de datos al computador?'),(8,'¿Cuáles cree que permiten la salida de información?'),(9,'Menciona ¿que son Dispositivos de Almacenamiento?'),(10,'¿Que son Dispositivos de Comunicaciones?'),(11,'Barra de tareas'),(12,'La barra de desplazamiento permite'),(13,'Indique ¿cuál es la combinación de teclas que sirve para cerrar una ventana?');
/*!40000 ALTER TABLE `informatica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica` (
  `idexamen1` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idexamen1`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` VALUES (1,'¿Cuál fue la primera grabación de Rock and Roll?'),(2,'Una de estas obras no es de Mozart. ¿Cuál de ellas?'),(3,'¿Cuál de los siguientes cantantes pronunció la frase \n\'Prefiero que me odien por lo que soy a que me admiren por lo que nunca seré\'?'),(4,'¿Cuándo nació el rap?'),(5,'¿Es cierto que las flores crecen más rápido si suena música a su alrededor?'),(6,'¿Quien era el cantante de Héroes del Silencio?'),(7,'¿Cual de estos artistas ha sido numero 1 en la lista general de singles de EEUU?'),(8,'¿Quien queria entrar en tu garito con zapatillas?'),(9,'¿Cual de estas combinaciones de colores es una combinacion de Malú?'),(10,'Europe y su \'The final countdown\' siguen despertando emociones. ¿Recuerdas de qué país era el grupo?\n'),(11,'Nos remontamos mucho más atrás para preguntaros, ¿quién fue el primer trovador de la historia?'),(12,'¿De quién es la archiconocida canción \'All I have to do is dream\'?'),(13,'Un actor de películas de terror puso la voz al videoclip \'Thriller\' de Michael Jackson. ¿Quién fue?');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `natacion`
--

DROP TABLE IF EXISTS `natacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `natacion` (
  `idnatacion` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idnatacion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `natacion`
--

LOCK TABLES `natacion` WRITE;
/*!40000 ALTER TABLE `natacion` DISABLE KEYS */;
INSERT INTO `natacion` VALUES (1,'Según el tipo de piscina, podemos fijar 3 tipos:'),(2,'Señala los tipos diferentes estilos de natación:'),(3,'Los nadadores de espalda deberían rotar aproximadamente a cada lado….'),(4,'Estilo braza. Señala la afirmación correcta:'),(5,'Las fases de las que consta una salida de agarre son:'),(6,'Los movimientos de los brazos en su tracción en mariposa son:'),(7,'¿Qué es la natación sincronizada?'),(8,'Un jugador de waterpolo puede marcar gol con cualquier parte del cuerpo exceptuando el puño cerrado.'),(9,'Señala tres ventajas del aquaerobic:'),(10,'¿Nadador con mas medallas olimpicas?'),(11,'¿Cuantos metros componen la prueba mas larga de natacion?'),(12,'¿En el estilo de braza hace falta hacer volteo en el viraje?'),(13,'¿En el estilo de mariposa hace falta hacer volteo en el viraje?');
/*!40000 ALTER TABLE `natacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_informatica`
--

DROP TABLE IF EXISTS `notas_informatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_informatica` (
  `idnotas_informatica` int(11) NOT NULL AUTO_INCREMENT,
  `notas_informatica` int(2) DEFAULT NULL,
  PRIMARY KEY (`idnotas_informatica`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_informatica`
--

LOCK TABLES `notas_informatica` WRITE;
/*!40000 ALTER TABLE `notas_informatica` DISABLE KEYS */;
INSERT INTO `notas_informatica` VALUES (1,4);
/*!40000 ALTER TABLE `notas_informatica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_musica`
--

DROP TABLE IF EXISTS `notas_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_musica` (
  `idnotas_musica` int(11) NOT NULL AUTO_INCREMENT,
  `notas` int(2) DEFAULT NULL,
  PRIMARY KEY (`idnotas_musica`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_musica`
--

LOCK TABLES `notas_musica` WRITE;
/*!40000 ALTER TABLE `notas_musica` DISABLE KEYS */;
INSERT INTO `notas_musica` VALUES (1,3),(2,3),(3,4),(4,4);
/*!40000 ALTER TABLE `notas_musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_natacion`
--

DROP TABLE IF EXISTS `notas_natacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_natacion` (
  `idnotas_natacion` int(11) NOT NULL AUTO_INCREMENT,
  `notas_natacion` int(2) DEFAULT NULL,
  PRIMARY KEY (`idnotas_natacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_natacion`
--

LOCK TABLES `notas_natacion` WRITE;
/*!40000 ALTER TABLE `notas_natacion` DISABLE KEYS */;
INSERT INTO `notas_natacion` VALUES (1,2);
/*!40000 ALTER TABLE `notas_natacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_turismo`
--

DROP TABLE IF EXISTS `notas_turismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_turismo` (
  `idnotas_turismo` int(11) NOT NULL AUTO_INCREMENT,
  `notas_turismo` int(2) DEFAULT NULL,
  PRIMARY KEY (`idnotas_turismo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_turismo`
--

LOCK TABLES `notas_turismo` WRITE;
/*!40000 ALTER TABLE `notas_turismo` DISABLE KEYS */;
INSERT INTO `notas_turismo` VALUES (1,4),(2,0);
/*!40000 ALTER TABLE `notas_turismo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resp_informatica`
--

DROP TABLE IF EXISTS `resp_informatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resp_informatica` (
  `idtable1` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) DEFAULT NULL,
  `ip_resp` int(11) DEFAULT NULL,
  `programacion_correcta` int(11) DEFAULT NULL,
  `apartado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idtable1`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resp_informatica`
--

LOCK TABLES `resp_informatica` WRITE;
/*!40000 ALTER TABLE `resp_informatica` DISABLE KEYS */;
INSERT INTO `resp_informatica` VALUES (1,'Windows, Mac Os, Linux',1,1,'a'),(2,'Office, Word, Excel',1,NULL,'b'),(3,'Mother Board, Mouse, Teclado',1,NULL,'c'),(4,'Internet, Servidor, Conexión FTP',1,NULL,'d'),(5,'Word',2,1,'a'),(6,'Excel',2,NULL,'b'),(7,'Internet',2,NULL,'c'),(8,'Pluma y papel',2,NULL,'d'),(9,'Paint',3,NULL,'a'),(10,'Fireworks',3,NULL,'b'),(11,'Photoshop',3,NULL,'c'),(12,'Cualquiera de los 3 anteriores',3,1,'d'),(13,'Verdadero',4,1,'a'),(14,'Falso',4,NULL,'b'),(15,'Son programas en espera al ser ejecutados',5,NULL,'a'),(16,'Son los que permiten dar entrada al cpu',5,1,'b'),(17,'Son los que te permiten abrir Internet',5,NULL,'c'),(18,'Google, Yahoo, Gmail',5,NULL,'d'),(19,'Adornar al computador',6,NULL,'a'),(20,'Permiten la entrada como la salida de proceos',6,1,'b'),(21,'Permitir el libre acceso al cpu',6,NULL,'c'),(22,'Sirven para que encienda correctamente una computadora',6,NULL,'d'),(23,'Verdadero',7,1,'a'),(24,'Falso',7,NULL,'b'),(25,'Teclado',8,NULL,'a'),(26,'Mouse',8,NULL,'b'),(27,'Monitor',8,1,'c'),(28,'Impresora',8,NULL,'d'),(29,'Permiten la comunicación entre los usuarios y la computadora',9,NULL,'a'),(30,'Proporcionan almacenamiento no volátil de datos y memoria.',9,1,'b'),(31,'Permiten conectar a la computadora con otras a través de una interfaz de red. Entre ellos se pueden mencionar los Modem, Tarjetas de Interfaz de Red',9,NULL,'c'),(32,'Proporcionan almacenamiento no volátil de datos y memoria.',9,NULL,'d'),(33,'Proporcionan almacenamiento no volátil de datos y memoria.',10,NULL,'a'),(34,'Permiten la comunicación entre los usuarios y la computadora.',10,NULL,'b'),(35,'Permiten conectar a la computadora con otras a través de una interfaz de red. Entre ellos se pueden mencionar los Modem, Tarjetas de Interfaz de Red',10,1,'c'),(36,'Windows Live Messenger',10,NULL,'d'),(37,'Es la barra situada en la parte superior de la ventana',11,NULL,'a'),(38,'Es la barra situada en la parte central de la ventana',11,NULL,'b'),(39,'Es la barra situada en la inferior de la pantalla',11,1,'c'),(40,'Es la barra situada en la superior de la pantalla',11,NULL,'d'),(41,'Desplazarnos dentro de la ventana para ver su contenido',12,1,'a'),(42,'Mostrar cual es nombre de la ventana',12,NULL,'b'),(43,'Ver los nombres de los menús',12,NULL,'c'),(44,'Conocer la ubicación de las carpetas.',12,NULL,'d'),(45,'ALT+F4',13,1,'a'),(46,'CTL+ALT+Z',13,NULL,'b'),(47,'ENTER',13,NULL,'c'),(48,'ALT+SHIFT',13,NULL,'d'),(49,'a',NULL,NULL,NULL),(50,'a',NULL,NULL,NULL),(51,'a',NULL,NULL,NULL),(52,'a',NULL,NULL,NULL);
/*!40000 ALTER TABLE `resp_informatica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resp_musica`
--

DROP TABLE IF EXISTS `resp_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resp_musica` (
  `idtable2` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) DEFAULT NULL,
  `idmusica` int(11) DEFAULT NULL,
  `musica_correcta` int(1) DEFAULT NULL,
  `abcd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtable2`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resp_musica`
--

LOCK TABLES `resp_musica` WRITE;
/*!40000 ALTER TABLE `resp_musica` DISABLE KEYS */;
INSERT INTO `resp_musica` VALUES (1,'Una cancion de Elvis Presley',1,1,'a'),(2,'Una cancion de Chuck Berry',1,1,'b'),(3,'Una cancion de Little Richard',1,NULL,'c'),(4,'Una cancion de Bill Haley',1,NULL,'d'),(5,'La flauta magica',2,NULL,'a'),(6,'Madama Butterfly',2,1,'b'),(7,'Las bodas de Figaro',2,NULL,'c'),(8,'La falsa jardinera',2,NULL,'d'),(9,'Kurt Cobain',3,1,'a'),(10,'Jim Morrison',3,NULL,'b'),(11,'John Lennon',3,NULL,'c'),(12,'Freddie Mercury',3,NULL,'d'),(13,'Finales de los 50/principios de los 60',4,NULL,'a'),(14,'Finales de los 60/principios de los 70',4,NULL,'b'),(15,'Finales de los 70/principios de los 80',4,1,'c'),(16,'Finales de los 80/principios de los 90',4,NULL,'d'),(17,'Verdadero',5,1,'a'),(18,'Falso',5,NULL,'b'),(19,'David Bustamante',6,NULL,'a'),(20,'Pedro Almodovar',6,NULL,'b'),(21,'Bunbury',6,1,'c'),(22,'Nacht',6,NULL,'d'),(23,'Raphael',7,NULL,'a'),(24,'Rosalia',7,1,'b'),(25,'Julio Iglesias',7,NULL,'c'),(26,'Los del Rio',7,NULL,'d'),(27,'Maldita marea',8,NULL,'a'),(28,'El canto del loco',8,1,'b'),(29,'El sueño de Morfeo',8,NULL,'c'),(30,'David Bisbal',8,NULL,'d'),(31,'Blanco y negro',9,1,'a'),(32,'Negro y rosa',9,NULL,'b'),(33,'Azul y blanco',9,NULL,'c'),(34,'Verde y Gris',9,NULL,'d'),(35,'Dinamarca',10,NULL,'a'),(36,'Noruega',10,NULL,'b'),(37,'Alemania',10,NULL,'c'),(38,'Suecia',10,NULL,'d'),(39,'Bernart de Ventadorn',11,NULL,'a'),(40,'Guillermo IX de Aquitania',11,NULL,'b'),(41,'Chrétien de Troyes',11,NULL,'c'),(42,'Martín de Codax',11,NULL,'d'),(43,'Johnny Cash',12,NULL,'a'),(44,'The Teenagers',12,NULL,'b'),(45,'The Platters',12,NULL,'c'),(46,'The Everly Brothers',12,NULL,'d'),(47,'Christopher Lee',13,NULL,'a'),(48,'Vincent Price',13,NULL,'b'),(49,'Mickey Rooney',13,NULL,'c'),(50,'Boris Karloff',13,NULL,'d');
/*!40000 ALTER TABLE `resp_musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resp_natacion`
--

DROP TABLE IF EXISTS `resp_natacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resp_natacion` (
  `idresp_natacion` int(11) NOT NULL AUTO_INCREMENT,
  `respuestas` varchar(200) DEFAULT NULL,
  `id_respuestas` int(11) DEFAULT NULL,
  `natacion_correcta` int(1) DEFAULT NULL,
  `abcd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idresp_natacion`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resp_natacion`
--

LOCK TABLES `resp_natacion` WRITE;
/*!40000 ALTER TABLE `resp_natacion` DISABLE KEYS */;
INSERT INTO `resp_natacion` VALUES (150,'Piscina profunda, piscina poco profunda y piscina mixta.',1,NULL,'a'),(151,'Piscina baja, piscina media y piscina alta.',1,NULL,'b'),(152,'Piscina cubierta, piscina convencional y piscina olímpica',1,1,'c'),(153,'Braza, mariposa, espalda y estilo libre.',2,NULL,'a'),(154,'Braza, crol, espalda y mariposa.',2,1,'b'),(155,'Mariposa, espalda, pulmón y estilo libre.',2,NULL,'c'),(156,'60 grados',3,NULL,'a'),(157,'90 grados',3,NULL,'b'),(158,'45 grados',3,1,'c'),(159,'Mantén el nivel de los hombros en un plano horizontal',4,NULL,'a'),(160,'Coordina tu brazada de modo que inspires antes de que hagas la patada.',4,NULL,'b'),(161,'A y B son correctas',4,1,'c'),(162,'Posición de preparados, tirón, impulso, vuelo, entrada, deslizamiento, propulsión y salida.',5,1,'a'),(163,'Posición de salida, tirón, impulso, vuelo, entrada, deslizamiento, penetracion y salida.',5,NULL,'b'),(164,'A y B son correctas',5,NULL,'c'),(165,'Hacia fuera, dentro y arriba',6,1,'a'),(166,'Hacia dentro, fuera y arriba',6,NULL,'b'),(167,'Hacia dentro, fuera y dentro',6,NULL,'c'),(168,'Es una disciplina que combina acción, arte, natación y yoga',7,NULL,'a'),(169,'Es una disciplina que combina natación, gimnasia y danza',7,NULL,'b'),(170,'Es un ejercicio que consiste en nadar',7,NULL,'c'),(171,'Falso',8,NULL,'a'),(172,'Verdadero',8,1,'b'),(173,'Mejora el humor, disminución de peso y aumento de estrés',9,NULL,'a'),(174,'Disminución de peso, aumento de autoestima y disminución de la vitalidad',9,NULL,'b'),(175,'Favorece la autoestima, disminución de peso y mejorar de humor',9,1,'c'),(176,'michael phelps',10,1,'a'),(177,'mireia belmonte',10,NULL,'b'),(178,'michael james',10,NULL,'c'),(179,'carlos pereiro',10,NULL,'d'),(180,'1000m',11,NULL,'a'),(181,'1500m',11,1,'b'),(182,'2000m',11,NULL,'c'),(183,'750m',11,NULL,'d'),(184,'verdadero',12,NULL,'a'),(185,'falso',12,1,'b'),(186,'verdadero',13,NULL,'c'),(187,'falso',13,1,'d');
/*!40000 ALTER TABLE `resp_natacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resp_turismo`
--

DROP TABLE IF EXISTS `resp_turismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resp_turismo` (
  `idresp_turismo` int(11) NOT NULL AUTO_INCREMENT,
  `respuestas` varchar(200) DEFAULT NULL,
  `id_respuestas` int(11) DEFAULT NULL,
  `turismo_correcta` int(1) DEFAULT NULL,
  `apartado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idresp_turismo`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resp_turismo`
--

LOCK TABLES `resp_turismo` WRITE;
/*!40000 ALTER TABLE `resp_turismo` DISABLE KEYS */;
INSERT INTO `resp_turismo` VALUES (1,'Categoría básica y viviendas turísticas de alojamiento rural',1,NULL,'a'),(2,'Categoría primera y categoría segunda',1,NULL,'b'),(3,'Categoría básica y categoría superior',1,1,'c'),(4,'Una estrella y dos estrellas',1,NULL,'d'),(5,'Se llama capacidad de carga al uso mínimo que puede hacerse de un lugar sin causar deterioro en el mismo',2,NULL,'a'),(6,'Se llama capacidad de carga al uso máximo que puede hacerse de un lugar sin causar deterioro en el mismo ',2,1,'b'),(7,'Se llama capacidad de carga a la capacidad mínima de acogida que presentan determinadas ciudades monumentales',2,NULL,'c'),(8,'Se llama capacidad de carga a la cuantificación de la intensidad de uso de determinados bienes históricos en temporada alta',2,NULL,'d'),(9,'Son viajes que responden al concepto de desplazamiento por ocio',3,NULL,'a'),(10,'El cliente de empresa suele ser, generalmente, un viajero nada exigente en cuanto a la calidad de los servicios que contrata',3,NULL,'b'),(11,'Es un cliente con un gasto medio inferior al del turista vacacional',3,NULL,'c'),(12,'Dentro del turismo de negocios hay que distinguir entre los viajes individuales y el mercado de reuniones',3,1,'d'),(13,'Globo aerostático, hidropedales y paintball',4,NULL,'a'),(14,'Heliexcursión, travesía y mushing',4,1,'b'),(15,'Hidrotrineo, skatecar y senderismo',4,NULL,'c'),(16,'Etnología, vuelo libre y salto elástico',4,NULL,'d'),(17,'Previo acuerdo de la Comisión Permanente del Ayuntamiento, adoptado por mayoría absoluta de sus miembros',5,NULL,'a'),(18,'Previo acuerdo plenario del Ayuntamiento adoptado por mayoría simple',5,NULL,'b'),(19,'Previo acuerdo plenario del Ayuntamiento adoptado por mayoría de dos tercios del número de miembros de la Coporación',5,NULL,'c'),(20,'Previo acuerdo plenario del Ayuntamiento adoptado por mayoría absoluta del número legal de miembros de la Corporación',5,1,'d'),(21,'Permite conocer la importancia de los diferentes segmentos del mercado pero no las posibilidades de la empresa en cada uno de los mismos',6,NULL,'a'),(22,'Permite asignar adecuadamente los diferentes presupuestos de publicidad, promoción de ventas, etc., de acuerdo con la importancia de cada segmento o los objetivos de la empresa en cada uno de ellos',6,1,'b'),(23,'Proporciona un conocimiento menos exacto de las características del consumidor, por lo que se puede crear un producto adecuado a sus necesidades',6,NULL,'c'),(24,'Permite crear una política de comunicación general para todos los segmentos, gracias al conocimiento de las características de éstos',6,NULL,'d'),(25,'Hoteles, Hostales, Pensiones y Casas Rurales',7,NULL,'a'),(26,'Hoteles, Hoteles-Apartamentos y Hostales',7,NULL,'b'),(27,'Hoteles, Pensiones y Balnearios',7,NULL,'c'),(28,'Hoteles, Hostales, Hoteles-Apartamentos y Pensiones',7,1,'d'),(29,'Comedores universitarios',8,NULL,'a'),(30,'Cafeterías',8,1,'b'),(31,'Comedores escolares',8,NULL,'c'),(32,'Comedores de empresa',8,NULL,'d'),(33,'Publicidad, telemarketing, buzoneo y encartes',9,NULL,'a'),(34,'Relaciones públicas, merchandising, promociones de ventas y encartes',9,NULL,'b'),(35,'Promociones de ventas, relaciones públicas, publicidad y acciones concretas de la fuerza de ventas',9,1,'c'),(36,'Publicidad, respuesta directa, encartes y buzoneos',9,NULL,'d'),(37,'Que concurran las condiciones para permitir la ejecución de una política turística común',10,NULL,'a'),(38,'Que disponga de recursos turísticos básicos suficientes',10,NULL,'b'),(39,'Que no exista otro uso incompatible con el turismo cuyo interés público sea preferente',10,NULL,'c'),(40,'Todas las respuestas anteriores son correctas',10,1,'d'),(41,'Aragón y Extremadura.',11,1,'a'),(42,'Cataluña y la Región de Murcia.',11,NULL,'b'),(43,'Galicia y Andalucía.',11,NULL,'c'),(44,'Comunidad Valenciana y Madrid.',11,NULL,'d'),(45,'De Sudamérica.',12,NULL,'a'),(46,'De la Unión Europea.',12,1,'b'),(47,'De Asia.',12,NULL,'c'),(48,'Del norte de África.',12,NULL,'d'),(49,'El turismo deportivo.',13,NULL,'a'),(50,'El enoturismo.',13,NULL,'b'),(51,'El turismo artístico-cultural.',13,NULL,'c'),(52,'El turismo de sol y playa.',13,1,'d'),(53,'...proporcionan los servicios.',14,NULL,'a'),(54,'...venden el producto.',14,1,'b'),(55,'...proporcionan los servicios y venden el producto.',14,NULL,'c'),(56,'Ninguna de las anteriores.',14,NULL,'d');
/*!40000 ALTER TABLE `resp_turismo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turismo`
--

DROP TABLE IF EXISTS `turismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turismo` (
  `idexamen1` int(11) NOT NULL AUTO_INCREMENT,
  `preguntas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idexamen1`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turismo`
--

LOCK TABLES `turismo` WRITE;
/*!40000 ALTER TABLE `turismo` DISABLE KEYS */;
INSERT INTO `turismo` VALUES (1,'Las casas rurales se clasifican en'),(2,'El desarrollo sostenible del turismo va indisolublemente unido al concepto de capacidad de carga. Sobre esta podemos afirmar que'),(3,' Actualmente los viajes profesionales tienen una gran importancia para proveedores e intermediarios turísticos. Algunas de sus caracteristicas son'),(4,'Se consideran actividades de turismo activo'),(5,' La solicitud para iniciar el procedimiento de declaración de un municipio turístico deberá ser formulada por el alcalde'),(6,' Entre las principales ventajas que la segmentación de mercados proporciona a las empresas turísticas están las siguientes'),(7,'¿En qué grupos se clasifican los establecimientos hoteleros?'),(8,'¿Cuál de los siguientes establecimientos está considerado como de restauración turística?'),(9,'La comunicación de empresas turísticas con el exterior se realiza principalmente a través de cuatro actividades interrelacionadas entre si'),(10,'Para que un área territorial pueda ser declarada de preferente actuación turística se requiere'),(11,'¿Cuales de estas comunidades autónomas son de las menos turísticas?'),(12,'¿De donde proceden principalmente los turistas que visitan España?'),(13,'Las agencias de viaje.'),(14,'¿Cuál es el tipo de turismo más importante en España?'),(16,'a');
/*!40000 ALTER TABLE `turismo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08  1:10:17
