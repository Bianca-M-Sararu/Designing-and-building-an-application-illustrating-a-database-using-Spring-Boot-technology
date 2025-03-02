-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: springspital
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `consultatii`
--

DROP TABLE IF EXISTS `consultatii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultatii` (
  `idconsultatie` bigint NOT NULL AUTO_INCREMENT,
  `dataconsultatie` date DEFAULT NULL,
  `diagnostic` varchar(255) NOT NULL,
  `medicament` varchar(255) DEFAULT NULL,
  `idmedic` bigint NOT NULL,
  `idpacient` bigint NOT NULL,
  PRIMARY KEY (`idconsultatie`),
  KEY `FK2xy4c9ggjdejngxpbu7k7oob4` (`idpacient`),
  KEY `FKp09ydsy73l9hekhpa0jatwrw5` (`idmedic`),
  CONSTRAINT `FK2xy4c9ggjdejngxpbu7k7oob4` FOREIGN KEY (`idpacient`) REFERENCES `pacienti` (`idpacient`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKp09ydsy73l9hekhpa0jatwrw5` FOREIGN KEY (`idmedic`) REFERENCES `medici` (`idmedic`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultatii`
--

LOCK TABLES `consultatii` WRITE;
/*!40000 ALTER TABLE `consultatii` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultatii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medici`
--

DROP TABLE IF EXISTS `medici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medici` (
  `idmedic` bigint NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) DEFAULT NULL,
  `sectie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmedic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medici`
--

LOCK TABLES `medici` WRITE;
/*!40000 ALTER TABLE `medici` DISABLE KEYS */;
/*!40000 ALTER TABLE `medici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacienti`
--

DROP TABLE IF EXISTS `pacienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacienti` (
  `idpacient` bigint NOT NULL AUTO_INCREMENT,
  `adresa` varchar(255) DEFAULT NULL,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpacient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacienti`
--

LOCK TABLES `pacienti` WRITE;
/*!40000 ALTER TABLE `pacienti` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacienti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 21:56:55
