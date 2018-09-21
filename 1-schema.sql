-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour travaux_pratique
CREATE DATABASE IF NOT EXISTS `travaux_pratique` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `travaux_pratique`;

-- Export de la structure de la table travaux_pratique. assement
CREATE TABLE IF NOT EXISTS `assement` (
  `id_student` int(11) DEFAULT NULL,
  `id module` int(11) DEFAULT NULL,
  `attempted` datetime NOT NULL,
  `passed` datetime DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`attempted`),
  KEY `key_student2` (`id_student`),
  KEY `key_module` (`id module`),
  CONSTRAINT `key_module` FOREIGN KEY (`id module`) REFERENCES `module` (`id`),
  CONSTRAINT `key_student2` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table travaux_pratique.assement : ~0 rows (environ)
DELETE FROM `assement`;
/*!40000 ALTER TABLE `assement` DISABLE KEYS */;
/*!40000 ALTER TABLE `assement` ENABLE KEYS */;

-- Export de la structure de la table travaux_pratique. enrolment
CREATE TABLE IF NOT EXISTS `enrolment` (
  `id_student` int(11) DEFAULT NULL,
  `id_year` int(11) DEFAULT NULL,
  `from` datetime NOT NULL,
  `to` datetime DEFAULT NULL,
  KEY `key_year` (`id_year`),
  KEY `key_student` (`id_student`),
  CONSTRAINT `key_student` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
  CONSTRAINT `key_year` FOREIGN KEY (`id_year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table travaux_pratique.enrolment : ~0 rows (environ)
DELETE FROM `enrolment`;
/*!40000 ALTER TABLE `enrolment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrolment` ENABLE KEYS */;

-- Export de la structure de la table travaux_pratique. module
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_year2` (`year`),
  CONSTRAINT `key_year2` FOREIGN KEY (`year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table travaux_pratique.module : ~0 rows (environ)
DELETE FROM `module`;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;

-- Export de la structure de la table travaux_pratique. student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL DEFAULT '0',
  `lastname` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table travaux_pratique.student : ~0 rows (environ)
DELETE FROM `student`;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Export de la structure de la table travaux_pratique. year
CREATE TABLE IF NOT EXISTS `year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table travaux_pratique.year : ~0 rows (environ)
DELETE FROM `year`;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
/*!40000 ALTER TABLE `year` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
