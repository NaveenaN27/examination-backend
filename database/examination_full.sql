CREATE DATABASE  IF NOT EXISTS `examination` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `examination`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: examination
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(100) NOT NULL,
  `exam_date` date NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'Model Exam','2026-10-20',1),(2,'Semester Exam','2026-11-16',1),(3,'Model Exam','2026-10-22',2),(4,'Semester Exam','2026-11-18',2),(5,'Model Exam','2026-10-24',3),(6,'Semester Exam','2026-11-20',3),(7,'Model Exam','2026-10-27',4),(8,'Semester Exam','2026-11-23',4),(9,'Model Exam','2026-10-29',5),(10,'Semester Exam','2026-11-25',5),(11,'Semester Practical Exam','2026-11-10',6),(12,'Model Exam','2026-10-20',7),(13,'Semester Exam','2026-11-16',7),(14,'Model Exam','2026-10-22',8),(15,'Semester Exam','2026-11-18',8),(16,'Model Exam','2026-10-24',9),(17,'Semester Exam','2026-11-20',9),(18,'Model Exam','2026-10-27',10),(19,'Semester Exam','2026-11-23',10),(20,'Model Exam','2026-10-29',11),(21,'Semester Exam','2026-11-25',11),(22,'Semester Practical Exam','2026-11-10',12),(23,'Model Exam','2026-10-20',13),(24,'Semester Exam','2026-11-16',13),(25,'Model Exam','2026-10-22',14),(26,'Semester Exam','2026-11-18',14),(27,'Model Exam','2026-10-24',15),(28,'Semester Exam','2026-11-20',15),(29,'Model Exam','2026-10-27',16),(30,'Semester Exam','2026-11-23',16),(31,'Model Exam','2026-10-29',17),(32,'Semester Exam','2026-11-25',17),(33,'Semester Practical Exam','2026-11-10',18),(34,'Model Exam','2026-10-20',19),(35,'Semester Exam','2026-11-16',19),(36,'Model Exam','2026-10-22',20),(37,'Semester Exam','2026-11-18',20),(38,'Model Exam','2026-10-24',21),(39,'Semester Exam','2026-11-20',21),(40,'Model Exam','2026-10-27',22),(41,'Semester Exam','2026-11-23',22),(42,'Model Exam','2026-10-29',23),(43,'Semester Exam','2026-11-25',23),(44,'Semester Practical Exam','2026-11-10',24),(45,'Model Exam','2026-10-20',25),(46,'Semester Exam','2026-11-16',25),(47,'Model Exam','2026-10-22',26),(48,'Semester Exam','2026-11-18',26),(49,'Model Exam','2026-10-24',27),(50,'Semester Exam','2026-11-20',27),(51,'Model Exam','2026-10-27',28),(52,'Semester Exam','2026-11-23',28),(53,'Model Exam','2026-10-29',29),(54,'Semester Exam','2026-11-25',29),(55,'Semester Practical Exam','2026-11-10',30),(56,'Model Exam','2026-10-20',31),(57,'Semester Exam','2026-11-16',31),(58,'Model Exam','2026-10-22',32),(59,'Semester Exam','2026-11-18',32),(60,'Model Exam','2026-10-24',33),(61,'Semester Exam','2026-11-20',33),(62,'Model Exam','2026-10-27',34),(63,'Semester Exam','2026-11-23',34),(64,'Model Exam','2026-10-29',35),(65,'Semester Exam','2026-11-25',35),(66,'Semester Practical Exam','2026-11-10',36),(67,'Model Exam','2026-10-20',37),(68,'Semester Exam','2026-11-16',37),(69,'Model Exam','2026-10-22',38),(70,'Semester Exam','2026-11-18',38),(71,'Model Exam','2026-10-24',39),(72,'Semester Exam','2026-11-20',39),(73,'Model Exam','2026-10-27',40),(74,'Semester Exam','2026-11-23',40),(75,'Model Exam','2026-10-29',41),(76,'Semester Exam','2026-11-25',41),(77,'Semester Practical Exam','2026-11-10',42),(78,'Model Exam','2026-10-20',43),(79,'Semester Exam','2026-11-16',43),(80,'Model Exam','2026-10-22',44),(81,'Semester Exam','2026-11-18',44),(82,'Model Exam','2026-10-24',45),(83,'Semester Exam','2026-11-20',45),(84,'Model Exam','2026-10-27',46),(85,'Semester Exam','2026-11-23',46),(86,'Model Exam','2026-10-29',47),(87,'Semester Exam','2026-11-25',47),(88,'Semester Practical Exam','2026-11-10',48);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `mark_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `marks_obtained` int NOT NULL,
  `result_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`mark_id`),
  UNIQUE KEY `student_id` (`student_id`,`exam_id`),
  KEY `exam_id` (`exam_id`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,3,1,86,'PASS'),(2,3,2,66,'PASS'),(3,2,1,100,'PASS'),(4,2,2,100,'PASS'),(5,1,1,90,'PASS'),(6,1,2,99,'PASS'),(7,3,3,60,'PASS'),(8,3,4,74,'PASS'),(9,2,3,89,'PASS'),(10,2,4,65,'PASS'),(11,1,3,98,'PASS'),(12,1,4,99,'PASS'),(13,3,5,70,'PASS'),(14,3,6,82,'PASS'),(15,2,5,63,'PASS'),(16,2,6,73,'PASS'),(17,1,5,98,'PASS'),(18,1,6,99,'PASS'),(19,3,7,80,'PASS'),(20,3,8,90,'PASS'),(21,2,7,73,'PASS'),(22,2,8,81,'PASS'),(23,1,7,98,'PASS'),(24,1,8,99,'PASS'),(25,3,9,90,'PASS'),(26,3,10,98,'PASS'),(27,2,9,83,'PASS'),(28,2,10,89,'PASS'),(29,1,9,98,'PASS'),(30,1,10,85,'PASS'),(31,3,11,89,'PASS'),(32,2,11,78,'PASS'),(33,1,11,98,'PASS'),(34,6,12,99,'PASS'),(35,6,13,99,'PASS'),(36,5,12,83,'PASS'),(37,5,13,94,'PASS'),(38,4,12,76,'PASS'),(39,4,13,85,'PASS'),(40,6,14,64,'PASS'),(41,6,15,77,'PASS'),(42,5,14,93,'PASS'),(43,5,15,68,'PASS'),(44,4,14,86,'PASS'),(45,4,15,93,'PASS'),(46,6,16,74,'PASS'),(47,6,17,85,'PASS'),(48,5,16,67,'PASS'),(49,5,17,76,'PASS'),(50,4,16,60,'PASS'),(51,4,17,67,'PASS'),(52,6,18,84,'PASS'),(53,6,19,93,'PASS'),(54,5,18,77,'PASS'),(55,5,19,84,'PASS'),(56,4,18,70,'PASS'),(57,4,19,75,'PASS'),(58,6,20,94,'PASS'),(59,6,21,67,'PASS'),(60,5,20,87,'PASS'),(61,5,21,92,'PASS'),(62,4,20,80,'PASS'),(63,4,21,83,'PASS'),(64,6,22,77,'PASS'),(65,5,22,92,'PASS'),(66,4,22,81,'PASS'),(67,9,23,94,'PASS'),(68,9,24,72,'PASS'),(69,8,23,87,'PASS'),(70,8,24,97,'PASS'),(71,7,23,80,'PASS'),(72,7,24,88,'PASS'),(73,9,25,68,'PASS'),(74,9,26,80,'PASS'),(75,8,25,61,'PASS'),(76,8,26,71,'PASS'),(77,7,25,90,'PASS'),(78,7,26,96,'PASS'),(79,9,27,78,'PASS'),(80,9,28,88,'PASS'),(81,8,27,71,'PASS'),(82,8,28,79,'PASS'),(83,7,27,64,'PASS'),(84,7,28,70,'PASS'),(85,9,29,88,'PASS'),(86,9,30,96,'PASS'),(87,8,29,81,'PASS'),(88,8,30,87,'PASS'),(89,7,29,74,'PASS'),(90,7,30,78,'PASS'),(91,9,31,62,'PASS'),(92,9,32,70,'PASS'),(93,8,31,91,'PASS'),(94,8,32,95,'PASS'),(95,7,31,84,'PASS'),(96,7,32,86,'PASS'),(97,9,33,91,'PASS'),(98,8,33,80,'PASS'),(99,7,33,95,'PASS'),(100,11,34,91,'PASS'),(101,11,35,66,'PASS'),(102,10,34,84,'PASS'),(103,10,35,91,'PASS'),(104,11,36,65,'PASS'),(105,11,37,74,'PASS'),(106,10,36,94,'PASS'),(107,10,37,65,'PASS'),(108,11,38,75,'PASS'),(109,11,39,82,'PASS'),(110,10,38,68,'PASS'),(111,10,39,73,'PASS'),(112,11,40,85,'PASS'),(113,11,41,90,'PASS'),(114,10,40,78,'PASS'),(115,10,41,81,'PASS'),(116,11,42,95,'PASS'),(117,11,43,98,'PASS'),(118,10,42,88,'PASS'),(119,10,43,89,'PASS'),(120,11,44,94,'PASS'),(121,10,44,83,'PASS'),(122,13,45,88,'PASS'),(123,13,46,94,'PASS'),(124,12,45,81,'PASS'),(125,12,46,85,'PASS'),(126,13,47,62,'PASS'),(127,13,48,68,'PASS'),(128,12,47,91,'PASS'),(129,12,48,93,'PASS'),(130,13,49,72,'PASS'),(131,13,50,76,'PASS'),(132,12,49,65,'PASS'),(133,12,50,67,'PASS'),(134,13,51,82,'PASS'),(135,13,52,84,'PASS'),(136,12,51,75,'PASS'),(137,12,52,75,'PASS'),(138,13,53,92,'PASS'),(139,13,54,92,'PASS'),(140,12,53,85,'PASS'),(141,12,54,83,'PASS'),(142,13,55,97,'PASS'),(143,12,55,86,'PASS'),(144,15,56,85,'PASS'),(145,15,57,88,'PASS'),(146,14,56,78,'PASS'),(147,14,57,79,'PASS'),(148,15,58,95,'PASS'),(149,15,59,96,'PASS'),(150,14,58,88,'PASS'),(151,14,59,87,'PASS'),(152,15,60,69,'PASS'),(153,15,61,70,'PASS'),(154,14,60,62,'PASS'),(155,14,61,95,'PASS'),(156,15,62,79,'PASS'),(157,15,63,78,'PASS'),(158,14,62,72,'PASS'),(159,14,63,69,'PASS'),(160,15,64,89,'PASS'),(161,15,65,86,'PASS'),(162,14,64,82,'PASS'),(163,14,65,77,'PASS'),(164,15,66,100,'PASS'),(165,14,66,89,'PASS'),(166,17,67,82,'PASS'),(167,17,68,82,'PASS'),(168,16,67,75,'PASS'),(169,16,68,73,'PASS'),(170,17,69,92,'PASS'),(171,17,70,90,'PASS'),(172,16,69,85,'PASS'),(173,16,70,81,'PASS'),(174,17,71,66,'PASS'),(175,17,72,98,'PASS'),(176,16,71,95,'PASS'),(177,16,72,89,'PASS'),(178,17,73,76,'PASS'),(179,17,74,72,'PASS'),(180,16,73,69,'PASS'),(181,16,74,97,'PASS'),(182,17,75,86,'PASS'),(183,17,76,80,'PASS'),(184,16,75,79,'PASS'),(185,16,76,71,'PASS'),(186,17,77,77,'PASS'),(187,16,77,92,'PASS'),(188,20,78,86,'PASS'),(189,20,79,85,'PASS'),(190,19,78,79,'PASS'),(191,19,79,76,'PASS'),(192,18,78,72,'PASS'),(193,18,79,67,'PASS'),(194,20,80,60,'PASS'),(195,20,81,93,'PASS'),(196,19,80,89,'PASS'),(197,19,81,84,'PASS'),(198,18,80,82,'PASS'),(199,18,81,75,'PASS'),(200,20,82,70,'PASS'),(201,20,83,67,'PASS'),(202,19,82,63,'PASS'),(203,19,83,92,'PASS'),(204,18,82,92,'PASS'),(205,18,83,83,'PASS'),(206,20,84,80,'PASS'),(207,20,85,75,'PASS'),(208,19,84,73,'PASS'),(209,19,85,66,'PASS'),(210,18,84,66,'PASS'),(211,18,85,91,'PASS'),(212,20,86,90,'PASS'),(213,20,87,83,'PASS'),(214,19,86,83,'PASS'),(215,19,87,74,'PASS'),(216,18,86,76,'PASS'),(217,18,87,65,'PASS'),(218,20,88,91,'PASS'),(219,19,88,80,'PASS'),(220,18,88,95,'PASS');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_marks_insert` BEFORE INSERT ON `marks` FOR EACH ROW BEGIN
    DECLARE pass_mark INT;

    SELECT s.pass_marks
    INTO pass_mark
    FROM exams e
    JOIN subjects s
        ON e.subject_id = s.subject_id
    WHERE e.exam_id = NEW.exam_id;

    IF NEW.marks_obtained >= pass_mark THEN
        SET NEW.result_status = 'PASS';
    ELSE
        SET NEW.result_status = 'FAIL';
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_marks_update` BEFORE UPDATE ON `marks` FOR EACH ROW BEGIN
    DECLARE pass_mark INT;

    SELECT s.pass_marks
    INTO pass_mark
    FROM exams e
    JOIN subjects s
        ON e.subject_id = s.subject_id
    WHERE e.exam_id = NEW.exam_id;

    IF NEW.marks_obtained >= pass_mark THEN
        SET NEW.result_status = 'PASS';
    ELSE
        SET NEW.result_status = 'FAIL';
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `previous_semester_results`
--

DROP TABLE IF EXISTS `previous_semester_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `previous_semester_results` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `semester` int NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(150) NOT NULL,
  `credit` int NOT NULL,
  `grade_point` int NOT NULL,
  `grade` varchar(5) NOT NULL,
  `result_status` varchar(10) NOT NULL,
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `uq_student_semester_course` (`student_id`,`semester`,`course_code`),
  CONSTRAINT `fk_previous_result_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_semester_results`
--

LOCK TABLES `previous_semester_results` WRITE;
/*!40000 ALTER TABLE `previous_semester_results` DISABLE KEYS */;
INSERT INTO `previous_semester_results` VALUES (1,1,1,'COMMON-S1-06','Physics Laboratory',2,8,'A','PASS'),(2,1,2,'COMMON-S2-06','Engineering Practices Laboratory',2,6,'B','PASS'),(3,1,3,'CSE-S3-06','Data Structures and Algorithms Laboratory',2,9,'A+','PASS'),(4,1,4,'CSE-S4-06','Operating Systems Laboratory',2,7,'B+','PASS'),(5,1,1,'COMMON-S1-05','Programming Laboratory',2,6,'B','PASS'),(6,1,2,'COMMON-S2-05','Data Structures Laboratory',2,9,'A+','PASS'),(7,1,3,'CSE-S3-05','Object Oriented Programming Laboratory',2,7,'B+','PASS'),(8,1,4,'CSE-S4-05','Database Management Systems Laboratory',2,10,'O','PASS'),(9,1,1,'COMMON-S1-04','Communicative English',3,9,'A+','PASS'),(10,1,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,7,'B+','PASS'),(11,1,3,'CSE-S3-04','Computer Organization',3,10,'O','PASS'),(12,1,4,'CSE-S4-04','Design and Analysis of Algorithms',3,8,'A','PASS'),(13,1,1,'COMMON-S1-03','Problem Solving and Python Programming',3,7,'B+','PASS'),(14,1,2,'COMMON-S2-03','Data Structures',3,10,'O','PASS'),(15,1,3,'CSE-S3-03','Data Structures and Algorithms',3,8,'A','PASS'),(16,1,4,'CSE-S4-03','Operating Systems',3,6,'B','PASS'),(17,1,1,'COMMON-S1-02','Engineering Physics',4,10,'O','PASS'),(18,1,2,'COMMON-S2-02','Engineering Chemistry',4,8,'A','PASS'),(19,1,3,'CSE-S3-02','Object Oriented Programming',4,6,'B','PASS'),(20,1,4,'CSE-S4-02','Database Management Systems',4,9,'A+','PASS'),(21,1,1,'COMMON-S1-01','Engineering Mathematics I',4,8,'A','PASS'),(22,1,2,'COMMON-S2-01','Engineering Mathematics II',4,6,'B','PASS'),(23,1,3,'CSE-S3-01','Discrete Mathematics',4,9,'A+','PASS'),(24,1,4,'CSE-S4-01','Probability and Statistics',4,7,'B+','PASS'),(25,2,1,'COMMON-S1-06','Physics Laboratory',2,10,'O','PASS'),(26,2,2,'COMMON-S2-06','Engineering Practices Laboratory',2,8,'A','PASS'),(27,2,3,'CSE-S3-06','Data Structures and Algorithms Laboratory',2,6,'B','PASS'),(28,2,4,'CSE-S4-06','Operating Systems Laboratory',2,9,'A+','PASS'),(29,2,1,'COMMON-S1-05','Programming Laboratory',2,8,'A','PASS'),(30,2,2,'COMMON-S2-05','Data Structures Laboratory',2,6,'B','PASS'),(31,2,3,'CSE-S3-05','Object Oriented Programming Laboratory',2,9,'A+','PASS'),(32,2,4,'CSE-S4-05','Database Management Systems Laboratory',2,7,'B+','PASS'),(33,2,1,'COMMON-S1-04','Communicative English',3,6,'B','PASS'),(34,2,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,9,'A+','PASS'),(35,2,3,'CSE-S3-04','Computer Organization',3,7,'B+','PASS'),(36,2,4,'CSE-S4-04','Design and Analysis of Algorithms',3,10,'O','PASS'),(37,2,1,'COMMON-S1-03','Problem Solving and Python Programming',3,9,'A+','PASS'),(38,2,2,'COMMON-S2-03','Data Structures',3,7,'B+','PASS'),(39,2,3,'CSE-S3-03','Data Structures and Algorithms',3,10,'O','PASS'),(40,2,4,'CSE-S4-03','Operating Systems',3,8,'A','PASS'),(41,2,1,'COMMON-S1-02','Engineering Physics',4,7,'B+','PASS'),(42,2,2,'COMMON-S2-02','Engineering Chemistry',4,10,'O','PASS'),(43,2,3,'CSE-S3-02','Object Oriented Programming',4,8,'A','PASS'),(44,2,4,'CSE-S4-02','Database Management Systems',4,6,'B','PASS'),(45,2,1,'COMMON-S1-01','Engineering Mathematics I',4,10,'O','PASS'),(46,2,2,'COMMON-S2-01','Engineering Mathematics II',4,8,'A','PASS'),(47,2,3,'CSE-S3-01','Discrete Mathematics',4,6,'B','PASS'),(48,2,4,'CSE-S4-01','Probability and Statistics',4,9,'A+','PASS'),(49,3,1,'COMMON-S1-06','Physics Laboratory',2,7,'B+','PASS'),(50,3,2,'COMMON-S2-06','Engineering Practices Laboratory',2,10,'O','PASS'),(51,3,3,'CSE-S3-06','Data Structures and Algorithms Laboratory',2,8,'A','PASS'),(52,3,4,'CSE-S4-06','Operating Systems Laboratory',2,6,'B','PASS'),(53,3,1,'COMMON-S1-05','Programming Laboratory',2,10,'O','PASS'),(54,3,2,'COMMON-S2-05','Data Structures Laboratory',2,8,'A','PASS'),(55,3,3,'CSE-S3-05','Object Oriented Programming Laboratory',2,6,'B','PASS'),(56,3,4,'CSE-S4-05','Database Management Systems Laboratory',2,9,'A+','PASS'),(57,3,1,'COMMON-S1-04','Communicative English',3,8,'A','PASS'),(58,3,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,6,'B','PASS'),(59,3,3,'CSE-S3-04','Computer Organization',3,9,'A+','PASS'),(60,3,4,'CSE-S4-04','Design and Analysis of Algorithms',3,7,'B+','PASS'),(61,3,1,'COMMON-S1-03','Problem Solving and Python Programming',3,6,'B','PASS'),(62,3,2,'COMMON-S2-03','Data Structures',3,9,'A+','PASS'),(63,3,3,'CSE-S3-03','Data Structures and Algorithms',3,7,'B+','PASS'),(64,3,4,'CSE-S4-03','Operating Systems',3,10,'O','PASS'),(65,3,1,'COMMON-S1-02','Engineering Physics',4,9,'A+','PASS'),(66,3,2,'COMMON-S2-02','Engineering Chemistry',4,7,'B+','PASS'),(67,3,3,'CSE-S3-02','Object Oriented Programming',4,10,'O','PASS'),(68,3,4,'CSE-S4-02','Database Management Systems',4,8,'A','PASS'),(69,3,1,'COMMON-S1-01','Engineering Mathematics I',4,7,'B+','PASS'),(70,3,2,'COMMON-S2-01','Engineering Mathematics II',4,10,'O','PASS'),(71,3,3,'CSE-S3-01','Discrete Mathematics',4,8,'A','PASS'),(72,3,4,'CSE-S4-01','Probability and Statistics',4,6,'B','PASS'),(73,4,1,'COMMON-S1-06','Physics Laboratory',2,9,'A+','PASS'),(74,4,2,'COMMON-S2-06','Engineering Practices Laboratory',2,7,'B+','PASS'),(75,4,3,'IT-S3-06','Database Management Systems Laboratory',2,10,'O','PASS'),(76,4,4,'IT-S4-06','Computer Networks Laboratory',2,8,'A','PASS'),(77,4,1,'COMMON-S1-05','Programming Laboratory',2,7,'B+','PASS'),(78,4,2,'COMMON-S2-05','Data Structures Laboratory',2,10,'O','PASS'),(79,4,3,'IT-S3-05','Java Programming Laboratory',2,8,'A','PASS'),(80,4,4,'IT-S4-05','Web Technology Laboratory',2,6,'B','PASS'),(81,4,1,'COMMON-S1-04','Communicative English',3,10,'O','PASS'),(82,4,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,8,'A','PASS'),(83,4,3,'IT-S3-04','Computer Organization',3,6,'B','PASS'),(84,4,4,'IT-S4-04','Computer Networks',3,9,'A+','PASS'),(85,4,1,'COMMON-S1-03','Problem Solving and Python Programming',3,8,'A','PASS'),(86,4,2,'COMMON-S2-03','Data Structures',3,6,'B','PASS'),(87,4,3,'IT-S3-03','Database Management Systems',3,9,'A+','PASS'),(88,4,4,'IT-S4-03','Operating Systems',3,7,'B+','PASS'),(89,4,1,'COMMON-S1-02','Engineering Physics',4,6,'B','PASS'),(90,4,2,'COMMON-S2-02','Engineering Chemistry',4,9,'A+','PASS'),(91,4,3,'IT-S3-02','Java Programming',4,7,'B+','PASS'),(92,4,4,'IT-S4-02','Web Technology',4,10,'O','PASS'),(93,4,1,'COMMON-S1-01','Engineering Mathematics I',4,9,'A+','PASS'),(94,4,2,'COMMON-S2-01','Engineering Mathematics II',4,7,'B+','PASS'),(95,4,3,'IT-S3-01','Discrete Mathematics',4,10,'O','PASS'),(96,4,4,'IT-S4-01','Probability and Statistics',4,8,'A','PASS'),(97,5,1,'COMMON-S1-06','Physics Laboratory',2,6,'B','PASS'),(98,5,2,'COMMON-S2-06','Engineering Practices Laboratory',2,9,'A+','PASS'),(99,5,3,'IT-S3-06','Database Management Systems Laboratory',2,7,'B+','PASS'),(100,5,4,'IT-S4-06','Computer Networks Laboratory',2,10,'O','PASS'),(101,5,1,'COMMON-S1-05','Programming Laboratory',2,9,'A+','PASS'),(102,5,2,'COMMON-S2-05','Data Structures Laboratory',2,7,'B+','PASS'),(103,5,3,'IT-S3-05','Java Programming Laboratory',2,10,'O','PASS'),(104,5,4,'IT-S4-05','Web Technology Laboratory',2,8,'A','PASS'),(105,5,1,'COMMON-S1-04','Communicative English',3,7,'B+','PASS'),(106,5,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,10,'O','PASS'),(107,5,3,'IT-S3-04','Computer Organization',3,8,'A','PASS'),(108,5,4,'IT-S4-04','Computer Networks',3,6,'B','PASS'),(109,5,1,'COMMON-S1-03','Problem Solving and Python Programming',3,10,'O','PASS'),(110,5,2,'COMMON-S2-03','Data Structures',3,8,'A','PASS'),(111,5,3,'IT-S3-03','Database Management Systems',3,6,'B','PASS'),(112,5,4,'IT-S4-03','Operating Systems',3,9,'A+','PASS'),(113,5,1,'COMMON-S1-02','Engineering Physics',4,8,'A','PASS'),(114,5,2,'COMMON-S2-02','Engineering Chemistry',4,6,'B','PASS'),(115,5,3,'IT-S3-02','Java Programming',4,9,'A+','PASS'),(116,5,4,'IT-S4-02','Web Technology',4,7,'B+','PASS'),(117,5,1,'COMMON-S1-01','Engineering Mathematics I',4,6,'B','PASS'),(118,5,2,'COMMON-S2-01','Engineering Mathematics II',4,9,'A+','PASS'),(119,5,3,'IT-S3-01','Discrete Mathematics',4,7,'B+','PASS'),(120,5,4,'IT-S4-01','Probability and Statistics',4,10,'O','PASS'),(121,6,1,'COMMON-S1-06','Physics Laboratory',2,8,'A','PASS'),(122,6,2,'COMMON-S2-06','Engineering Practices Laboratory',2,6,'B','PASS'),(123,6,3,'IT-S3-06','Database Management Systems Laboratory',2,9,'A+','PASS'),(124,6,4,'IT-S4-06','Computer Networks Laboratory',2,7,'B+','PASS'),(125,6,1,'COMMON-S1-05','Programming Laboratory',2,6,'B','PASS'),(126,6,2,'COMMON-S2-05','Data Structures Laboratory',2,9,'A+','PASS'),(127,6,3,'IT-S3-05','Java Programming Laboratory',2,7,'B+','PASS'),(128,6,4,'IT-S4-05','Web Technology Laboratory',2,10,'O','PASS'),(129,6,1,'COMMON-S1-04','Communicative English',3,9,'A+','PASS'),(130,6,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,7,'B+','PASS'),(131,6,3,'IT-S3-04','Computer Organization',3,10,'O','PASS'),(132,6,4,'IT-S4-04','Computer Networks',3,8,'A','PASS'),(133,6,1,'COMMON-S1-03','Problem Solving and Python Programming',3,7,'B+','PASS'),(134,6,2,'COMMON-S2-03','Data Structures',3,10,'O','PASS'),(135,6,3,'IT-S3-03','Database Management Systems',3,8,'A','PASS'),(136,6,4,'IT-S4-03','Operating Systems',3,6,'B','PASS'),(137,6,1,'COMMON-S1-02','Engineering Physics',4,10,'O','PASS'),(138,6,2,'COMMON-S2-02','Engineering Chemistry',4,8,'A','PASS'),(139,6,3,'IT-S3-02','Java Programming',4,6,'B','PASS'),(140,6,4,'IT-S4-02','Web Technology',4,9,'A+','PASS'),(141,6,1,'COMMON-S1-01','Engineering Mathematics I',4,8,'A','PASS'),(142,6,2,'COMMON-S2-01','Engineering Mathematics II',4,6,'B','PASS'),(143,6,3,'IT-S3-01','Discrete Mathematics',4,9,'A+','PASS'),(144,6,4,'IT-S4-01','Probability and Statistics',4,7,'B+','PASS'),(145,7,1,'COMMON-S1-06','Physics Laboratory',2,10,'O','PASS'),(146,7,2,'COMMON-S2-06','Engineering Practices Laboratory',2,8,'A','PASS'),(147,7,3,'ECE-S3-06','Digital Electronics Laboratory',2,6,'B','PASS'),(148,7,4,'ECE-S4-06','Microprocessor Laboratory',2,9,'A+','PASS'),(149,7,1,'COMMON-S1-05','Programming Laboratory',2,8,'A','PASS'),(150,7,2,'COMMON-S2-05','Data Structures Laboratory',2,6,'B','PASS'),(151,7,3,'ECE-S3-05','Electronic Devices Laboratory',2,9,'A+','PASS'),(152,7,4,'ECE-S4-05','Communication Systems Laboratory',2,7,'B+','PASS'),(153,7,1,'COMMON-S1-04','Communicative English',3,6,'B','PASS'),(154,7,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,9,'A+','PASS'),(155,7,3,'ECE-S3-04','Signals and Systems',3,7,'B+','PASS'),(156,7,4,'ECE-S4-04','Electromagnetic Fields',3,10,'O','PASS'),(157,7,1,'COMMON-S1-03','Problem Solving and Python Programming',3,9,'A+','PASS'),(158,7,2,'COMMON-S2-03','Data Structures',3,7,'B+','PASS'),(159,7,3,'ECE-S3-03','Digital Electronics',3,10,'O','PASS'),(160,7,4,'ECE-S4-03','Microprocessors and Microcontrollers',3,8,'A','PASS'),(161,7,1,'COMMON-S1-02','Engineering Physics',4,7,'B+','PASS'),(162,7,2,'COMMON-S2-02','Engineering Chemistry',4,10,'O','PASS'),(163,7,3,'ECE-S3-02','Electronic Devices and Circuits',4,8,'A','PASS'),(164,7,4,'ECE-S4-02','Analog Communication',4,6,'B','PASS'),(165,7,1,'COMMON-S1-01','Engineering Mathematics I',4,10,'O','PASS'),(166,7,2,'COMMON-S2-01','Engineering Mathematics II',4,8,'A','PASS'),(167,7,3,'ECE-S3-01','Engineering Mathematics III',4,6,'B','PASS'),(168,7,4,'ECE-S4-01','Probability and Statistics',4,9,'A+','PASS'),(169,8,1,'COMMON-S1-06','Physics Laboratory',2,7,'B+','PASS'),(170,8,2,'COMMON-S2-06','Engineering Practices Laboratory',2,10,'O','PASS'),(171,8,3,'ECE-S3-06','Digital Electronics Laboratory',2,8,'A','PASS'),(172,8,4,'ECE-S4-06','Microprocessor Laboratory',2,6,'B','PASS'),(173,8,1,'COMMON-S1-05','Programming Laboratory',2,10,'O','PASS'),(174,8,2,'COMMON-S2-05','Data Structures Laboratory',2,8,'A','PASS'),(175,8,3,'ECE-S3-05','Electronic Devices Laboratory',2,6,'B','PASS'),(176,8,4,'ECE-S4-05','Communication Systems Laboratory',2,9,'A+','PASS'),(177,8,1,'COMMON-S1-04','Communicative English',3,8,'A','PASS'),(178,8,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,6,'B','PASS'),(179,8,3,'ECE-S3-04','Signals and Systems',3,9,'A+','PASS'),(180,8,4,'ECE-S4-04','Electromagnetic Fields',3,7,'B+','PASS'),(181,8,1,'COMMON-S1-03','Problem Solving and Python Programming',3,6,'B','PASS'),(182,8,2,'COMMON-S2-03','Data Structures',3,9,'A+','PASS'),(183,8,3,'ECE-S3-03','Digital Electronics',3,7,'B+','PASS'),(184,8,4,'ECE-S4-03','Microprocessors and Microcontrollers',3,10,'O','PASS'),(185,8,1,'COMMON-S1-02','Engineering Physics',4,9,'A+','PASS'),(186,8,2,'COMMON-S2-02','Engineering Chemistry',4,7,'B+','PASS'),(187,8,3,'ECE-S3-02','Electronic Devices and Circuits',4,10,'O','PASS'),(188,8,4,'ECE-S4-02','Analog Communication',4,8,'A','PASS'),(189,8,1,'COMMON-S1-01','Engineering Mathematics I',4,7,'B+','PASS'),(190,8,2,'COMMON-S2-01','Engineering Mathematics II',4,10,'O','PASS'),(191,8,3,'ECE-S3-01','Engineering Mathematics III',4,8,'A','PASS'),(192,8,4,'ECE-S4-01','Probability and Statistics',4,6,'B','PASS'),(193,9,1,'COMMON-S1-06','Physics Laboratory',2,9,'A+','PASS'),(194,9,2,'COMMON-S2-06','Engineering Practices Laboratory',2,7,'B+','PASS'),(195,9,3,'ECE-S3-06','Digital Electronics Laboratory',2,10,'O','PASS'),(196,9,4,'ECE-S4-06','Microprocessor Laboratory',2,8,'A','PASS'),(197,9,1,'COMMON-S1-05','Programming Laboratory',2,7,'B+','PASS'),(198,9,2,'COMMON-S2-05','Data Structures Laboratory',2,10,'O','PASS'),(199,9,3,'ECE-S3-05','Electronic Devices Laboratory',2,8,'A','PASS'),(200,9,4,'ECE-S4-05','Communication Systems Laboratory',2,6,'B','PASS'),(201,9,1,'COMMON-S1-04','Communicative English',3,10,'O','PASS'),(202,9,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,8,'A','PASS'),(203,9,3,'ECE-S3-04','Signals and Systems',3,6,'B','PASS'),(204,9,4,'ECE-S4-04','Electromagnetic Fields',3,9,'A+','PASS'),(205,9,1,'COMMON-S1-03','Problem Solving and Python Programming',3,8,'A','PASS'),(206,9,2,'COMMON-S2-03','Data Structures',3,6,'B','PASS'),(207,9,3,'ECE-S3-03','Digital Electronics',3,9,'A+','PASS'),(208,9,4,'ECE-S4-03','Microprocessors and Microcontrollers',3,7,'B+','PASS'),(209,9,1,'COMMON-S1-02','Engineering Physics',4,6,'B','PASS'),(210,9,2,'COMMON-S2-02','Engineering Chemistry',4,9,'A+','PASS'),(211,9,3,'ECE-S3-02','Electronic Devices and Circuits',4,7,'B+','PASS'),(212,9,4,'ECE-S4-02','Analog Communication',4,10,'O','PASS'),(213,9,1,'COMMON-S1-01','Engineering Mathematics I',4,9,'A+','PASS'),(214,9,2,'COMMON-S2-01','Engineering Mathematics II',4,7,'B+','PASS'),(215,9,3,'ECE-S3-01','Engineering Mathematics III',4,10,'O','PASS'),(216,9,4,'ECE-S4-01','Probability and Statistics',4,8,'A','PASS'),(217,10,1,'COMMON-S1-06','Physics Laboratory',2,6,'B','PASS'),(218,10,2,'COMMON-S2-06','Engineering Practices Laboratory',2,9,'A+','PASS'),(219,10,3,'EEE-S3-06','Electronic Devices Laboratory',2,7,'B+','PASS'),(220,10,4,'EEE-S4-06','Control Systems Laboratory',2,10,'O','PASS'),(221,10,1,'COMMON-S1-05','Programming Laboratory',2,9,'A+','PASS'),(222,10,2,'COMMON-S2-05','Data Structures Laboratory',2,7,'B+','PASS'),(223,10,3,'EEE-S3-05','Electrical Machines Laboratory I',2,10,'O','PASS'),(224,10,4,'EEE-S4-05','Electrical Machines Laboratory II',2,8,'A','PASS'),(225,10,1,'COMMON-S1-04','Communicative English',3,7,'B+','PASS'),(226,10,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,10,'O','PASS'),(227,10,3,'EEE-S3-04','Circuit Theory',3,8,'A','PASS'),(228,10,4,'EEE-S4-04','Control Systems',3,6,'B','PASS'),(229,10,1,'COMMON-S1-03','Problem Solving and Python Programming',3,10,'O','PASS'),(230,10,2,'COMMON-S2-03','Data Structures',3,8,'A','PASS'),(231,10,3,'EEE-S3-03','Electronic Devices',3,6,'B','PASS'),(232,10,4,'EEE-S4-03','Power Systems I',3,9,'A+','PASS'),(233,10,1,'COMMON-S1-02','Engineering Physics',4,8,'A','PASS'),(234,10,2,'COMMON-S2-02','Engineering Chemistry',4,6,'B','PASS'),(235,10,3,'EEE-S3-02','Electrical Machines I',4,9,'A+','PASS'),(236,10,4,'EEE-S4-02','Electrical Machines II',4,7,'B+','PASS'),(237,10,1,'COMMON-S1-01','Engineering Mathematics I',4,6,'B','PASS'),(238,10,2,'COMMON-S2-01','Engineering Mathematics II',4,9,'A+','PASS'),(239,10,3,'EEE-S3-01','Engineering Mathematics III',4,7,'B+','PASS'),(240,10,4,'EEE-S4-01','Probability and Statistics',4,10,'O','PASS'),(241,11,1,'COMMON-S1-06','Physics Laboratory',2,8,'A','PASS'),(242,11,2,'COMMON-S2-06','Engineering Practices Laboratory',2,6,'B','PASS'),(243,11,3,'EEE-S3-06','Electronic Devices Laboratory',2,9,'A+','PASS'),(244,11,4,'EEE-S4-06','Control Systems Laboratory',2,7,'B+','PASS'),(245,11,1,'COMMON-S1-05','Programming Laboratory',2,6,'B','PASS'),(246,11,2,'COMMON-S2-05','Data Structures Laboratory',2,9,'A+','PASS'),(247,11,3,'EEE-S3-05','Electrical Machines Laboratory I',2,7,'B+','PASS'),(248,11,4,'EEE-S4-05','Electrical Machines Laboratory II',2,10,'O','PASS'),(249,11,1,'COMMON-S1-04','Communicative English',3,9,'A+','PASS'),(250,11,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,7,'B+','PASS'),(251,11,3,'EEE-S3-04','Circuit Theory',3,10,'O','PASS'),(252,11,4,'EEE-S4-04','Control Systems',3,8,'A','PASS'),(253,11,1,'COMMON-S1-03','Problem Solving and Python Programming',3,7,'B+','PASS'),(254,11,2,'COMMON-S2-03','Data Structures',3,10,'O','PASS'),(255,11,3,'EEE-S3-03','Electronic Devices',3,8,'A','PASS'),(256,11,4,'EEE-S4-03','Power Systems I',3,6,'B','PASS'),(257,11,1,'COMMON-S1-02','Engineering Physics',4,10,'O','PASS'),(258,11,2,'COMMON-S2-02','Engineering Chemistry',4,8,'A','PASS'),(259,11,3,'EEE-S3-02','Electrical Machines I',4,6,'B','PASS'),(260,11,4,'EEE-S4-02','Electrical Machines II',4,9,'A+','PASS'),(261,11,1,'COMMON-S1-01','Engineering Mathematics I',4,8,'A','PASS'),(262,11,2,'COMMON-S2-01','Engineering Mathematics II',4,6,'B','PASS'),(263,11,3,'EEE-S3-01','Engineering Mathematics III',4,9,'A+','PASS'),(264,11,4,'EEE-S4-01','Probability and Statistics',4,7,'B+','PASS'),(265,12,1,'COMMON-S1-06','Physics Laboratory',2,10,'O','PASS'),(266,12,2,'COMMON-S2-06','Engineering Practices Laboratory',2,8,'A','PASS'),(267,12,3,'AML-S3-06','Data Structures Laboratory',2,6,'B','PASS'),(268,12,4,'AML-S4-06','Database Management Systems Laboratory',2,9,'A+','PASS'),(269,12,1,'COMMON-S1-05','Programming Laboratory',2,8,'A','PASS'),(270,12,2,'COMMON-S2-05','Data Structures Laboratory',2,6,'B','PASS'),(271,12,3,'AML-S3-05','Python for AI Laboratory',2,9,'A+','PASS'),(272,12,4,'AML-S4-05','Machine Learning Laboratory',2,7,'B+','PASS'),(273,12,1,'COMMON-S1-04','Communicative English',3,6,'B','PASS'),(274,12,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,9,'A+','PASS'),(275,12,3,'AML-S3-04','Probability for Machine Learning',3,7,'B+','PASS'),(276,12,4,'AML-S4-04','Design and Analysis of Algorithms',3,10,'O','PASS'),(277,12,1,'COMMON-S1-03','Problem Solving and Python Programming',3,9,'A+','PASS'),(278,12,2,'COMMON-S2-03','Data Structures',3,7,'B+','PASS'),(279,12,3,'AML-S3-03','Data Structures and Algorithms',3,10,'O','PASS'),(280,12,4,'AML-S4-03','Database Management Systems',3,8,'A','PASS'),(281,12,1,'COMMON-S1-02','Engineering Physics',4,7,'B+','PASS'),(282,12,2,'COMMON-S2-02','Engineering Chemistry',4,10,'O','PASS'),(283,12,3,'AML-S3-02','Python for Artificial Intelligence',4,8,'A','PASS'),(284,12,4,'AML-S4-02','Machine Learning',4,6,'B','PASS'),(285,12,1,'COMMON-S1-01','Engineering Mathematics I',4,10,'O','PASS'),(286,12,2,'COMMON-S2-01','Engineering Mathematics II',4,8,'A','PASS'),(287,12,3,'AML-S3-01','Discrete Mathematics',4,6,'B','PASS'),(288,12,4,'AML-S4-01','Probability and Statistics',4,9,'A+','PASS'),(289,13,1,'COMMON-S1-06','Physics Laboratory',2,7,'B+','PASS'),(290,13,2,'COMMON-S2-06','Engineering Practices Laboratory',2,10,'O','PASS'),(291,13,3,'AML-S3-06','Data Structures Laboratory',2,8,'A','PASS'),(292,13,4,'AML-S4-06','Database Management Systems Laboratory',2,6,'B','PASS'),(293,13,1,'COMMON-S1-05','Programming Laboratory',2,10,'O','PASS'),(294,13,2,'COMMON-S2-05','Data Structures Laboratory',2,8,'A','PASS'),(295,13,3,'AML-S3-05','Python for AI Laboratory',2,6,'B','PASS'),(296,13,4,'AML-S4-05','Machine Learning Laboratory',2,9,'A+','PASS'),(297,13,1,'COMMON-S1-04','Communicative English',3,8,'A','PASS'),(298,13,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,6,'B','PASS'),(299,13,3,'AML-S3-04','Probability for Machine Learning',3,9,'A+','PASS'),(300,13,4,'AML-S4-04','Design and Analysis of Algorithms',3,7,'B+','PASS'),(301,13,1,'COMMON-S1-03','Problem Solving and Python Programming',3,6,'B','PASS'),(302,13,2,'COMMON-S2-03','Data Structures',3,9,'A+','PASS'),(303,13,3,'AML-S3-03','Data Structures and Algorithms',3,7,'B+','PASS'),(304,13,4,'AML-S4-03','Database Management Systems',3,10,'O','PASS'),(305,13,1,'COMMON-S1-02','Engineering Physics',4,9,'A+','PASS'),(306,13,2,'COMMON-S2-02','Engineering Chemistry',4,7,'B+','PASS'),(307,13,3,'AML-S3-02','Python for Artificial Intelligence',4,10,'O','PASS'),(308,13,4,'AML-S4-02','Machine Learning',4,8,'A','PASS'),(309,13,1,'COMMON-S1-01','Engineering Mathematics I',4,7,'B+','PASS'),(310,13,2,'COMMON-S2-01','Engineering Mathematics II',4,10,'O','PASS'),(311,13,3,'AML-S3-01','Discrete Mathematics',4,8,'A','PASS'),(312,13,4,'AML-S4-01','Probability and Statistics',4,6,'B','PASS'),(313,14,1,'COMMON-S1-06','Physics Laboratory',2,9,'A+','PASS'),(314,14,2,'COMMON-S2-06','Engineering Practices Laboratory',2,7,'B+','PASS'),(315,14,3,'ADS-S3-06','Data Structures Laboratory',2,10,'O','PASS'),(316,14,4,'ADS-S4-06','Database Management Systems Laboratory',2,8,'A','PASS'),(317,14,1,'COMMON-S1-05','Programming Laboratory',2,7,'B+','PASS'),(318,14,2,'COMMON-S2-05','Data Structures Laboratory',2,10,'O','PASS'),(319,14,3,'ADS-S3-05','Python Data Science Laboratory',2,8,'A','PASS'),(320,14,4,'ADS-S4-05','Data Analytics Laboratory',2,6,'B','PASS'),(321,14,1,'COMMON-S1-04','Communicative English',3,10,'O','PASS'),(322,14,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,8,'A','PASS'),(323,14,3,'ADS-S3-04','Statistics for Data Science',3,6,'B','PASS'),(324,14,4,'ADS-S4-04','Design and Analysis of Algorithms',3,9,'A+','PASS'),(325,14,1,'COMMON-S1-03','Problem Solving and Python Programming',3,8,'A','PASS'),(326,14,2,'COMMON-S2-03','Data Structures',3,6,'B','PASS'),(327,14,3,'ADS-S3-03','Data Structures',3,9,'A+','PASS'),(328,14,4,'ADS-S4-03','Data Analytics',3,7,'B+','PASS'),(329,14,1,'COMMON-S1-02','Engineering Physics',4,6,'B','PASS'),(330,14,2,'COMMON-S2-02','Engineering Chemistry',4,9,'A+','PASS'),(331,14,3,'ADS-S3-02','Python Programming',4,7,'B+','PASS'),(332,14,4,'ADS-S4-02','Database Management Systems',4,10,'O','PASS'),(333,14,1,'COMMON-S1-01','Engineering Mathematics I',4,9,'A+','PASS'),(334,14,2,'COMMON-S2-01','Engineering Mathematics II',4,7,'B+','PASS'),(335,14,3,'ADS-S3-01','Discrete Mathematics',4,10,'O','PASS'),(336,14,4,'ADS-S4-01','Probability and Statistics',4,8,'A','PASS'),(337,15,1,'COMMON-S1-06','Physics Laboratory',2,6,'B','PASS'),(338,15,2,'COMMON-S2-06','Engineering Practices Laboratory',2,9,'A+','PASS'),(339,15,3,'ADS-S3-06','Data Structures Laboratory',2,7,'B+','PASS'),(340,15,4,'ADS-S4-06','Database Management Systems Laboratory',2,10,'O','PASS'),(341,15,1,'COMMON-S1-05','Programming Laboratory',2,9,'A+','PASS'),(342,15,2,'COMMON-S2-05','Data Structures Laboratory',2,7,'B+','PASS'),(343,15,3,'ADS-S3-05','Python Data Science Laboratory',2,10,'O','PASS'),(344,15,4,'ADS-S4-05','Data Analytics Laboratory',2,8,'A','PASS'),(345,15,1,'COMMON-S1-04','Communicative English',3,7,'B+','PASS'),(346,15,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,10,'O','PASS'),(347,15,3,'ADS-S3-04','Statistics for Data Science',3,8,'A','PASS'),(348,15,4,'ADS-S4-04','Design and Analysis of Algorithms',3,6,'B','PASS'),(349,15,1,'COMMON-S1-03','Problem Solving and Python Programming',3,10,'O','PASS'),(350,15,2,'COMMON-S2-03','Data Structures',3,8,'A','PASS'),(351,15,3,'ADS-S3-03','Data Structures',3,6,'B','PASS'),(352,15,4,'ADS-S4-03','Data Analytics',3,9,'A+','PASS'),(353,15,1,'COMMON-S1-02','Engineering Physics',4,8,'A','PASS'),(354,15,2,'COMMON-S2-02','Engineering Chemistry',4,6,'B','PASS'),(355,15,3,'ADS-S3-02','Python Programming',4,9,'A+','PASS'),(356,15,4,'ADS-S4-02','Database Management Systems',4,7,'B+','PASS'),(357,15,1,'COMMON-S1-01','Engineering Mathematics I',4,6,'B','PASS'),(358,15,2,'COMMON-S2-01','Engineering Mathematics II',4,9,'A+','PASS'),(359,15,3,'ADS-S3-01','Discrete Mathematics',4,7,'B+','PASS'),(360,15,4,'ADS-S4-01','Probability and Statistics',4,10,'O','PASS'),(361,16,1,'COMMON-S1-06','Physics Laboratory',2,8,'A','PASS'),(362,16,2,'COMMON-S2-06','Engineering Practices Laboratory',2,6,'B','PASS'),(363,16,3,'MECH-S3-06','CAD Laboratory',2,9,'A+','PASS'),(364,16,4,'MECH-S4-06','Manufacturing Laboratory II',2,7,'B+','PASS'),(365,16,1,'COMMON-S1-05','Programming Laboratory',2,6,'B','PASS'),(366,16,2,'COMMON-S2-05','Data Structures Laboratory',2,9,'A+','PASS'),(367,16,3,'MECH-S3-05','Manufacturing Laboratory',2,7,'B+','PASS'),(368,16,4,'MECH-S4-05','Fluid Mechanics Laboratory',2,10,'O','PASS'),(369,16,1,'COMMON-S1-04','Communicative English',3,9,'A+','PASS'),(370,16,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,7,'B+','PASS'),(371,16,3,'MECH-S3-04','Manufacturing Technology I',3,10,'O','PASS'),(372,16,4,'MECH-S4-04','Manufacturing Technology II',3,8,'A','PASS'),(373,16,1,'COMMON-S1-03','Problem Solving and Python Programming',3,7,'B+','PASS'),(374,16,2,'COMMON-S2-03','Data Structures',3,10,'O','PASS'),(375,16,3,'MECH-S3-03','Strength of Materials',3,8,'A','PASS'),(376,16,4,'MECH-S4-03','Fluid Mechanics and Machinery',3,6,'B','PASS'),(377,16,1,'COMMON-S1-02','Engineering Physics',4,10,'O','PASS'),(378,16,2,'COMMON-S2-02','Engineering Chemistry',4,8,'A','PASS'),(379,16,3,'MECH-S3-02','Engineering Thermodynamics',4,6,'B','PASS'),(380,16,4,'MECH-S4-02','Kinematics of Machinery',4,9,'A+','PASS'),(381,16,1,'COMMON-S1-01','Engineering Mathematics I',4,8,'A','PASS'),(382,16,2,'COMMON-S2-01','Engineering Mathematics II',4,6,'B','PASS'),(383,16,3,'MECH-S3-01','Engineering Mathematics III',4,9,'A+','PASS'),(384,16,4,'MECH-S4-01','Probability and Statistics',4,7,'B+','PASS'),(385,17,1,'COMMON-S1-06','Physics Laboratory',2,10,'O','PASS'),(386,17,2,'COMMON-S2-06','Engineering Practices Laboratory',2,8,'A','PASS'),(387,17,3,'MECH-S3-06','CAD Laboratory',2,6,'B','PASS'),(388,17,4,'MECH-S4-06','Manufacturing Laboratory II',2,9,'A+','PASS'),(389,17,1,'COMMON-S1-05','Programming Laboratory',2,8,'A','PASS'),(390,17,2,'COMMON-S2-05','Data Structures Laboratory',2,6,'B','PASS'),(391,17,3,'MECH-S3-05','Manufacturing Laboratory',2,9,'A+','PASS'),(392,17,4,'MECH-S4-05','Fluid Mechanics Laboratory',2,7,'B+','PASS'),(393,17,1,'COMMON-S1-04','Communicative English',3,6,'B','PASS'),(394,17,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,9,'A+','PASS'),(395,17,3,'MECH-S3-04','Manufacturing Technology I',3,7,'B+','PASS'),(396,17,4,'MECH-S4-04','Manufacturing Technology II',3,10,'O','PASS'),(397,17,1,'COMMON-S1-03','Problem Solving and Python Programming',3,9,'A+','PASS'),(398,17,2,'COMMON-S2-03','Data Structures',3,7,'B+','PASS'),(399,17,3,'MECH-S3-03','Strength of Materials',3,10,'O','PASS'),(400,17,4,'MECH-S4-03','Fluid Mechanics and Machinery',3,8,'A','PASS'),(401,17,1,'COMMON-S1-02','Engineering Physics',4,7,'B+','PASS'),(402,17,2,'COMMON-S2-02','Engineering Chemistry',4,10,'O','PASS'),(403,17,3,'MECH-S3-02','Engineering Thermodynamics',4,8,'A','PASS'),(404,17,4,'MECH-S4-02','Kinematics of Machinery',4,6,'B','PASS'),(405,17,1,'COMMON-S1-01','Engineering Mathematics I',4,10,'O','PASS'),(406,17,2,'COMMON-S2-01','Engineering Mathematics II',4,8,'A','PASS'),(407,17,3,'MECH-S3-01','Engineering Mathematics III',4,6,'B','PASS'),(408,17,4,'MECH-S4-01','Probability and Statistics',4,9,'A+','PASS'),(409,18,1,'COMMON-S1-06','Physics Laboratory',2,7,'B+','PASS'),(410,18,2,'COMMON-S2-06','Engineering Practices Laboratory',2,10,'O','PASS'),(411,18,3,'CYBER-S3-06','Cyber Security Laboratory',2,8,'A','PASS'),(412,18,4,'CYBER-S4-06','Network Security Laboratory',2,6,'B','PASS'),(413,18,1,'COMMON-S1-05','Programming Laboratory',2,10,'O','PASS'),(414,18,2,'COMMON-S2-05','Data Structures Laboratory',2,8,'A','PASS'),(415,18,3,'CYBER-S3-05','Java Programming Laboratory',2,6,'B','PASS'),(416,18,4,'CYBER-S4-05','Database Management Systems Laboratory',2,9,'A+','PASS'),(417,18,1,'COMMON-S1-04','Communicative English',3,8,'A','PASS'),(418,18,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,6,'B','PASS'),(419,18,3,'CYBER-S3-04','Foundations of Cyber Security',3,9,'A+','PASS'),(420,18,4,'CYBER-S4-04','Cryptography and Network Security',3,7,'B+','PASS'),(421,18,1,'COMMON-S1-03','Problem Solving and Python Programming',3,6,'B','PASS'),(422,18,2,'COMMON-S2-03','Data Structures',3,9,'A+','PASS'),(423,18,3,'CYBER-S3-03','Data Structures and Algorithms',3,7,'B+','PASS'),(424,18,4,'CYBER-S4-03','Computer Networks',3,10,'O','PASS'),(425,18,1,'COMMON-S1-02','Engineering Physics',4,9,'A+','PASS'),(426,18,2,'COMMON-S2-02','Engineering Chemistry',4,7,'B+','PASS'),(427,18,3,'CYBER-S3-02','Java Programming',4,10,'O','PASS'),(428,18,4,'CYBER-S4-02','Database Management Systems',4,8,'A','PASS'),(429,18,1,'COMMON-S1-01','Engineering Mathematics I',4,7,'B+','PASS'),(430,18,2,'COMMON-S2-01','Engineering Mathematics II',4,10,'O','PASS'),(431,18,3,'CYBER-S3-01','Discrete Mathematics',4,8,'A','PASS'),(432,18,4,'CYBER-S4-01','Probability and Statistics',4,6,'B','PASS'),(433,19,1,'COMMON-S1-06','Physics Laboratory',2,9,'A+','PASS'),(434,19,2,'COMMON-S2-06','Engineering Practices Laboratory',2,7,'B+','PASS'),(435,19,3,'CYBER-S3-06','Cyber Security Laboratory',2,10,'O','PASS'),(436,19,4,'CYBER-S4-06','Network Security Laboratory',2,8,'A','PASS'),(437,19,1,'COMMON-S1-05','Programming Laboratory',2,7,'B+','PASS'),(438,19,2,'COMMON-S2-05','Data Structures Laboratory',2,10,'O','PASS'),(439,19,3,'CYBER-S3-05','Java Programming Laboratory',2,8,'A','PASS'),(440,19,4,'CYBER-S4-05','Database Management Systems Laboratory',2,6,'B','PASS'),(441,19,1,'COMMON-S1-04','Communicative English',3,10,'O','PASS'),(442,19,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,8,'A','PASS'),(443,19,3,'CYBER-S3-04','Foundations of Cyber Security',3,6,'B','PASS'),(444,19,4,'CYBER-S4-04','Cryptography and Network Security',3,9,'A+','PASS'),(445,19,1,'COMMON-S1-03','Problem Solving and Python Programming',3,8,'A','PASS'),(446,19,2,'COMMON-S2-03','Data Structures',3,6,'B','PASS'),(447,19,3,'CYBER-S3-03','Data Structures and Algorithms',3,9,'A+','PASS'),(448,19,4,'CYBER-S4-03','Computer Networks',3,7,'B+','PASS'),(449,19,1,'COMMON-S1-02','Engineering Physics',4,6,'B','PASS'),(450,19,2,'COMMON-S2-02','Engineering Chemistry',4,9,'A+','PASS'),(451,19,3,'CYBER-S3-02','Java Programming',4,7,'B+','PASS'),(452,19,4,'CYBER-S4-02','Database Management Systems',4,10,'O','PASS'),(453,19,1,'COMMON-S1-01','Engineering Mathematics I',4,9,'A+','PASS'),(454,19,2,'COMMON-S2-01','Engineering Mathematics II',4,7,'B+','PASS'),(455,19,3,'CYBER-S3-01','Discrete Mathematics',4,10,'O','PASS'),(456,19,4,'CYBER-S4-01','Probability and Statistics',4,8,'A','PASS'),(457,20,1,'COMMON-S1-06','Physics Laboratory',2,6,'B','PASS'),(458,20,2,'COMMON-S2-06','Engineering Practices Laboratory',2,9,'A+','PASS'),(459,20,3,'CYBER-S3-06','Cyber Security Laboratory',2,7,'B+','PASS'),(460,20,4,'CYBER-S4-06','Network Security Laboratory',2,10,'O','PASS'),(461,20,1,'COMMON-S1-05','Programming Laboratory',2,9,'A+','PASS'),(462,20,2,'COMMON-S2-05','Data Structures Laboratory',2,7,'B+','PASS'),(463,20,3,'CYBER-S3-05','Java Programming Laboratory',2,10,'O','PASS'),(464,20,4,'CYBER-S4-05','Database Management Systems Laboratory',2,8,'A','PASS'),(465,20,1,'COMMON-S1-04','Communicative English',3,7,'B+','PASS'),(466,20,2,'COMMON-S2-04','Basic Electrical and Electronics Engineering',3,10,'O','PASS'),(467,20,3,'CYBER-S3-04','Foundations of Cyber Security',3,8,'A','PASS'),(468,20,4,'CYBER-S4-04','Cryptography and Network Security',3,6,'B','PASS'),(469,20,1,'COMMON-S1-03','Problem Solving and Python Programming',3,10,'O','PASS'),(470,20,2,'COMMON-S2-03','Data Structures',3,8,'A','PASS'),(471,20,3,'CYBER-S3-03','Data Structures and Algorithms',3,6,'B','PASS'),(472,20,4,'CYBER-S4-03','Computer Networks',3,9,'A+','PASS'),(473,20,1,'COMMON-S1-02','Engineering Physics',4,8,'A','PASS'),(474,20,2,'COMMON-S2-02','Engineering Chemistry',4,6,'B','PASS'),(475,20,3,'CYBER-S3-02','Java Programming',4,9,'A+','PASS'),(476,20,4,'CYBER-S4-02','Database Management Systems',4,7,'B+','PASS'),(477,20,1,'COMMON-S1-01','Engineering Mathematics I',4,6,'B','PASS'),(478,20,2,'COMMON-S2-01','Engineering Mathematics II',4,9,'A+','PASS'),(479,20,3,'CYBER-S3-01','Discrete Mathematics',4,7,'B+','PASS'),(480,20,4,'CYBER-S4-01','Probability and Statistics',4,10,'O','PASS');
/*!40000 ALTER TABLE `previous_semester_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester_summary`
--

DROP TABLE IF EXISTS `semester_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester_summary` (
  `summary_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `semester` int NOT NULL,
  `exam_session` varchar(30) NOT NULL,
  `credit_registered` int NOT NULL,
  `credit_completed` int NOT NULL,
  `sgpa` decimal(4,2) NOT NULL,
  `cgpa` decimal(4,2) NOT NULL,
  PRIMARY KEY (`summary_id`),
  UNIQUE KEY `uq_student_semester_summary` (`student_id`,`semester`),
  CONSTRAINT `fk_semester_summary_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester_summary`
--

LOCK TABLES `semester_summary` WRITE;
/*!40000 ALTER TABLE `semester_summary` DISABLE KEYS */;
INSERT INTO `semester_summary` VALUES (1,1,1,'Nov-2024',18,18,8.22,8.22),(2,1,2,'May-2025',18,18,7.61,7.92),(3,1,3,'Nov-2025',18,18,8.11,7.98),(4,1,4,'May-2026',18,18,7.78,7.93),(5,2,1,'Nov-2024',18,18,8.28,8.28),(6,2,2,'May-2025',18,18,8.22,8.25),(7,2,3,'Nov-2025',18,18,7.61,8.04),(8,2,4,'May-2026',18,18,8.11,8.06),(9,3,1,'Nov-2024',18,18,7.78,7.78),(10,3,2,'May-2025',18,18,8.28,8.03),(11,3,3,'Nov-2025',18,18,8.22,8.09),(12,3,4,'May-2026',18,18,7.61,7.97),(13,4,1,'Nov-2024',18,18,8.11,8.11),(14,4,2,'May-2025',18,18,7.78,7.94),(15,4,3,'Nov-2025',18,18,8.28,8.06),(16,4,4,'May-2026',18,18,8.22,8.10),(17,5,1,'Nov-2024',18,18,7.61,7.61),(18,5,2,'May-2025',18,18,8.11,7.86),(19,5,3,'Nov-2025',18,18,7.78,7.83),(20,5,4,'May-2026',18,18,8.28,7.94),(21,6,1,'Nov-2024',18,18,8.22,8.22),(22,6,2,'May-2025',18,18,7.61,7.92),(23,6,3,'Nov-2025',18,18,8.11,7.98),(24,6,4,'May-2026',18,18,7.78,7.93),(25,7,1,'Nov-2024',18,18,8.28,8.28),(26,7,2,'May-2025',18,18,8.22,8.25),(27,7,3,'Nov-2025',18,18,7.61,8.04),(28,7,4,'May-2026',18,18,8.11,8.06),(29,8,1,'Nov-2024',18,18,7.78,7.78),(30,8,2,'May-2025',18,18,8.28,8.03),(31,8,3,'Nov-2025',18,18,8.22,8.09),(32,8,4,'May-2026',18,18,7.61,7.97),(33,9,1,'Nov-2024',18,18,8.11,8.11),(34,9,2,'May-2025',18,18,7.78,7.94),(35,9,3,'Nov-2025',18,18,8.28,8.06),(36,9,4,'May-2026',18,18,8.22,8.10),(37,10,1,'Nov-2024',18,18,7.61,7.61),(38,10,2,'May-2025',18,18,8.11,7.86),(39,10,3,'Nov-2025',18,18,7.78,7.83),(40,10,4,'May-2026',18,18,8.28,7.94),(41,11,1,'Nov-2024',18,18,8.22,8.22),(42,11,2,'May-2025',18,18,7.61,7.92),(43,11,3,'Nov-2025',18,18,8.11,7.98),(44,11,4,'May-2026',18,18,7.78,7.93),(45,12,1,'Nov-2024',18,18,8.28,8.28),(46,12,2,'May-2025',18,18,8.22,8.25),(47,12,3,'Nov-2025',18,18,7.61,8.04),(48,12,4,'May-2026',18,18,8.11,8.06),(49,13,1,'Nov-2024',18,18,7.78,7.78),(50,13,2,'May-2025',18,18,8.28,8.03),(51,13,3,'Nov-2025',18,18,8.22,8.09),(52,13,4,'May-2026',18,18,7.61,7.97),(53,14,1,'Nov-2024',18,18,8.11,8.11),(54,14,2,'May-2025',18,18,7.78,7.94),(55,14,3,'Nov-2025',18,18,8.28,8.06),(56,14,4,'May-2026',18,18,8.22,8.10),(57,15,1,'Nov-2024',18,18,7.61,7.61),(58,15,2,'May-2025',18,18,8.11,7.86),(59,15,3,'Nov-2025',18,18,7.78,7.83),(60,15,4,'May-2026',18,18,8.28,7.94),(61,16,1,'Nov-2024',18,18,8.22,8.22),(62,16,2,'May-2025',18,18,7.61,7.92),(63,16,3,'Nov-2025',18,18,8.11,7.98),(64,16,4,'May-2026',18,18,7.78,7.93),(65,17,1,'Nov-2024',18,18,8.28,8.28),(66,17,2,'May-2025',18,18,8.22,8.25),(67,17,3,'Nov-2025',18,18,7.61,8.04),(68,17,4,'May-2026',18,18,8.11,8.06),(69,18,1,'Nov-2024',18,18,7.78,7.78),(70,18,2,'May-2025',18,18,8.28,8.03),(71,18,3,'Nov-2025',18,18,8.22,8.09),(72,18,4,'May-2026',18,18,7.61,7.97),(73,19,1,'Nov-2024',18,18,8.11,8.11),(74,19,2,'May-2025',18,18,7.78,7.94),(75,19,3,'Nov-2025',18,18,8.28,8.06),(76,19,4,'May-2026',18,18,8.22,8.10),(77,20,1,'Nov-2024',18,18,7.61,7.61),(78,20,2,'May-2025',18,18,8.11,7.86),(79,20,3,'Nov-2025',18,18,7.78,7.83),(80,20,4,'May-2026',18,18,8.28,7.94);
/*!40000 ALTER TABLE `semester_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_login`
--

DROP TABLE IF EXISTS `student_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `student_login_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_login`
--

LOCK TABLES `student_login` WRITE;
/*!40000 ALTER TABLE `student_login` DISABLE KEYS */;
INSERT INTO `student_login` VALUES (1,1,'arun01','Arun@2026'),(2,2,'divya02','Divya@2026'),(3,3,'rahul03','Rahul@2026'),(4,4,'priya04','Priya@2026'),(5,5,'kavin05','Kavin@2026'),(6,6,'harini06','Harini@2026'),(7,7,'vijay07','Vijay@2026'),(8,8,'swetha08','Swetha@2026'),(9,9,'sanjay09','Sanjay@2026'),(10,10,'keerthana10','Keerthana@2026'),(11,11,'ajay11','Ajay@2026'),(12,12,'deepika12','Deepika@2026'),(13,13,'surya13','Surya@2026'),(14,14,'monisha14','Monisha@2026'),(15,15,'praveen15','Praveen@2026'),(16,16,'rohit16','Rohit@2026'),(17,17,'lakshmi17','Lakshmi@2026'),(18,18,'akash18','Akash@2026'),(19,19,'janani19','Janani@2026'),(20,20,'nithin20','Nithin@2026');
/*!40000 ALTER TABLE `student_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_semester_gpa`
--

DROP TABLE IF EXISTS `student_semester_gpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_semester_gpa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `semester` int NOT NULL,
  `gpa` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_student_semester` (`student_id`,`semester`),
  CONSTRAINT `fk_semester_gpa_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_semester_gpa`
--

LOCK TABLES `student_semester_gpa` WRITE;
/*!40000 ALTER TABLE `student_semester_gpa` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_semester_gpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `year` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Arun Kumar','CSE',3,'arun.cse@gmail.com','Male'),(2,'Divya S','CSE',3,'divya.cse@gmail.com','Female'),(3,'Rahul M','CSE',3,'rahul.cse@gmail.com','Male'),(4,'Priya R','IT',3,'priya.it@gmail.com','Female'),(5,'Kavin S','IT',3,'kavin.it@gmail.com','Male'),(6,'Harini P','IT',3,'harini.it@gmail.com','Female'),(7,'Vijay K','ECE',3,'vijay.ece@gmail.com','Male'),(8,'Swetha R','ECE',3,'swetha.ece@gmail.com','Female'),(9,'Sanjay M','ECE',3,'sanjay.ece@gmail.com','Male'),(10,'Keerthana S','EEE',3,'keerthana.eee@gmail.com','Female'),(11,'Ajay R','EEE',3,'ajay.eee@gmail.com','Male'),(12,'Deepika M','AML',3,'deepika.aml@gmail.com','Female'),(13,'Surya K','AML',3,'surya.aml@gmail.com','Male'),(14,'Monisha R','ADS',3,'monisha.ads@gmail.com','Female'),(15,'Praveen S','ADS',3,'praveen.ads@gmail.com','Male'),(16,'Rohit M','MECH',3,'rohit.mech@gmail.com','Male'),(17,'Lakshmi P','MECH',3,'lakshmi.mech@gmail.com','Female'),(18,'Akash R','CYBER',3,'akash.cyber@gmail.com','Male'),(19,'Janani S','CYBER',3,'janani.cyber@gmail.com','Female'),(20,'Nithin K','CYBER',3,'nithin.cyber@gmail.com','Male');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `max_marks` int NOT NULL DEFAULT '100',
  `pass_marks` int NOT NULL DEFAULT '40',
  PRIMARY KEY (`subject_id`),
  UNIQUE KEY `subject_code` (`subject_code`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'CSE301','Database Management Systems','CSE',100,40),(2,'CSE302','Java Programming','CSE',100,40),(3,'CSE303','Computer Networks','CSE',100,40),(4,'CSE304','Operating Systems','CSE',100,40),(5,'CSE305','Software Engineering','CSE',100,40),(6,'CSE306L','Java Programming Laboratory','CSE',100,50),(7,'IT301','Web Technology','IT',100,40),(8,'IT302','Database Management Systems','IT',100,40),(9,'IT303','Java Programming','IT',100,40),(10,'IT304','Computer Networks','IT',100,40),(11,'IT305','Information Security','IT',100,40),(12,'IT306L','Web Technology Laboratory','IT',100,50),(13,'ECE301','Digital Electronics','ECE',100,40),(14,'ECE302','Signals and Systems','ECE',100,40),(15,'ECE303','Microprocessors and Microcontrollers','ECE',100,40),(16,'ECE304','Communication Systems','ECE',100,40),(17,'ECE305','Electronic Circuits','ECE',100,40),(18,'ECE306L','Electronics Laboratory','ECE',100,50),(19,'EEE301','Electrical Machines','EEE',100,40),(20,'EEE302','Power Systems','EEE',100,40),(21,'EEE303','Control Systems','EEE',100,40),(22,'EEE304','Power Electronics','EEE',100,40),(23,'EEE305','Electrical Measurements','EEE',100,40),(24,'EEE306L','Electrical Machines Laboratory','EEE',100,50),(25,'AML301','Artificial Intelligence','AML',100,40),(26,'AML302','Machine Learning','AML',100,40),(27,'AML303','Deep Learning','AML',100,40),(28,'AML304','Natural Language Processing','AML',100,40),(29,'AML305','Data Mining','AML',100,40),(30,'AML306L','Machine Learning Laboratory','AML',100,50),(31,'ADS301','Data Structures and Algorithms','ADS',100,40),(32,'ADS302','Data Science','ADS',100,40),(33,'ADS303','Big Data Analytics','ADS',100,40),(34,'ADS304','Data Visualization','ADS',100,40),(35,'ADS305','Statistics for Data Science','ADS',100,40),(36,'ADS306L','Data Science Laboratory','ADS',100,50),(37,'MECH301','Thermodynamics','MECH',100,40),(38,'MECH302','Fluid Mechanics','MECH',100,40),(39,'MECH303','Manufacturing Technology','MECH',100,40),(40,'MECH304','Machine Design','MECH',100,40),(41,'MECH305','Heat Transfer','MECH',100,40),(42,'MECH306L','Manufacturing Laboratory','MECH',100,50),(43,'CYB301','Cyber Security','CYBER',100,40),(44,'CYB302','Network Security','CYBER',100,40),(45,'CYB303','Cryptography','CYBER',100,40),(46,'CYB304','Ethical Hacking','CYBER',100,40),(47,'CYB305','Digital Forensics','CYBER',100,40),(48,'CYB306L','Cyber Security Laboratory','CYBER',100,50);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'examination'
--

--
-- Dumping routines for database 'examination'
--
/*!50003 DROP FUNCTION IF EXISTS `calculate_final_percentage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_final_percentage`(
    p_student_id INT
) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN

    DECLARE final_percentage DECIMAL(5,2);

    SELECT AVG(
        (model_marks.marks_obtained * 0.40) +
        (semester_marks.marks_obtained * 0.60)
    )
    INTO final_percentage

    FROM subjects s

    JOIN exams model_exam
        ON s.subject_id = model_exam.subject_id
        AND model_exam.exam_name = 'Model Exam'

    JOIN marks model_marks
        ON model_exam.exam_id = model_marks.exam_id
        AND model_marks.student_id = p_student_id

    JOIN exams semester_exam
        ON s.subject_id = semester_exam.subject_id
        AND semester_exam.exam_name = 'Semester Exam'

    JOIN marks semester_marks
        ON semester_exam.exam_id = semester_marks.exam_id
        AND semester_marks.student_id = p_student_id;

    RETURN final_percentage;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calculate_percentage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_percentage`(
    p_student_id INT,
    p_exam_name VARCHAR(100)
) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN
    DECLARE total_obtained INT;
    DECLARE total_max INT;
    DECLARE percentage DECIMAL(5,2);

    SELECT
        COALESCE(SUM(m.marks_obtained), 0),
        COALESCE(SUM(s.max_marks), 0)
    INTO
        total_obtained,
        total_max
    FROM marks m
    JOIN exams e
        ON m.exam_id = e.exam_id
    JOIN subjects s
        ON e.subject_id = s.subject_id
    WHERE m.student_id = p_student_id
      AND e.exam_name = p_exam_name;

    IF total_max = 0 THEN
        SET percentage = 0;
    ELSE
        SET percentage = (total_obtained / total_max) * 100;
    END IF;

    RETURN percentage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calculate_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_total`(
    p_student_id INT,
    p_exam_name VARCHAR(100)
) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_mark INT;

    SELECT COALESCE(SUM(m.marks_obtained), 0)
    INTO total_mark
    FROM marks m
    JOIN exams e
        ON m.exam_id = e.exam_id
    WHERE m.student_id = p_student_id
      AND e.exam_name = p_exam_name;

    RETURN total_mark;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `enter_marks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `enter_marks`(
    IN p_student_id INT,
    IN p_exam_id INT,
    IN p_marks INT
)
BEGIN

    IF p_marks < 0 OR p_marks > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Marks must be between 0 and 100';

    ELSE

        INSERT INTO marks (
            student_id,
            exam_id,
            marks_obtained
        )
        VALUES (
            p_student_id,
            p_exam_id,
            p_marks
        )
        ON DUPLICATE KEY UPDATE
            marks_obtained = p_marks;

    END IF;

END ;;
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

-- Dump completed on 2026-10-19 16:31:51
