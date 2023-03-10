-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: drone
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `Fabricante` varchar(45) NOT NULL,
  `codigo Fabricante` varchar(60) NOT NULL,
  `fkcategria` varchar(60) NOT NULL,
  `Descricao` varchar(80) NOT NULL,
  `fkfabricante` varchar(60) NOT NULL,
  `fkdadostecnicosdrone` int(11) DEFAULT NULL,
  `pedidos_idPedidos` int(11) NOT NULL,
  `pedidos_enderecos_idEnderecos` int(11) unsigned NOT NULL,
  `pedidos_enderecos_fkcliente` int(11) NOT NULL,
  PRIMARY KEY (`idProdutos`),
  UNIQUE KEY `codigo Fabricante_UNIQUE` (`codigo Fabricante`),
  KEY `idcategorias_idx` (`fkcategria`),
  KEY `idfabricantes_idx` (`Fabricante`),
  KEY `nomefabricante_idx` (`Fabricante`),
  KEY `iddadostecnicosdrone_idx` (`fkdadostecnicosdrone`),
  KEY `fk_produtos_pedidos1_idx` (`pedidos_idPedidos`,`pedidos_enderecos_idEnderecos`,`pedidos_enderecos_fkcliente`),
  CONSTRAINT `fk_produtos_pedidos1` FOREIGN KEY (`pedidos_idPedidos`, `pedidos_enderecos_idEnderecos`, `pedidos_enderecos_fkcliente`) REFERENCES `pedidos` (`idPedidos`, `enderecos_idEnderecos`, `enderecos_fkcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idcategorias` FOREIGN KEY (`fkcategria`) REFERENCES `categorias` (`descri????o`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `iddadostecnicosdrone` FOREIGN KEY (`fkdadostecnicosdrone`) REFERENCES `dadostecnicosdrone` (`iddadostecnicosdrone`) ON UPDATE NO ACTION,
  CONSTRAINT `idfabricante` FOREIGN KEY (`Fabricante`) REFERENCES `fabricantes` (`Nomedofabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Para gravar os produtos e suas caracter??sticas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20 17:36:55
