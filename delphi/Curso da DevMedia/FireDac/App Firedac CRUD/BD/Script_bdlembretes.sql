-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.32-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bdlembretes
--

CREATE DATABASE IF NOT EXISTS bdlembretes;
USE bdlembretes;

--
-- Definition of table `lembrete`
--

DROP TABLE IF EXISTS `lembrete`;
CREATE TABLE `lembrete` (
  `IDLembrete` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `DataHora` datetime NOT NULL,
  PRIMARY KEY (`IDLembrete`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lembrete`
--

/*!40000 ALTER TABLE `lembrete` DISABLE KEYS */;
INSERT INTO `lembrete` (`IDLembrete`,`Titulo`,`Descricao`,`DataHora`) VALUES 
 (18,'Reunião Editorial 2017','Nesta reunião faremos o planejamento do mês de AGOSTO - .....','2017-08-15 15:24:00'),
 (57,'Reunião de gravação do Curso','Nesta reunião gravaremos o curso FireDAC com POO','2017-08-21 15:33:57'),
 (60,'Reunião com Joel','Nesta reunião definiremos o escopo do curso de .NET','2017-08-20 15:37:40'),
 (65,'Reunião com Estevão','Nesta reunião definiremos o escopo do curso de java','2017-08-21 13:27:00'),
 (66,'Reunião com Eduardo','Nesta reunião agendaremos uma visita do Eduardo','2017-08-20 13:27:00'),
 (67,'Reunião mensal','Nesta reunião definiremos as metas','2017-08-21 13:27:00'),
 (68,'Reunião com Fernando','Nesta reunião serão levantados os prontos do sistema','2017-08-21 13:27:00'),
 (69,'Reunião sobre as mudanças do site','Nesta reunião falaremos sobre o site','2017-08-21 13:27:00'),
 (72,'Reunião - gravando conteúdo FireDAC com POO','Estamos gravando neste momento o curso.','2017-08-22 08:39:00'),
 (73,'Reunião remarcada - Audiencia do site','Reunião será remarcada','2017-12-28 08:44:00'),
 (74,'Reunião - Planejamento Curso de FireDAC','Criar o planejamento do curso','2017-12-22 13:44:00');
/*!40000 ALTER TABLE `lembrete` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
