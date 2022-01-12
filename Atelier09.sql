-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: CandidatSimplon
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Candidat`
--

DROP TABLE IF EXISTS `Candidat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidat` (
  `id_candidat` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `lieuNaissance` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `region` int DEFAULT NULL,
  PRIMARY KEY (`id_candidat`),
  KEY `region` (`region`),
  CONSTRAINT `Candidat_ibfk_1` FOREIGN KEY (`region`) REFERENCES `Region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidat`
--

LOCK TABLES `Candidat` WRITE;
/*!40000 ALTER TABLE `Candidat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidat_Formation`
--

DROP TABLE IF EXISTS `Candidat_Formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidat_Formation` (
  `candFormId` int NOT NULL,
  `dateCandidature` date DEFAULT NULL,
  `candidatId` int NOT NULL,
  `formationId` int NOT NULL,
  PRIMARY KEY (`candFormId`),
  KEY `candidatId` (`candidatId`),
  KEY `formationId` (`formationId`),
  CONSTRAINT `Candidat_Formation_ibfk_1` FOREIGN KEY (`candidatId`) REFERENCES `Candidat` (`id_candidat`),
  CONSTRAINT `Candidat_Formation_ibfk_2` FOREIGN KEY (`formationId`) REFERENCES `Formation` (`id_formation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidat_Formation`
--

LOCK TABLES `Candidat_Formation` WRITE;
/*!40000 ALTER TABLE `Candidat_Formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidat_Formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Catalogue`
--

DROP TABLE IF EXISTS `Catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Catalogue` (
  `CataFormationId` int NOT NULL,
  `nomFormation` varchar(255) DEFAULT NULL,
  `FabId` int NOT NULL,
  PRIMARY KEY (`CataFormationId`),
  KEY `FabId` (`FabId`),
  CONSTRAINT `Catalogue_ibfk_1` FOREIGN KEY (`FabId`) REFERENCES `Fabrique` (`id_Fab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catalogue`
--

LOCK TABLES `Catalogue` WRITE;
/*!40000 ALTER TABLE `Catalogue` DISABLE KEYS */;
/*!40000 ALTER TABLE `Catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fabrique`
--

DROP TABLE IF EXISTS `Fabrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fabrique` (
  `id_Fab` int NOT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_Fab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fabrique`
--

LOCK TABLES `Fabrique` WRITE;
/*!40000 ALTER TABLE `Fabrique` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fabrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Formation`
--

DROP TABLE IF EXISTS `Formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Formation` (
  `id_formation` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duree` varchar(255) DEFAULT NULL,
  `prerequis` varchar(255) DEFAULT NULL,
  `referentiel` varchar(255) DEFAULT NULL,
  `typeFormation_id` int DEFAULT NULL,
  PRIMARY KEY (`id_formation`),
  KEY `typeFormation_id` (`typeFormation_id`),
  CONSTRAINT `Formation_ibfk_1` FOREIGN KEY (`typeFormation_id`) REFERENCES `TypeFormation` (`typeformationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Formation`
--

LOCK TABLES `Formation` WRITE;
/*!40000 ALTER TABLE `Formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Region` (
  `region_id` int NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypeFormation`
--

DROP TABLE IF EXISTS `TypeFormation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TypeFormation` (
  `typeformationId` int NOT NULL,
  `labelle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeformationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeFormation`
--

LOCK TABLES `TypeFormation` WRITE;
/*!40000 ALTER TABLE `TypeFormation` DISABLE KEYS */;
/*!40000 ALTER TABLE `TypeFormation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-12  8:12:12
