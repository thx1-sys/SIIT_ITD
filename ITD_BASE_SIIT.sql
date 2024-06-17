-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ITD_BASE_SIIT
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Grupos`
--

DROP TABLE IF EXISTS `Grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Grupo` varchar(10) DEFAULT NULL,
  `Materia` varchar(50) DEFAULT NULL,
  `CodigoMateria` varchar(10) DEFAULT NULL,
  `Profesor` varchar(50) DEFAULT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Lunes` varchar(20) DEFAULT NULL,
  `Martes` varchar(20) DEFAULT NULL,
  `Miercoles` varchar(20) DEFAULT NULL,
  `Jueves` varchar(20) DEFAULT NULL,
  `Viernes` varchar(20) DEFAULT NULL,
  `Sabado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupos`
--

LOCK TABLES `Grupos` WRITE;
/*!40000 ALTER TABLE `Grupos` DISABLE KEYS */;
INSERT INTO `Grupos` VALUES
(1,'1O','CALCULO DIFERENCIAL','CO1001','MEJIA HERNANDEZ ISAAC',1,'18:00 - 19:00 I1','18:00 - 19:00 I1','18:00 - 19:00 I1','18:00 - 19:00 I1','18:00 - 19:00 I1',''),
(2,'1QY','CALCULO DIFERENCIAL','CO1001','TORRES VALLES MARIA DE LA LUZ',1,'07:00 - 08:00 PRUEBA','07:00 - 08:00 PRUEBA','07:00 - 08:00 PRUEBA','07:00 - 08:00 PRUEBA','07:00 - 08:00 PRUEBA',''),
(3,'1U','TALLER DE ETICA','CO1006','FLORES ESQUIVEL JOSE LUIS MARCELINO',1,'10:00 - 11:00 MM3','10:00 - 11:00 MM3','10:00 - 11:00 MM3','10:00 - 11:00 MM3','',''),
(4,'1V','TALLER DE ETICA','CO1006','VELAZQUEZ LUNA VIANEY',1,'17:00 - 18:00 UTD7','17:00 - 18:00 UTD7','17:00 - 18:00 UTD7','17:00 - 18:00 UTD7','',''),
(5,'1Y','TALLER DE ADMINISTRACION','SI1802','REYES OJEDA TOMAS',1,'07:00 - 08:00 SC6','07:00 - 08:00 SC6','07:00 - 08:00 SC6','07:00 - 08:00 SC6','',''),
(6,'1Y','CALCULO DIFERENCIAL','CO1001','VILLARREAL MARTINEZ MANUEL',1,'11:00 - 12:00 SC6','11:00 - 12:00 SC6','11:00 - 12:00 SC6','11:00 - 12:00 SC6','11:00 - 12:00 SC6',''),
(7,'1Y','TALLER DE ETICA','CO1006','ARRIETA CABRALES KARLA VIANEY',1,'09:00 - 10:00 SC6','09:00 - 10:00 SC6','09:00 - 10:00 SC6','09:00 - 10:00 SC6','',''),
(8,'1Y','FUNDAMENTOS DE INVESTIGACION','SI1850','ZAMORA LERMA MARIA DEL RAYO',1,'12:00 - 13:00 SC6','12:00 - 13:00 SC6','12:00 - 13:00 SC6','12:00 - 13:00 SC6','',''),
(9,'1Y','MATEMATICAS DISCRETAS','SI1801','RIVERA SAUCEDO ELDA',1,'10:00 - 11:00 SC6','10:00 - 11:00 SC6','10:00 - 11:00 SC6','10:00 - 11:00 SC6','10:00 - 11:00 SC6',''),
(10,'1Y1','TUTORIA','SCC0000','CALZADA TERRONES JEORGINA',1,'','','','','09:00 - 10:00 SC6',''),
(11,'1Y2','TUTORIA','SCC0000','LUGO MORALES GABRIEL ARTURO',1,'','','','','12:00 - 13:00 SC6',''),
(12,'1Y3','TUTORIA','SCC0000','HERNANDEZ CARRILLO IRMA SELENE',1,'','','','','11:00 - 12:00 SC8',''),
(13,'1YA','FUNDAMENTOS DE PROGRAMACION','SI1800','CALZADA TERRONES JEORGINA',1,'08:00 - 09:00 SC6','08:00 - 09:00 SC6','08:00 - 09:00 LC3','08:00 - 09:00 LC3','08:00 - 09:00 LC3',''),
(14,'1YB','CALCULO DIFERENCIAL','CO1001','SELEME OCAMPO JAIME ANUAR',1,'11:00 - 12:00 SC16','11:00 - 12:00 SC16','11:00 - 12:00 SC16','11:00 - 12:00 SC16','11:00 - 12:00 SC16',''),
(15,'1YB','FUNDAMENTOS DE PROGRAMACION','SI1800','GALLEGOS DE LA HOYA ERASMO',1,'08:00 - 09:00 LC3','08:00 - 09:00 LC3','08:00 - 09:00 SC6','08:00 - 09:00 SC6','08:00 - 09:00 SC6',''),
(16,'2AY','CALCULO INTEGRAL','ACF0902','FLORES CABRAL HECTOR',2,'09:00 - 10:00 T6','09:00 - 10:00 T6','09:00 - 10:00 T6','09:00 - 10:00 T6','09:00 - 10:00 T6',''),
(17,'2Y','CALCULO INTEGRAL','ACF0902','FAVILA HERRERA LEONEL HUGO',2,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(18,'2Y','ALGEBRA LINEAL','ACF0903','CORIA QUIÑONES ELVA MARCELA',2,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7',''),
(19,'2Y','CONTABILIDAD FINANCIERA','AEC1008','VALDERRAMA VELAZQUEZ EDITH',2,'12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','',''),
(20,'2Y','QUIMICA','AEC1058','MORALES LAVEAGA CONCEPCION MARGARITA',2,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC2','08:00 - 09:00 SC2','',''),
(21,'2Y','PROBABILIDAD Y ESTADISTICA','AEF1052','PIZARRO GURROLA RUBEN',2,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(22,'2Y1','TUTORIA II','SCC0001','GONZALEZ BAÑALES DORA LUZ',2,'','','','','08:00 - 09:00 SC7',''),
(23,'2Y2','TUTORIA II','SCC0001','VALDEZ HERNANDEZ SERGIO',2,'','','','','08:00 - 09:00 SC2',''),
(24,'2Y3','TUTORIA II','SCC0001','CORIA QUIÑONES ELVA MARCELA',2,'','','','','13:00 - 14:00 SC7',''),
(25,'2YA','FUNDAMENTOS DE BASES DE DATOS','AEF1050','PIZARRO GURROLA RUBEN',2,'07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7',''),
(26,'2YB','QUIMICA','AEC1058','MORALES LAVEAGA CONCEPCION MARGARITA',2,'08:00 - 09:00 SC16','08:00 - 09:00 SC16','08:00 - 09:00 SC2','08:00 - 09:00 SC2','',''),
(27,'3Y','DESARROLLO SUSTENTABLE','AEF2005','JARAMILLO LOPEZ REYNA IVETTE',3,'12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','',''),
(28,'3Y','INVESTIGACION DE OPERACIONES','AEF2044','HERRERA SANDOVAL ANA ISABEL',3,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','',''),
(29,'3Y','ESTRUCTURA DE DATOS','AEF2050','SALAZAR BRITO ALEJANDRO',3,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(30,'3Y','ELECTRONICA','AEF2046','TOVAR RAMOS JOSE BENJAMIN',3,'07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC2','07:00 - 08:00 SC2','',''),
(31,'3Y','INGENIERIA DE SOFTWARE','AEF2047','MARTINEZ CARRASCO MARIA DEL PILAR',3,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7',''),
(32,'3Y1','TUTORIA III','SCC0002','MONTANEZ SALAZAR PABLO',3,'','','','','08:00 - 09:00 SC7',''),
(33,'3Y2','TUTORIA III','SCC0002','HERRERA SANDOVAL ANA ISABEL',3,'','','','','10:00 - 11:00 SC7',''),
(34,'3Y3','TUTORIA III','SCC0002','SALAZAR BRITO ALEJANDRO',3,'','','','','12:00 - 13:00 SC7',''),
(35,'4Y','PROGRAMACION AVANZADA','AEF3048','CORIA QUIÑONES ELVA MARCELA',4,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7',''),
(36,'4Y','SISTEMAS OPERATIVOS','AEF3050','HERRERA SANDOVAL ANA ISABEL',4,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(37,'4Y','ARQUITECTURA DE COMPUTADORAS','AEF3047','GARCIA DOMINGUEZ RAUL',4,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(38,'4Y','LENGUAJES Y AUTOMATAS','AEF3051','ZAMORA LERMA MARIA DEL RAYO',4,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7',''),
(39,'4Y','DESARROLLO DE EMPRENDEDORES','AEF3005','TORRES VALLES MARIA DE LA LUZ',4,'12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','',''),
(40,'4Y1','TUTORIA IV','SCC0003','VALDEZ HERNANDEZ SERGIO',4,'','','','','08:00 - 09:00 SC7',''),
(41,'4Y2','TUTORIA IV','SCC0003','ZAMORA LERMA MARIA DEL RAYO',4,'','','','','12:00 - 13:00 SC7',''),
(42,'5Y','ADMINISTRACION DE BASES DE DATOS','AEF4050','GARCIA DOMINGUEZ RAUL',5,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(43,'5Y','INGENIERIA DE SOFTWARE II','AEF4051','MARTINEZ CARRASCO MARIA DEL PILAR',5,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(44,'5Y','ADMINISTRACION DE PROYECTOS','AEF4049','TORRES VALLES MARIA DE LA LUZ',5,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','',''),
(45,'5Y','TEORIA DE LA COMPUTACION','AEF4052','SALAZAR BRITO ALEJANDRO',5,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7',''),
(46,'5Y','DESARROLLO DE SISTEMAS INTELIGENTES','AEF4053','GARCIA DOMINGUEZ RAUL',5,'12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','12:00 - 13:00 SC7','',''),
(47,'5Y1','TUTORIA V','SCC0004','SALAZAR BRITO ALEJANDRO',5,'','','','','08:00 - 09:00 SC7',''),
(48,'5Y2','TUTORIA V','SCC0004','TORRES VALLES MARIA DE LA LUZ',5,'','','','','12:00 - 13:00 SC7',''),
(49,'6Y','DESARROLLO DE SISTEMAS EMPRESARIALES','AEF5054','HERRERA SANDOVAL ANA ISABEL',6,'07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7','07:00 - 08:00 SC7',''),
(50,'6Y','INTELIGENCIA ARTIFICIAL','AEF5056','ZAMORA LERMA MARIA DEL RAYO',6,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(51,'6Y','DESARROLLO DE APLICACIONES WEB','AEF5055','SALAZAR BRITO ALEJANDRO',6,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7',''),
(52,'6Y','GESTION DE PROYECTOS DE TI','AEF5053','TORRES VALLES MARIA DE LA LUZ',6,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(53,'6Y1','TUTORIA VI','SCC0005','ZAMORA LERMA MARIA DEL RAYO',6,'','','','','09:00 - 10:00 SC7',''),
(54,'6Y2','TUTORIA VI','SCC0005','TORRES VALLES MARIA DE LA LUZ',6,'','','','','10:00 - 11:00 SC7',''),
(55,'7Y','SEGURIDAD INFORMATICA','AEF6058','PIZARRO GURROLA RUBEN',7,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7',''),
(56,'7Y','MINERIA DE DATOS','AEF6057','MARTINEZ CARRASCO MARIA DEL PILAR',7,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(57,'7Y','ARQUITECTURA DE SOFTWARE','AEF6056','GARCIA DOMINGUEZ RAUL',7,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(58,'7Y','DIRECCION DE PROYECTOS DE TI','AEF6059','ZAMORA LERMA MARIA DEL RAYO',7,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7',''),
(59,'7Y1','TUTORIA VII','SCC0006','MARTINEZ CARRASCO MARIA DEL PILAR',7,'','','','','09:00 - 10:00 SC7',''),
(60,'7Y2','TUTORIA VII','SCC0006','GARCIA DOMINGUEZ RAUL',7,'','','','','10:00 - 11:00 SC7',''),
(61,'8Y','ADMINISTRACION DE SERVICIOS EN RED','AEF7060','TORRES VALLES MARIA DE LA LUZ',8,'08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7','08:00 - 09:00 SC7',''),
(62,'8Y','ANALISIS Y DISEÑO DE SISTEMAS','AEF7061','SALAZAR BRITO ALEJANDRO',8,'09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7','09:00 - 10:00 SC7',''),
(63,'8Y','ARQUITECTURA ORIENTADA A SERVICIOS','AEF7062','PIZARRO GURROLA RUBEN',8,'10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7','10:00 - 11:00 SC7',''),
(64,'8Y','DESARROLLO DE APLICACIONES MOVILES','AEF7063','HERRERA SANDOVAL ANA ISABEL',8,'11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7','11:00 - 12:00 SC7',''),
(65,'8Y1','TUTORIA VIII','SCC0007','HERRERA SANDOVAL ANA ISABEL',8,'','','','','11:00 - 12:00 SC7',''),
(66,'8Y2','TUTORIA VIII','SCC0007','PIZARRO GURROLA RUBEN',8,'','','','','10:00 - 11:00 SC7','');
/*!40000 ALTER TABLE `Grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anuncios`
--

DROP TABLE IF EXISTS `anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anuncios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncios`
--

LOCK TABLES `anuncios` WRITE;
/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
INSERT INTO `anuncios` VALUES
(1,'ATENCIÓN: El horario de reinscripción será publicado después de las 11pm ','El horario de reinscripción será publicado después de las 11 pm (hora en la que el banco proporciona la información de los pagos registrados). 1'),
(2,'roceso de Preinscripción ENERO-JUNIO/2024','A todos los alumnos que vayan a cursar segundo semestre, favor de cargar tutorías (son créditos complementarios). Es de carácter obligatorio.'),
(3,'Recomendaciones para Inscripciones en el Periodo Actual','Incluye verificación de grupos y horarios, promedio anterior, estado de encuesta y cómo resolver bloqueos en Servicios Escolares.');
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER limit_rows_trigger
BEFORE INSERT ON anuncios
FOR EACH ROW
BEGIN
    DECLARE row_count INT;
    SELECT COUNT(*) INTO row_count FROM anuncios;
    IF row_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Exceeded row limit of 3';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `permisos` int(10) DEFAULT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES
(1,1,'institutotecnologicodurangoema@gmail.com','password',3,''),
(3,3,'20041239@itdurango.edu.mx','password',3,''),
(6,6,'20041249@itdurango.edu.mx','password',1,'');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avisos`
--

DROP TABLE IF EXISTS `avisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avisos`
--

LOCK TABLES `avisos` WRITE;
/*!40000 ALTER TABLE `avisos` DISABLE KEYS */;
INSERT INTO `avisos` VALUES
(1,'https://itdurango.edu.mx/slider/banner_video75aniv.png','Banner Video 75 Aniversario','Descripción del banner del 75 aniversario.',1),
(2,'https://itdurango.edu.mx/slider/nuevomodelo.jpg','Nuevo Modelo','Descripción del nuevo modelo.',1),
(3,'https://itdurango.edu.mx/slider/sgi2024b.png','SGI 2024','Descripción del SGI 2024.',1),
(4,'https://itdurango.edu.mx/slider/der_hum.jpg','Derechos Humanos','Descripción sobre derechos humanos.',1),
(6,'https://itdurango.edu.mx/img/violentometro.png','Violentómetro','Descripción del violentómetro.',1),
(7,'https://itdurango.edu.mx/slider/brigadistasb.png','Brigadistas','Descripción sobre brigadistas.',1),
(8,'https://itdurango.edu.mx/slider/banner_libreplastico.png','Libre de Plástico','Descripción sobre libre de plástico.',1);
/*!40000 ALTER TABLE `avisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario_escolar`
--

DROP TABLE IF EXISTS `calendario_escolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendario_escolar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `actividad` varchar(255) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario_escolar`
--

LOCK TABLES `calendario_escolar` WRITE;
/*!40000 ALTER TABLE `calendario_escolar` DISABLE KEYS */;
INSERT INTO `calendario_escolar` VALUES
(2,2,'12233Entrega del producto no conforme (PNC) del SGI','2024-08-15',NULL),
(3,3,'Última de captura de calificaciones','2024-01-08',NULL),
(6,6,'Cursos de actualización docente y/o profesional','2024-01-15','2024-01-26'),
(7,7,'Solicitud de impresión de boletas de calificaciones','2024-01-18',NULL),
(8,8,'Última captura de calificaciones de Residencias Profesionales','2024-01-19',NULL),
(9,9,'Examen de nuevo ingreso','2024-01-19',NULL),
(10,10,'Reunión de inducción para alumnos de nuevo ingreso','2024-01-22',NULL),
(11,11,'Entrega de Instrumentación didáctica y programación de prácticas','2024-01-22',NULL),
(12,12,'Salida no conforme de término de Residencias Profesionales','2024-01-23',NULL),
(13,13,'Inicio servicio social enero - junio 2024','2024-01-29','2024-02-01'),
(14,14,'Reinscripciones','2024-01-29','2024-02-02'),
(16,16,'Suspensión oficial de labores','2024-02-05',NULL),
(17,17,'Inicio de semestre','2024-02-05',NULL),
(18,18,'Reinscripción curso especial','2024-02-06',NULL),
(19,19,'Periodo de titulación Profesional','2024-02-06','2024-06-07'),
(20,20,'Periodo de altas y bajas de materias','2024-02-07','2024-02-20'),
(21,21,'Salida no conforme de inicio de curso (Instrumentación didáctica)','2024-02-09',NULL),
(22,22,'Periodo de solicitud de visitas a empresas presenciales','2024-02-09','2024-04-12'),
(23,23,'Periodo de solicitud de visitas a empresas virtuales','2024-02-09','2024-05-17'),
(24,24,'Inscripción al examen de lengua extranjera','2024-02-12','2024-02-15'),
(25,25,'Aplicación del examen de lengua extranjera','2024-02-12','2024-02-15'),
(26,26,'Periodo de inducción a actividades extracurriculares','2024-02-12','2024-02-15'),
(27,27,'Periodo de visitas a empresas presencial','2024-02-19','2024-05-31'),
(28,28,'Periodo de visitas a empresas virtuales','2024-02-19','2024-05-31'),
(29,29,'Límite para solicitar baja temporal del semestre','2024-02-26',NULL),
(30,30,'ExpoTec','2024-02-28',NULL),
(31,31,'Inicio recepción de solicitudes de admisión para estudios de Posgrado','2024-02-26','2024-03-21'),
(32,32,'Inicio de registro en línea para examen de admisión (Licenciatura)','2024-02-26','2024-05-24'),
(33,33,'Límite de inscripción a Residencia Profesional','2024-03-01',NULL),
(34,34,'Ceremonia de graduación','2024-03-01',NULL),
(35,35,'Inscripción al examen de lengua extranjera','2024-03-04','2024-03-07'),
(36,36,'Primer seguimiento del curso','2024-03-04','2024-03-15'),
(37,37,'Aplicación del examen de lengua extranjera','2024-03-11','2024-03-14'),
(38,38,'Semana Académica Cultural y Deportiva de Ing. Industrial','2024-03-11','2024-03-15'),
(39,39,'Salida no conforme de reinscripción','2024-03-15',NULL),
(40,40,'Publicación de convocatoria servicio social agosto - diciembre 2024','2024-03-18',NULL),
(41,41,'Inscripción al examen de lengua extranjera','2024-03-18','2024-03-21'),
(42,42,'Primer seguimiento de Residencia Profesional','2024-03-19',NULL),
(43,43,'Aplicación del examen de lengua extranjera','2024-03-25','2024-03-28'),
(44,44,'Vacaciones de primavera','2024-03-25','2024-04-05'),
(45,46,'Regreso de vacaciones de primavera','2024-04-08',NULL),
(46,47,'Congreso Administración y Gestión Empresarial','2024-04-15','2024-04-19'),
(47,48,'Inscripción al examen de lengua extranjera','2024-04-22','2024-04-25'),
(48,49,'Congreso de Ciencias Básicas','2024-04-22','2024-04-25'),
(49,50,'Segundo seguimiento del curso','2024-04-22','2024-05-03'),
(50,51,'Registro para examen de admisión del Posgrado','2024-04-22','2024-05-17'),
(51,52,'Aplicación del examen de lengua extranjera','2024-04-29','2024-04-29'),
(52,53,'Semana académica Ingeniería Civil','2024-04-29','2024-05-03'),
(61,62,'Aplicación del examen de lengua extranjera','2024-05-27','2024-05-31'),
(62,63,'Auditoría del Sistema de Gestión Integrado','2024-05-27','2024-05-29'),
(63,64,'Inscripción de estudiantes a servicio social agosto - diciembre 2024','2024-05-27','2024-05-28'),
(65,66,'Fin de semestre','2024-06-12',NULL),
(67,68,'Exámenes de segunda oportunidad','2024-06-13','2024-06-14'),
(69,70,'Primer Coloquio de la Maestría en Ing. Administrativa','2024-06-13','2024-06-14'),
(70,71,'Aplicación de examen de admisión (Licenciatura)','2024-06-15','2024-06-15'),
(71,72,'Cursos de actualización docente','2024-06-17','2024-06-21'),
(72,73,'Última de captura de calificaciones','2024-06-19',NULL),
(73,74,'Solicitud de impresión de boletas de calificaciones','2024-06-21',NULL),
(74,75,'Inicio de cursos de verano','2024-06-24','2024-08-23'),
(75,76,'Inicio de vacaciones','2024-07-01',NULL),
(76,77,'Inicio de cursos de verano','2024-07-01',NULL),
(77,78,'Periodo de altas y bajas cursos de verano','2024-07-01','2024-07-03'),
(78,79,'Periodo curso propedéutico para aspirantes aceptados nuevo ingreso','2024-07-08','2024-07-12'),
(79,80,'Regreso de vacaciones','2024-07-29',NULL),
(80,81,'Inicio de servicio social agosto - diciembre 2024','2024-07-29',NULL),
(81,82,'Inscripción al examen de lengua extranjera','2024-07-29','2024-08-02'),
(82,83,'76 Aniversario del I.T.D.','2024-08-02',NULL),
(83,84,'Aplicación de examen de lengua extranjera','2024-08-05','2024-08-09'),
(84,85,'Fin de cursos de verano','2024-08-09',NULL),
(85,86,'Última captura de calificaciones de cursos de verano','2024-08-09',NULL),
(86,87,'Entrega de reporte final de Residencia Profesional','2024-08-05','2024-08-09'),
(87,88,'Solicitud de impresión de boletas de calificaciones cursos de verano','2024-08-12',NULL),
(88,89,'Última de captura de calificaciones de Residencia Profesional','2024-08-12',NULL),
(89,90,'Inicio de semestre','2024-08-12',NULL),
(90,91,'Inscripciones de nuevo ingreso','2024-08-13','2024-08-16'),
(91,92,'Registro de reinscripción en línea','2024-08-13','2024-08-20'),
(92,93,'Inscripción al examen de lengua extranjera','2024-08-19','2024-08-23'),
(93,94,'Aplicación de examen de lengua extranjera','2024-08-19','2024-08-23'),
(94,2,'Entrega del producto no conforme (PNC) del SGI',NULL,NULL),
(95,2,'Entrega del producto no conforme (PNC) del SGI','2024-01-08',NULL),
(96,2,'Entrega del producto no conforme (PNC) del SGI','2024-06-14',NULL),
(97,2,'Entrega del producto no conforme (PNC) del SGI','2023-06-14',NULL);
/*!40000 ALTER TABLE `calendario_escolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_alumno`
--

DROP TABLE IF EXISTS `datos_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `datos_estudiante` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`datos_estudiante`)),
  `horario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`horario`)),
  `calificaciones` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`calificaciones`)),
  `notas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`notas`)),
  `carga` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`carga`)),
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `datos_alumno_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_alumno`
--

LOCK TABLES `datos_alumno` WRITE;
/*!40000 ALTER TABLE `datos_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semestre` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_de_carrera` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES
(1,1,'CO1001','CALCULO DIFERENCIAL',1),
(2,1,'SI1800','FUNDAMENTOS DE PROGRAMACION',1),
(3,1,'CO1006','TALLER DE ETICA',1),
(4,1,'SI1801','MATEMATICAS DISCRETAS',1),
(5,1,'SI1802','TALLER DE ADMINISTRACION',1),
(6,1,'SI1850','FUNDAMENTOS DE INVESTIGACION',1),
(7,1,'SCC0000','TUTORIA I',1),
(8,2,'AFCF902','CALCULO INTEGRAL',1),
(9,2,'AEID126','PROGRAMACION ORIENTADA A OBJETOS',1),
(10,2,'AEC1008','CONTABILIDAD FINANCIERA',1),
(11,2,'AEC1058','QUIMICA',1),
(12,2,'AFCP003','ALGEBRA LINEAL',1),
(13,2,'AEF1052','PROBABILIDAD Y ESTADISTICA',1),
(14,2,'SCC0001','TUTORIA II',1),
(15,3,'CO1004','CALCULO VECTORIAL',1),
(16,3,'IF1900','ESTRUCTURA DE DATOS',1),
(17,3,'SI1808','CULTURA EMPRESARIAL',1),
(18,3,'SCC1013','INVESTIGACION DE OPERACIONES',1),
(19,3,'IT1833','DESARROLLO SUSTENTABLE',1),
(20,3,'SI1810','FISICA GENERAL',1),
(21,4,'AFCF905','ECUACIONES DIFERENCIALES',1),
(22,4,'SCD1027','TOPICOS AVANZADOS DE PROGRAMACION',1),
(23,4,'AEF1031','FUNDAMENTOS DE BASES DE DATOS',1),
(24,4,'SCA1025','TALLER DE BASE DE DATOS',1),
(25,4,'SCD1003','ARQUITECTURA DE COMPUTADORAS',1),
(26,5,'SCC1010','GRAFICACION',1),
(27,5,'AEC1034','FUNDAMENTOS DE TELECOMUNICACION',1),
(28,5,'AEC1061','SISTEMAS OPERATIVOS I',1),
(29,5,'SCD1010','SIMULACION',1),
(30,5,'SCC1007','FUNDAMENTOS DE INGENIERIA DE SOFTWARE',1),
(31,6,'SCD1015','LENGUAJES Y AUTOMATAS I',1),
(32,6,'SCD1021','REDES DE COMPUTADORAS',1),
(33,6,'SCA1026','TALLER DE SISTEMAS OPERATIVOS',1),
(34,6,'SCB1001','ADMON. DE BASE DE DATOS',1),
(35,6,'SCC1014','LENGUAJES DE INTERFAZ',1),
(36,7,'SCD1016','LENGUAJES Y AUTOMATAS II',1),
(37,7,'SCD1004','CONMUTACION Y ENRUTAMIENTO EN REDES',1),
(38,7,'ACA0099','TALLER DE INVESTIGACION I',1),
(39,7,'SCG1009','GESTION DE PROYECTOS DE SOFTWARE',1),
(40,7,'SCC1023','SISTEMAS PROGRAMABLES',1),
(41,8,'SCC1019','PROGRAMACION LOGICA Y FUNCIONAL',1),
(42,8,'SCA1002','ADMINISTRACION DE REDES',1),
(43,8,'ACA0910','TALLER DE INVESTIGACION II',1),
(44,8,'AEB1055','PROGRAMACION WEB',1),
(45,8,'SEF2201','FUNDAMENTOS DE CIBERSEGURIDAD',1),
(46,9,'SCC1012','INTELIGENCIA ARTIFICIAL',1),
(47,9,'SEF2205','SEGURIDAD EN REDES 2',1),
(48,9,'SEF2203','SEGURIDAD EN REDES 1',1),
(49,9,'SEF2204','CYBEROPS2',1),
(50,6,'ISO063','ACTIVIDADES COMPLEMENTARIAS',1),
(51,7,'SEF2202','CYBEROPS1',1),
(52,8,'ISO061','SERVICIO SOCIAL',1),
(53,9,'ISO062','RESIDENCIA PROFESIONAL',1);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `imagen_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `url` varchar(500) DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES
(1,'2SE DESARROLLA EN DURANGO LA XII SESIÓN ORDINARIA DEL CITIA de ANUIES','05 oct 2023','Se desarrolla en Durango la XII sesión ordinaria del CITIA de ANUIES.','Contenido de la noticia sobre la XII sesión ordinaria del CITIA de ANUIES en Durango.','https://64.media.tumblr.com/8181a54d6c2e5d24a7cf3955f1292d6d/86edf4237237c2b8-d0/s2048x3072/0600cf9b4dd605a50958ae4ede578bc6d180f60a.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',0),
(4,'Primer Encuentro Estatal de Cuerpos Académicos \"Investigación Educativa y Desarrollo Económico\"','05 oct 2023','Primer encuentro estatal de cuerpos académicos \"Investigación Educativa y Desarrollo Económico\".','Contenido de la noticia sobre el primer encuentro estatal de cuerpos académicos.','https://64.media.tumblr.com/1100135d5d1cc200ac2bc8d4410063e5/1b0209297c272d94-f2/s2048x3072/e3844e84acca365426b732958cd8db2bf6441ba7.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(5,'Cámara de Diputados conmemora el 75 aniversario del TecNM','05 oct 2023','La Cámara de Diputados conmemora el 75 aniversario del TecNM.','Contenido de la noticia sobre la conmemoración del 75 aniversario del TecNM por la Cámara de Diputados.','https://64.media.tumblr.com/8181a54d6c2e5d24a7cf3955f1292d6d/86edf4237237c2b8-d0/s2048x3072/0600cf9b4dd605a50958ae4ede578bc6d180f60a.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(6,'ITD realiza actualización del Comité de Innovación Integrado para el SGI','09 ago 2023','El ITD realiza la actualización del Comité de Innovación Integrado para el SGI.','Contenido de la noticia sobre la actualización del Comité de Innovación Integrado para el SGI en el ITD.','https://64.media.tumblr.com/b59b7c4936c1d69616d97d98fbc80206/489326a5e6ca9e35-4e/s1280x1920/78614a420a88dd3c0843f3eb54dfd5f3bdf09a4f.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(7,'CIT-ITD celebra su segundo aniversario con grandes proyectos','09 ago 2023','El CIT-ITD celebra su segundo aniversario con grandes proyectos.','Contenido de la noticia sobre el segundo aniversario del CIT-ITD y sus grandes proyectos.','https://64.media.tumblr.com/025f4b5bace1b090b0282d5da1c41e4b/dba6fb7dd04fed67-5d/s2048x3072/048206be1d1fe27550cd5e40a971ad300e9d046a.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(8,'ITD clausura su “SuperCamp 2023\"','09 ago 2023','El ITD clausura su “SuperCamp 2023”.','Contenido de la noticia sobre la clausura del “SuperCamp 2023” en el ITD.','https://64.media.tumblr.com/1100135d5d1cc200ac2bc8d4410063e5/1b0209297c272d94-f2/s2048x3072/e3844e84acca365426b732958cd8db2bf6441ba7.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(9,'Inauguración de la Sala de Exdirectores Generales de Educación Superior Tecnológica','09 ago 2023','Inauguración de la Sala de Exdirectores Generales de Educación Superior Tecnológica.','Contenido de la noticia sobre la inauguración de la Sala de Exdirectores Generales de Educación Superior Tecnológica.','https://64.media.tumblr.com/8181a54d6c2e5d24a7cf3955f1292d6d/86edf4237237c2b8-d0/s2048x3072/0600cf9b4dd605a50958ae4ede578bc6d180f60a.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(10,'ITD rinde homenaje a la trayectoria del exdirector José Valderrama Vela','09 ago 2023','El ITD rinde homenaje a la trayectoria del exdirector José Valderrama Vela.','Contenido de la noticia sobre el homenaje a la trayectoria del exdirector José Valderrama Vela en el ITD.','https://64.media.tumblr.com/b59b7c4936c1d69616d97d98fbc80206/489326a5e6ca9e35-4e/s1280x1920/78614a420a88dd3c0843f3eb54dfd5f3bdf09a4f.jpg','2024-06-11 02:09:57','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(11,'ITD Firma Convenio de Colaboración con Secretaria de Turismo','03 jul 2023','El ITD firma un convenio de colaboración con la Secretaría de Turismo.','Contenido de la noticia sobre la firma del convenio de colaboración entre el ITD y la Secretaría de Turismo.','https://64.media.tumblr.com/025f4b5bace1b090b0282d5da1c41e4b/dba6fb7dd04fed67-5d/s2048x3072/048206be1d1fe27550cd5e40a971ad300e9d046a.jpg','2024-06-11 02:26:23','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(12,'Se lleva a cabo el curso-taller “Aprender para Emprender”','03 jul 2023','El curso-taller “Aprender para Emprender” se lleva a cabo en el ITD.','Contenido de la noticia sobre el curso-taller “Aprender para Emprender” realizado en el ITD.','https://64.media.tumblr.com/1100135d5d1cc200ac2bc8d4410063e5/1b0209297c272d94-f2/s2048x3072/e3844e84acca365426b732958cd8db2bf6441ba7.jpg','2024-06-11 02:26:23','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(13,'Programa Institucional de Formación y Actualización Docente y Profesional','03 jul 2023','El ITD lanza el Programa Institucional de Formación y Actualización Docente y Profesional.','Contenido de la noticia sobre el Programa Institucional de Formación y Actualización Docente y Profesional del ITD.','https://64.media.tumblr.com/8181a54d6c2e5d24a7cf3955f1292d6d/86edf4237237c2b8-d0/s2048x3072/0600cf9b4dd605a50958ae4ede578bc6d180f60a.jpg','2024-06-11 02:26:23','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(14,'CIT-ITD celebra su segundo aniversario con grandes proyectos','8 Ago 2023','El Instituto Tecnológico de Durango “Pionero de la Enseñanza Técnica en la provincia de México”, siendo símbolo de la superación de nuestro estado y país, en el marco de su septuagésimo quinto aniversario, celebra el segundo año de trabajo de su Centro de Innovación Tecnológica ITD.','El Instituto Tecnológico de Durango “Pionero de la Enseñanza Técnica en la provincia de México”, siendo símbolo de la superación de nuestro estado y país, en el marco de su septuagésimo quinto aniversario, celebra el segundo año de trabajo de su Centro de Innovación Tecnológica ITD.\n\nLa mañana de este ocho de agosto se llevó a cabo en las instalaciones de la unidad norte del ITD, la celebración de este segundo aniversario, donde el anfitrión, Guillermo de Anda Rodríguez director de la institución recalcó la celebración de dos años de transformación, creatividad, esfuerzo, dedicación, compromiso e innovación, trabajando arduamente en la investigación para la generación de soluciones sustentables.\n\nComo parte de esta celebración se dieron a conocer las actividades del día, iniciando con el InnovaForum, donde investigadores y empresarios exploran las últimas tendencias disruptivas, analizando casos de éxito y compartiendo experiencias valiosas que guiarán el camino hacia el futuro de la innovación.\n\nAsí mismo se llevó a cabo la firma de convenio entre Centro de Recursos de Asistencia Familiar y el CIT-ITD, mediante el Patronato Promotor del ITD, titularizado por Alfredo Herrera Deras, en el cual se establece un marco de cooperación que fomente la investigación y el desarrollo conjunto de prótesis y aparatos ortopédicos innovadores; y la impartición de las conferencias: “Industria 4.0 monitoreo de procesos” y “Cable VFD, en la automatización industrial”.\n\n','https://64.media.tumblr.com/d0c5152d5490d2160a0366e4a76c095a/3b415ee40b48a612-7b/s540x810/80873dbef1f9dfc6af702946a6832321cb89443a.jpg','2024-06-13 00:12:27','https://www.tumblr.com/itd-oficial/725202825677832192/cit-itd-celebra-su-segundo-aniversario-con-grandes',1),
(15,'ITD realiza actualización del Comité de Innovación Integrado para el SGI','9 Ago 2023','Con el objetivo de continuar con la implementación y orientación de todos los procesos hacia la calidad educativa, la mañana de este nueve de agosto, el director del Instituto Tecnológico de Durango (ITD), del Tecnológico Nacional de México (TecNM), Guillermo de Anda Rodríguez, realizó la entrega de las asignaciones a los nuevos integrantes del Comité de Innovación Integrado (CII), que vigilará los procesos de auditoria interna y externa para el Sistema de Gestión Integral (SGI), con base en las normas ISO 14001:2015, ISO 45001:2018 e ISO 5001:2018.','Con el objetivo de continuar con la implementación y orientación de todos los procesos hacia la calidad educativa, la mañana de este nueve de agosto, el director del Instituto Tecnológico de Durango (ITD), del Tecnológico Nacional de México (TecNM), Guillermo de Anda Rodríguez, realizó la entrega de las asignaciones a los nuevos integrantes del Comité de Innovación Integrado (CII), que vigilará los procesos de auditoria interna y externa para el Sistema de Gestión Integral (SGI), con base en las normas ISO 14001:2015, ISO 45001:2018 e ISO 5001:2018.\n\nComo RD (representante de dirección) se otorgó el nombramiento a Héctor Martínez Argáiz, quien será acompañado por: Alberto Ramírez Márquez, como auditor líder; Yolocuauhtli Salazar Muños, en la coordinación de Gestión de Energía; Roberto Valencia Vázquez, en la coordinación de Gestión Ambiental; Dulce María Reyes Hinostroza, en la coordinación de Gestión de Seguridad y Salud en el Trabajo y María Soledad Espino Nájera, en Control de Información Documentada.\n\nDe igual forma las y los titulares de los departamentos académicos, administrativos y de planeación recibieron la asignación como integrantes del CII, adquiriendo el compromiso de enfocar los esfuerzos para proporcional un servicio educativo integral de calidad.\n\nEl ITD cuenta a la fecha con las actualizaciones avalan la eficacia del SGI, con relación al logro de los objetivos, el progreso de las actividades planificadas dirigidas a la mejora continua y la continuidad en el control operativo, siendo su ultimo aval expedido por la agencia American Registrar of Management System (ARMS).','https://64.media.tumblr.com/da26f805207fd4fb5eb10c52dc6b58a0/8cb81e5a32bcc5c8-e8/s540x810/764ee6e02ca501550f21dd6514ec1b3f4598c068.jpg','2024-06-13 00:12:27','https://www.tumblr.com/itd-oficial/725203563738988545/itd-realiza-actualizaci%C3%B3n-del-comit%C3%A9-de-innovaci%C3%B3n',1),
(16,'Cámara de Diputados conmemora el 75 aniversario del TecNM','25 Sep 2023','La Comisión de Educación, presidida por la diputada Flora Tania Cruz Santos, celebró este martes 26 de septiembre, la sesión solemne en la Cámara de Diputados para conmemorar el 75 aniversario del Tecnológico Nacional de México (TecNM), donde se reconoció a las 254 instituciones que integran el sistema de educación superior más grande del País y América Latina.','La Comisión de Educación, presidida por la diputada Flora Tania Cruz Santos, celebró este martes 26 de septiembre, la sesión solemne en la Cámara de Diputados para conmemorar el 75 aniversario del Tecnológico Nacional de México (TecNM), donde se reconoció a las 254 instituciones que integran el sistema de educación superior más grande del País y América Latina.\n\nGuillermo de Anda Rodríguez, director del Instituto Tecnológico de Durango (ITD), representando a la comunidad de la institución pionera, que inicio esta historia en el año de 1948, fue parte del comité que acompaño al director general del TecNM, Ramon Jiménez López, siendo testigos de este reconocimiento, donde se enfatizó la labor de las y los trabajadores, al personal académico, a las y los estudiantes y a las generaciones de egresados que han construido esta institución, con entrega al estudio y trabajo, contribuyendo a que México sea un mejor país.\n\nEn esta sesión se destacó al TecNM como el sistema de educación superior con la mayor matrícula en el país, contando a la fecha con más de 600 mil estudiantes en los planteles de las 32 entidades del país, con una oferta educativa de 43 carreras, anexando recientemente dos más en agosto de este año: la Ingeniería en Semiconductores y la Ingeniería Ferroviaria en ocho planteles.','https://64.media.tumblr.com/9e8979cf16f5304526f489e95543fec8/6ff77a89d61b6ae3-27/s540x810/9db5a95f20162669c520d6591deadddaaefa6459.jpg','2024-06-13 00:12:27','https://www.tumblr.com/itd-oficial/730316492570230784/c%C3%A1mara-de-diputados-conmemora-el-75-aniversario',1),
(54,'Primer Coloquio 2024 de la Maestría en Ingeniería Administrativa continúa desarrollándose en el Centro de Innovación Tecnológica ITD, ','13 Jun 2024','Primer Coloquio 2024 de la Maestría en Ingeniería Administrativa continúa desarrollándose en el Centro de Innovación Tecnológica ITD, presentando los avances de los proyectos de tesis de los estudiantes de este posgrado. Este evento tiene como objetivo principal ofrecer a los estudiantes un espacio académico formal para la presentación de sus proyectos de investigación, brindando retroalimentación académica propositiva sobre el contenido de los mismos. Además, se destaca la relevancia y aplicabilidad de estos proyectos en los ámbitos social y empresarial, con el apoyo del cuerpo docente y los alumnos de esta especialización.','Primer Coloquio 2024 de la Maestría en Ingeniería Administrativa continúa desarrollándose en el Centro de Innovación Tecnológica ITD, presentando los avances de los proyectos de tesis de los estudiantes de este posgrado. Este evento tiene como objetivo principal ofrecer a los estudiantes un espacio académico formal para la presentación de sus proyectos de investigación, brindando retroalimentación académica propositiva sobre el contenido de los mismos. Además, se destaca la relevancia y aplicabilidad de estos proyectos en los ámbitos social y empresarial, con el apoyo del cuerpo docente y los alumnos de esta especialización.','https://scontent.fdgo1-1.fna.fbcdn.net/v/t39.30808-6/448345330_845455580946304_8762242484672780961_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=cOiF3Llb2RsQ7kNvgGtEu4m&_nc_ht=scontent.fdgo1-1.fna&oh=00_AYDxYyFAGVkLMdNfIL05xwvkmR3vF8WDvLlF0_RwRn03og&oe=66717767','2024-06-14 02:25:01','https://www.facebook.com/ITDgoOficial/?locale=es_LA',1);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,1,'Leonardo David',1,'Gutierrez','Perez'),
(3,3,'Marco Raeed',1,'Cisneros','Landeros'),
(6,6,'Leonardo David',1,'Gutierrez','Perez');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido_paterno` varchar(100) DEFAULT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `imagen_perfil` varchar(255) DEFAULT NULL,
  `tipo_de_usuario` varchar(50) DEFAULT NULL,
  `permiso` int(10) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'Leonardo David','Gutierrez','Perez','institutotecnologicodurangoema@gmail.com','','password','https://covalto-production-website.s3.amazonaws.com/Hero_Mobile_Cuenta_Personas_V1_1_8046e424ea.webp','Estudiante',3,1),
(3,'Marco Raeed','Cisneros','Landeros','20041239@itdurango.edu.mx','10rsk','password','','Estudiante',3,1),
(6,'Leonardo David','Gutierrez','Perez','20041249@itdurango.edu.mx','','password','https://pm1.aminoapps.com/7838/bb260f4cd523eddf8d7a29e5c6f2b87415e18befr1-717-717v2_uhq.jpg','Estudiante',1,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_usuario_insert
AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
  -- Insertar en tabla2
  INSERT INTO auth (usuario_id, usuario, password, permisos, codigo)
  VALUES (NEW.id, NEW.correo, NEW.contrasena, NEW.permiso, NEW.codigo);

  -- Insertar en tabla3
  INSERT INTO user (usuario_id, nombre, activo, apellido_paterno, apellido_materno)
  VALUES (NEW.id, NEW.nombre, NEW.activo, NEW.apellido_paterno, NEW.apellido_materno);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 12:45:18
