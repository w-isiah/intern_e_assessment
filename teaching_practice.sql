-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teaching_practice
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `aspect`
--

DROP TABLE IF EXISTS `aspect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspect` (
  `aspect_id` int(11) NOT NULL AUTO_INCREMENT,
  `aspect_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `competence` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`aspect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspect`
--

LOCK TABLES `aspect` WRITE;
/*!40000 ALTER TABLE `aspect` DISABLE KEYS */;
INSERT INTO `aspect` VALUES (13,'ASPECT 1','PLANNING AND PREPARATION FOR TEACHING  AND LEARNING ( 24 Marks)','Prepares and plans effectively for impactful, learner-centered teaching  ',NULL),(14,'ASPECT 2','LESSON DEVELOPMENT AND PRESENTATION ( 24Marks)','Designs and delivers clear, engaging, and learner-centered lessons effectively',NULL);
/*!40000 ALTER TABLE `aspect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_criteria`
--

DROP TABLE IF EXISTS `assessment_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_criteria` (
  `criteria_id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(255) DEFAULT NULL,
  `criteria_name` varchar(255) DEFAULT NULL,
  `aspect_id` int(11) NOT NULL,
  PRIMARY KEY (`criteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_criteria`
--

LOCK TABLES `assessment_criteria` WRITE;
/*!40000 ALTER TABLE `assessment_criteria` DISABLE KEYS */;
INSERT INTO `assessment_criteria` VALUES (46,'SN001','Keeps organized teaching practice files for easy reference',13),(47,'SN002','Prepares a structured scheme of work for effective teaching',13),(48,'SN2001','Introduces lessons engagingly, capturing learners attention, and setting clear outcomes  - set CBE Environment',14);
/*!40000 ALTER TABLE `assessment_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programmes`
--

DROP TABLE IF EXISTS `programmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programme_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programmes`
--

LOCK TABLES `programmes` WRITE;
/*!40000 ALTER TABLE `programmes` DISABLE KEYS */;
INSERT INTO `programmes` VALUES (1,'Computer Science','A programme that focuses on the fundamentals of computing, programming, and data structures.','2024-12-10 09:28:51','2024-12-10 09:28:51'),(3,'Business Administration 12','A programme that prepares students for management roles in business and organizations.','2024-12-10 09:28:51','2024-12-10 09:53:12'),(4,'IT','ICT','2024-12-10 10:03:40','2024-12-10 10:03:40'),(5,'Business Administration 12 55','mubz','2024-12-10 10:36:49','2024-12-13 11:56:48'),(6,'cccccc','ccccc','2024-12-11 17:19:37','2024-12-11 17:19:37'),(8,'Science','Technilogical ','2024-12-12 10:45:11','2024-12-12 10:45:11'),(10,'hjhjghjhg','dfgfhdg','2025-01-29 12:31:11','2025-01-29 12:31:11');
/*!40000 ALTER TABLE `programmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_category`
--

DROP TABLE IF EXISTS `school_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_category`
--

LOCK TABLES `school_category` WRITE;
/*!40000 ALTER TABLE `school_category` DISABLE KEYS */;
INSERT INTO `school_category` VALUES (1,'Main Campus','Main Campus','2025-01-30 01:29:54','2025-01-30 01:29:54'),(2,'DEC','DEC','2025-01-30 01:36:21','2025-01-30 01:36:21');
/*!40000 ALTER TABLE `school_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `aspect_id` int(11) DEFAULT NULL,
  `criteria_id` int(11) DEFAULT NULL,
  `assessor_id` int(11) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (3295,28,13,46,17,1,3.00,'2025-01-28 20:51:55','2025-01-28 20:51:55','Good'),(3296,28,13,47,17,1,3.00,'2025-01-28 20:51:55','2025-01-28 20:51:55','Good'),(3297,28,14,48,17,1,3.00,'2025-01-28 20:51:55','2025-01-28 20:51:55','Good'),(3298,28,13,46,15,1,2.00,'2025-01-28 21:18:18','2025-01-28 21:18:18','Good'),(3299,28,13,47,15,1,3.00,'2025-01-28 21:18:18','2025-01-28 21:18:18','Good'),(3300,28,14,48,15,1,2.00,'2025-01-28 21:18:18','2025-01-28 21:18:18','Good'),(3301,28,13,46,18,1,3.00,'2025-01-29 12:40:36','2025-01-29 12:40:36','Good'),(3302,28,13,47,18,1,3.00,'2025-01-29 12:40:36','2025-01-29 12:40:36','Good'),(3303,28,14,48,18,1,1.00,'2025-01-29 12:40:36','2025-01-29 12:40:36','Good'),(3304,28,13,46,19,1,2.00,'2025-01-29 12:41:13','2025-01-29 12:41:13','Good'),(3305,28,13,47,19,1,3.00,'2025-01-29 12:41:13','2025-01-29 12:41:13','Good'),(3306,28,14,48,19,1,3.00,'2025-01-29 12:41:13','2025-01-29 12:41:13','Good'),(3307,28,13,46,20,1,2.00,'2025-01-29 20:18:15','2025-01-29 20:18:15','Good'),(3308,28,13,47,20,1,3.00,'2025-01-29 20:18:15','2025-01-29 20:18:15','Good'),(3309,28,14,48,20,1,3.00,'2025-01-29 20:18:15','2025-01-29 20:18:15','Good'),(3310,28,13,46,22,1,3.00,'2025-01-29 20:18:42','2025-01-29 20:18:42','Good'),(3311,28,13,47,22,1,3.00,'2025-01-29 20:18:42','2025-01-29 20:18:42','Good'),(3312,28,14,48,22,1,3.00,'2025-01-29 20:18:42','2025-01-29 20:18:42','Good'),(3313,28,13,46,25,1,3.00,'2025-01-29 20:21:48','2025-01-29 20:21:48','Good'),(3314,28,13,47,25,1,3.00,'2025-01-29 20:21:48','2025-01-29 20:21:48','Good'),(3315,28,14,48,25,1,2.00,'2025-01-29 20:21:48','2025-01-29 20:21:48','Good'),(3316,28,13,46,24,1,3.00,'2025-01-29 20:22:08','2025-01-29 20:22:08','Good'),(3317,28,13,47,24,1,3.00,'2025-01-29 20:22:08','2025-01-29 20:22:08','Good'),(3318,28,14,48,24,1,3.00,'2025-01-29 20:22:08','2025-01-29 20:22:08','Good'),(3319,28,13,46,23,1,2.00,'2025-01-29 20:22:46','2025-01-29 20:22:46','Good'),(3320,28,13,47,23,1,3.00,'2025-01-29 20:22:46','2025-01-29 20:22:46','Good'),(3321,28,14,48,23,1,3.00,'2025-01-29 20:22:46','2025-01-29 20:22:46','Good'),(3322,28,13,46,26,1,2.00,'2025-01-29 20:24:47','2025-01-29 20:24:47','Good'),(3323,28,13,47,26,1,3.00,'2025-01-29 20:24:47','2025-01-29 20:24:47','Good'),(3324,28,14,48,26,1,3.00,'2025-01-29 20:24:47','2025-01-29 20:24:47','Good');
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Section A'),(2,'Section B');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_teacher` varchar(255) DEFAULT NULL,
  `programme_id` int(11) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `subtopic` varchar(255) DEFAULT NULL,
  `teaching_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (28,'Ssekajja Allan',1,'18/u/PE','one',1,'s3.A','lung_studies','Two Two','2025-01-28 23:57:00');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term` varchar(255) NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` VALUES (1,'Term_1 2025',NULL),(2,'Term_2 2024',NULL),(3,'Term_3 2025',NULL),(4,'Semester 1 Year 2025',NULL);
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','moderator','Dean','Head OF Department','School Practice Supervisor') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'zasa','pbkdf2:sha256:600000$8N7hFG2a049cumPV$f5114ae6c44462f68ef2bfa76106402d25e2d0b5db8a76374bf31930b081d138','admin'),(15,'mine','pbkdf2:sha256:600000$OGHXrBjdPzW1J1T8$d613b02af5a72edbb8c1f555d3acdc0dfb1724a6626745651ab2e96ffd3ecb78','School Practice Supervisor'),(16,'werr','pbkdf2:sha256:600000$C1HRu9mMNAZOMDUX$c26fbefb4523eeff038d4c7281bea261b3d4d1bbe86f3bb29629b128750d1544','School Practice Supervisor'),(17,'isaaya','pbkdf2:sha256:600000$uJOXqWI1bgLCWUDG$490452819832473c03ac4cf9db590624e25481487d20970cdca386e23e7900fe','Head OF Department'),(18,'lulu','pbkdf2:sha256:600000$QRxeKxLvOLkfpdc1$50ef15c38c40393ec637718d2d989aeadf3fc8edbc1979104f31be07571db6f6','School Practice Supervisor'),(19,'kaka','pbkdf2:sha256:600000$36NSSnBxijMXWw3N$16ed039985321b32a26a68c940e4038f2ff65c3ca11f506dfc45481890ed25e8','School Practice Supervisor'),(20,'kuku','pbkdf2:sha256:600000$77HFL4LCaLWyy70a$995c3ab29bce7156cf51025c3a5332da9d7c0870efbb764b14cae605a3a9ad5e','School Practice Supervisor'),(21,'richard','pbkdf2:sha256:600000$4eaFDUGwmT3uEpwD$f36bea0ce9e4ad8b365357c20a8f56ec5750c958e4ad8ac520a5f762366a228a','School Practice Supervisor'),(22,'jon','pbkdf2:sha256:600000$YOQXvsuhfAcUzebS$03cb3b93166837b262ba5aa9cbee88bd1b7fdeac8afed275d841577237c49a83','School Practice Supervisor'),(23,'tcy','pbkdf2:sha256:600000$bPtLha45hw473oP5$a0fd598c81ec0d6f747d9c6a0ac0b806b7c9227b550157a46e5237bd75a1c3f1','School Practice Supervisor'),(24,'lil','pbkdf2:sha256:600000$KgshqPituhUc5Atx$9c0a6505d8deedde377a1ecd95869c2205511d545e9697855c47af1aeed52c3d','School Practice Supervisor'),(25,'jorv','pbkdf2:sha256:600000$uYAkulXwQGu3MJAK$a4559cf7141f9a862063b35502a7bd3774a4584eacfa38964e93c5a174aa0794','School Practice Supervisor'),(26,'walusimbiisaaya','pbkdf2:sha256:600000$4PmnygCTkGVN3qWd$8d2149dc90b5147e4bf4ebaa1abcaedaf44f7249c616bc01209e5a85142a2d3e','School Practice Supervisor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_`
--

DROP TABLE IF EXISTS `users_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','moderator','Dean','Head OF Department','School Practice Supervisor') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_`
--

LOCK TABLES `users_` WRITE;
/*!40000 ALTER TABLE `users_` DISABLE KEYS */;
INSERT INTO `users_` VALUES (4,'zasa','1234','admin'),(15,'mine','1234','School Practice Supervisor'),(16,'werr','1234','School Practice Supervisor'),(17,'isaaya','1234','Head OF Department');
/*!40000 ALTER TABLE `users_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-30 12:47:00
