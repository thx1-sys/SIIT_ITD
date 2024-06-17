-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SII_ITD
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario_escolar`
--

LOCK TABLES `calendario_escolar` WRITE;
/*!40000 ALTER TABLE `calendario_escolar` DISABLE KEYS */;
INSERT INTO `calendario_escolar` VALUES
(1,1,'Regreso de vacaciones de invierno','2024-01-02',NULL),
(2,2,'Entrega del producto no conforme (PNC) del SGI','2024-01-08',NULL),
(3,3,'Última de captura de calificaciones','2024-01-08',NULL),
(4,4,'Solicitudes de comité académico','2024-01-10','2024-06-19'),
(5,5,'Inscripciones al examen de nuevo ingreso','2024-01-13','2024-01-17'),
(6,6,'Cursos de actualización docente y/o profesional','2024-01-15','2024-01-26'),
(7,7,'Solicitud de impresión de boletas de calificaciones','2024-01-18',NULL),
(8,8,'Última captura de calificaciones de Residencias Profesionales','2024-01-19',NULL),
(9,9,'Examen de nuevo ingreso','2024-01-19',NULL),
(10,10,'Reunión de inducción para alumnos de nuevo ingreso','2024-01-22',NULL),
(11,11,'Entrega de Instrumentación didáctica y programación de prácticas','2024-01-22',NULL),
(12,12,'Salida no conforme de término de Residencias Profesionales','2024-01-23',NULL),
(13,13,'Inicio servicio social enero - junio 2024','2024-01-29','2024-02-01'),
(14,14,'Reinscripciones','2024-01-29','2024-02-02'),
(15,15,'Inscripciones nuevo ingreso','2024-02-02',NULL),
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
(53,54,'Suspensión oficial de labores','2024-05-01',NULL),
(54,55,'Inscripción al examen de lengua extranjera','2024-05-06','2024-05-09'),
(55,56,'Aplicación del examen de lengua extranjera','2024-05-06','2024-05-09'),
(56,57,'Suspensión oficial de labores','2024-05-10',NULL),
(57,58,'Inscripción al examen de lengua extranjera','2024-05-13','2024-05-16'),
(58,59,'Aplicación del examen de lengua extranjera','2024-05-13','2024-05-16'),
(59,60,'Segundo seguimiento de Residencias Profesionales','2024-05-20',NULL),
(60,61,'Tercer seguimiento del curso','2024-05-20','2024-05-31'),
(61,62,'Aplicación del examen de lengua extranjera','2024-05-27','2024-05-31'),
(62,63,'Auditoría del Sistema de Gestión Integrado','2024-05-27','2024-05-29'),
(63,64,'Inscripción de estudiantes a servicio social agosto - diciembre 2024','2024-05-27','2024-05-28'),
(64,65,'Aplicación de EXANI II - Posgrado','2024-06-07',NULL),
(65,66,'Fin de semestre','2024-06-12',NULL),
(66,67,'Inscripción al examen de lengua extranjera','2024-06-10','2024-06-13'),
(67,68,'Exámenes de segunda oportunidad','2024-06-13','2024-06-14'),
(68,69,'Proceso de admisión para estudios de Posgrado','2024-06-10','2024-06-21'),
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
(93,94,'Aplicación de examen de lengua extranjera','2024-08-19','2024-08-23');
/*!40000 ALTER TABLE `calendario_escolar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 16:22:11
