CREATE DATABASE  IF NOT EXISTS `loja` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: mysql-servidor-de-aula2.czqeja1ck4lv.us-east-1.rds.amazonaws.com    Database: loja
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `CARRO`
--

DROP TABLE IF EXISTS `CARRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARRO` (
  `Idcarro` int NOT NULL AUTO_INCREMENT,
  `Id_modelo` int NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `Cor` varchar(45) NOT NULL,
  `Ano` int NOT NULL,
  `Km` int NOT NULL,
  `Placa` varchar(45) NOT NULL,
  `Quantidade` int NOT NULL,
  PRIMARY KEY (`Idcarro`),
  KEY `idmodelo_idx` (`Id_modelo`),
  CONSTRAINT `id_modelo` FOREIGN KEY (`Id_modelo`) REFERENCES `MODELO` (`Idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARRO`
--

LOCK TABLES `CARRO` WRITE;
/*!40000 ALTER TABLE `CARRO` DISABLE KEYS */;
INSERT INTO `CARRO` VALUES (1,12,150000.00,'Branco',2017,17000,'AXQ-1234',1),(2,13,180000.00,'Azul',2021,5000,'AAA-1111',1),(3,12,220000.00,'Preto',2022,0,'ABC-1234',1),(4,13,360000.00,'Preto',2022,0,'ABC-2222',1),(5,2,12000.00,'Vermelho',2004,290000,'QQQ-1111',1),(6,14,95000.00,'Azul',2018,50000,'BBB-1234',1),(7,15,115000.00,'Prata',2015,90000,'CCC-1111',1),(8,11,50000.00,'Verde',1994,999500,'CAB-4321',1),(9,14,90000.00,'Preto',2021,50000,'CBD-1234',1),(10,14,92000.00,'Prata',2020,40000,'CBC-1234',1),(11,14,105000.00,'Vermelho',2022,0,'CBB-1234',1),(12,13,240000.00,'Verde',2019,45000,'CBA-1234',1),(13,13,180000.00,'Amarelo',2015,80000,'CBE-1234',1),(14,16,91000.00,'Vermelho',2022,0,'ZYX-1234',1),(15,18,120000.00,'Branco',2022,0,'ZYX-4321',1),(16,12,92000.00,'Prata',2021,148000,'AAA-9876',1);
/*!40000 ALTER TABLE `CARRO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `Idcliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Sobrenome` varchar(50) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`Idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'Deivison','Silva','m','deivisonsilva@hotmail.com'),(2,'Shiryu','da Chuva','m','shiryu@cavaleirosdoszoodiacos.com'),(3,'Carolina','Liz','f','carol_liz@hotmail.com'),(4,'Drogo','Trones','m','drogogameoftrones@gmail.com'),(5,'Malévola','Disney','f','malevola@disney.com'),(6,'Guilherme','Patriota','m','guilherme@gmail.com'),(7,'Marina','Santos','f','marina@pop.com.br'),(8,'Deivison','Andrade','m','teste@teste.com.br');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMBUSTIVEL`
--

DROP TABLE IF EXISTS `COMBUSTIVEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMBUSTIVEL` (
  `Idcombustivel` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(45) NOT NULL,
  `Octanos` varchar(45) NOT NULL,
  `Origem` varchar(45) NOT NULL,
  PRIMARY KEY (`Idcombustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMBUSTIVEL`
--

LOCK TABLES `COMBUSTIVEL` WRITE;
/*!40000 ALTER TABLE `COMBUSTIVEL` DISABLE KEYS */;
INSERT INTO `COMBUSTIVEL` VALUES (1,'gasolina','87','dinossauro'),(2,'diesel','10','dinossauro'),(3,'etanol','110','cana de açúcar'),(4,'elétrico','100','usina elétrica'),(5,'flex','95','mista');
/*!40000 ALTER TABLE `COMBUSTIVEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `David`
--

DROP TABLE IF EXISTS `David`;
/*!50001 DROP VIEW IF EXISTS `David`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `David` AS SELECT 
 1 AS `vendedor`,
 1 AS `Cliente`,
 1 AS `carro`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `FABRICANTE`
--

DROP TABLE IF EXISTS `FABRICANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FABRICANTE` (
  `Idfabricante` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Id_pais` int NOT NULL,
  PRIMARY KEY (`Idfabricante`),
  KEY `id_pais_idx` (`Id_pais`),
  CONSTRAINT `id_pais` FOREIGN KEY (`Id_pais`) REFERENCES `PAIS` (`Idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FABRICANTE`
--

LOCK TABLES `FABRICANTE` WRITE;
/*!40000 ALTER TABLE `FABRICANTE` DISABLE KEYS */;
INSERT INTO `FABRICANTE` VALUES (2,'toyota',8),(5,'subaru',8),(6,'volkswagen',5),(7,'fiat',6),(8,'ford',1),(9,'chevrolet',1);
/*!40000 ALTER TABLE `FABRICANTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Guilherme`
--

DROP TABLE IF EXISTS `Guilherme`;
/*!50001 DROP VIEW IF EXISTS `Guilherme`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Guilherme` AS SELECT 
 1 AS `modelo`,
 1 AS `fabricante`,
 1 AS `pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Guilherme2`
--

DROP TABLE IF EXISTS `Guilherme2`;
/*!50001 DROP VIEW IF EXISTS `Guilherme2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Guilherme2` AS SELECT 
 1 AS `Modelo`,
 1 AS `Fabricante`,
 1 AS `País`,
 1 AS `Continente`,
 1 AS `Combustível`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Guilherme3`
--

DROP TABLE IF EXISTS `Guilherme3`;
/*!50001 DROP VIEW IF EXISTS `Guilherme3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Guilherme3` AS SELECT 
 1 AS `Modelo`,
 1 AS `Fabricante`,
 1 AS `Combustivel`,
 1 AS `Valor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `MODELO`
--

DROP TABLE IF EXISTS `MODELO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MODELO` (
  `Idmodelo` int NOT NULL AUTO_INCREMENT,
  `Modelo` varchar(45) NOT NULL,
  `Potencia` varchar(45) NOT NULL,
  `Tracao` varchar(45) NOT NULL,
  `Id_fabricante` int NOT NULL,
  `Id_combustivel` int NOT NULL,
  PRIMARY KEY (`Idmodelo`),
  KEY `id_fabricante_idx` (`Id_fabricante`),
  KEY `Id_combustivel_idx` (`Id_combustivel`),
  CONSTRAINT `Id_combustivel` FOREIGN KEY (`Id_combustivel`) REFERENCES `COMBUSTIVEL` (`Idcombustivel`),
  CONSTRAINT `Id_fabricante` FOREIGN KEY (`Id_fabricante`) REFERENCES `FABRICANTE` (`Idfabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODELO`
--

LOCK TABLES `MODELO` WRITE;
/*!40000 ALTER TABLE `MODELO` DISABLE KEYS */;
INSERT INTO `MODELO` VALUES (1,'marea turbo','160','dianteira',7,1),(2,'gol','75','dianteria',6,5),(3,'maverick v8','197','traseira',8,1),(4,'uno','77','dianteira',7,5),(5,'opala','171','traseira',9,1),(6,'fusca','46','traseira',6,1),(7,'s10','180','4x4',9,2),(8,'amarok','180','4x4',6,2),(9,'corvette','300','traseira',9,1),(10,'f1000','120','traseira',8,2),(11,'kombi ','130','traseira',6,1),(12,'prius','160','4x4',2,4),(13,'wrx','260','4x4',5,1),(14,'up','74','dianteira',6,5),(15,'voyage','94','dianteira',6,5),(16,'strada','85','dianteira',7,5),(17,'toro','188','4x4',7,2),(18,'toro','185','4x2',7,1);
/*!40000 ALTER TABLE `MODELO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAIS`
--

DROP TABLE IF EXISTS `PAIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAIS` (
  `Idpais` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Continente` varchar(45) NOT NULL,
  PRIMARY KEY (`Idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAIS`
--

LOCK TABLES `PAIS` WRITE;
/*!40000 ALTER TABLE `PAIS` DISABLE KEYS */;
INSERT INTO `PAIS` VALUES (1,'Estados Unidos','America'),(2,'Africa','Africa'),(3,'Russia','Asia'),(4,'Australia','Oceania'),(5,'Alemanha','Europa'),(6,'Itália','Europa'),(7,'Inglaterra','Europa'),(8,'Japão','Ásia');
/*!40000 ALTER TABLE `PAIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Rafael`
--

DROP TABLE IF EXISTS `Rafael`;
/*!50001 DROP VIEW IF EXISTS `Rafael`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Rafael` AS SELECT 
 1 AS `Fabricante`,
 1 AS `Valor_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `VENDA`
--

DROP TABLE IF EXISTS `VENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDA` (
  `Idvenda` int NOT NULL AUTO_INCREMENT,
  `Id_vendedor` int NOT NULL,
  `Id_cliente` int NOT NULL,
  `Id_carro` int NOT NULL,
  `Preco_negociado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Idvenda`),
  KEY `id_vendedor_idx` (`Id_vendedor`),
  KEY `id_cliente_idx` (`Id_cliente`),
  KEY `id_carro_idx` (`Id_carro`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDA`
--

LOCK TABLES `VENDA` WRITE;
/*!40000 ALTER TABLE `VENDA` DISABLE KEYS */;
INSERT INTO `VENDA` VALUES (2,1,1,1,150000.00),(3,1,0,5,12000.00),(4,2,2,2,180000.00),(5,2,1,3,220000.00),(6,3,4,6,95000.00),(7,1,3,7,115000.00),(8,2,3,12,240000.00),(9,1,4,11,105000.00),(10,3,4,10,92000.00),(11,3,4,9,90000.00),(12,2,4,13,180000.00);
/*!40000 ALTER TABLE `VENDA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDEDOR`
--

DROP TABLE IF EXISTS `VENDEDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDEDOR` (
  `Idvendedor` int NOT NULL AUTO_INCREMENT,
  `Nome` text NOT NULL,
  `Sobrenome` varchar(50) NOT NULL,
  `Cpf` varchar(11) NOT NULL,
  `Telefone` text NOT NULL,
  `Endereco` text NOT NULL,
  `Valor_total_vendas` decimal(20,2) NOT NULL,
  PRIMARY KEY (`Idvendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDEDOR`
--

LOCK TABLES `VENDEDOR` WRITE;
/*!40000 ALTER TABLE `VENDEDOR` DISABLE KEYS */;
INSERT INTO `VENDEDOR` VALUES (1,'renan','renan','23216548798','(41) 99908-5524','Presidente prudente',382000.00),(2,'gg','gg','23215455798','(41) 96654-5524','Presidente dourado',820000.00),(3,'bruno','bruno','26615455798','(57) 85441-5524','Salvador dourado',277000.00);
/*!40000 ALTER TABLE `VENDEDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'loja'
--

--
-- Dumping routines for database 'loja'
--
/*!50003 DROP PROCEDURE IF EXISTS `CLIENTE_NOVO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `CLIENTE_NOVO`(
	IN nome_do_cliente VARCHAR(100),
    IN genero_do_novo_cliente VARCHAR(100),
    IN email_do_novo_cliente VARCHAR(100))
BEGIN
	INSERT INTO CLIENTE(Nome, Sexo, Email) VALUES (nome_do_cliente, genero_do_novo_cliente, email_do_novo_cliente);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `David` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `David`(
    IN nome_modelo	           VARCHAR(45),
    IN num_potencia	           VARCHAR(45),
    IN num_tracao	   	       VARCHAR(45),
    IN nome_fabricante         VARCHAR(45),
    IN tipo_de_combustivel     VARCHAR(45)
)
BEGIN
	SELECT Idfabricante INTO @idfabricante FROM FABRICANTE WHERE Nome=nome_fabricante;
    SELECT Idcombustivel INTO @idcombustivel FROM COMBUSTIVEL WHERE Tipo=tipo_de_combustivel;
    INSERT INTO MODELO(Modelo,Potencia,Tracao,id_fabricante,id_combustivel) 
    VALUES (nome_modelo, num_potencia,num_tracao,@idfabricante,@idcombustivel);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Guilherme` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Guilherme`(
	IN carro_placa VARCHAR(10), 
    IN nome_vendedor VARCHAR(50),
    IN sobrenome_vendedor VARCHAR(50),
    IN nome_cliente VARCHAR(50),
    IN sobrenome_cliente VARCHAR(50))
BEGIN
	SELECT idcarro, valor INTO @idcarro, @valor FROM CARRO WHERE placa = carro_placa;
    SELECT idvendedor INTO @idvendedor FROM VENDEDOR WHERE nome = nome_vendedor AND sobrenome = sobrenome_vendedor;
    SELECT idcliente INTO @idcliente FROM CLIENTE WHERE nome = nome_cliente AND sobrenome = sobrenome_cliente;
	INSERT INTO VENDA(id_vendedor, id_cliente, id_carro, preco_negociado) VALUES (@idvendedor, @idcliente, @idcarro, @valor);
    UPDATE CARRO SET quantidade = quantidade - 1 WHERE idcarro = @idcarro;
    UPDATE VENDEDOR SET Valor_total_vendas = Valor_total_vendas + @valor WHERE idvendedor = @idvendedor;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Rafael` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Rafael`(
	IN nome_do_cliente VARCHAR(100),
    IN genero_do_novo_cliente VARCHAR(1),
    IN email_do_novo_cliente VARCHAR(100))
BEGIN
	INSERT INTO CLIENTE(Nome, Sexo, Email) VALUES (nome_do_cliente, genero_do_novo_cliente, email_do_novo_cliente);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `David`
--

/*!50001 DROP VIEW IF EXISTS `David`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `David` AS select `VENDEDOR`.`Nome` AS `vendedor`,`CLIENTE`.`Nome` AS `Cliente`,`CARRO`.`Valor` AS `carro` from (((`CARRO` join `VENDA` on((`CARRO`.`Idcarro` = `VENDA`.`Id_carro`))) left join `VENDEDOR` on((`VENDEDOR`.`Idvendedor` = `VENDA`.`Id_vendedor`))) left join `CLIENTE` on((`CLIENTE`.`Idcliente` = `VENDA`.`Id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Guilherme`
--

/*!50001 DROP VIEW IF EXISTS `Guilherme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Guilherme` AS select `MODELO`.`Modelo` AS `modelo`,`FABRICANTE`.`Nome` AS `fabricante`,`PAIS`.`Nome` AS `pais` from (((`CARRO` left join `MODELO` on((`MODELO`.`Idmodelo` = `CARRO`.`Id_modelo`))) left join `FABRICANTE` on((`FABRICANTE`.`Idfabricante` = `MODELO`.`Id_fabricante`))) left join `PAIS` on((`FABRICANTE`.`Id_pais` = `PAIS`.`Idpais`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Guilherme2`
--

/*!50001 DROP VIEW IF EXISTS `Guilherme2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Guilherme2` AS select `MODELO`.`Modelo` AS `Modelo`,`FABRICANTE`.`Nome` AS `Fabricante`,`PAIS`.`Nome` AS `País`,`PAIS`.`Continente` AS `Continente`,`COMBUSTIVEL`.`Tipo` AS `Combustível` from ((((`CARRO` left join `MODELO` on((`MODELO`.`Idmodelo` = `CARRO`.`Id_modelo`))) left join `FABRICANTE` on((`FABRICANTE`.`Idfabricante` = `MODELO`.`Id_fabricante`))) left join `PAIS` on((`FABRICANTE`.`Id_pais` = `PAIS`.`Idpais`))) left join `COMBUSTIVEL` on((`MODELO`.`Id_combustivel` = `COMBUSTIVEL`.`Idcombustivel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Guilherme3`
--

/*!50001 DROP VIEW IF EXISTS `Guilherme3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Guilherme3` AS select `MODELO`.`Modelo` AS `Modelo`,`FABRICANTE`.`Nome` AS `Fabricante`,`COMBUSTIVEL`.`Tipo` AS `Combustivel`,`CARRO`.`Valor` AS `Valor` from (`COMBUSTIVEL` left join (`FABRICANTE` left join (`CARRO` left join `MODELO` on((`CARRO`.`Id_modelo` = `MODELO`.`Idmodelo`))) on((`MODELO`.`Id_fabricante` = `FABRICANTE`.`Idfabricante`))) on((`MODELO`.`Id_combustivel` = `COMBUSTIVEL`.`Idcombustivel`))) where ((`CARRO`.`Valor` >= 90000) and (`CARRO`.`Valor` <= 120000) and (`CARRO`.`Quantidade` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Rafael`
--

/*!50001 DROP VIEW IF EXISTS `Rafael`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Rafael` AS select `FABRICANTE`.`Nome` AS `Fabricante`,sum(`CARRO`.`Valor`) AS `Valor_total` from ((`CARRO` left join `MODELO` on((`MODELO`.`Idmodelo` = `CARRO`.`Id_modelo`))) left join `FABRICANTE` on((`MODELO`.`Id_fabricante` = `FABRICANTE`.`Idfabricante`))) group by `MODELO`.`Id_fabricante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 15:59:20
