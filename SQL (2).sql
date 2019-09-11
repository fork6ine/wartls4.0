-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.13-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных wfdb
CREATE DATABASE IF NOT EXISTS `wfdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `wfdb`;

-- Дамп структуры для таблица wfdb.players
CREATE TABLE IF NOT EXISTS `players` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nickname` tinytext COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `Gender` tinytext COLLATE utf8mb4_bin NOT NULL DEFAULT 'male',
  `Height` tinyint(4) NOT NULL DEFAULT 1,
  `Fatness` tinyint(4) NOT NULL DEFAULT 0,
  `Head` tinytext COLLATE utf8mb4_bin NOT NULL DEFAULT 'default_head_04',
  `CurrentClass` tinyint(4) NOT NULL DEFAULT 0,
  `Experience` int(11) NOT NULL DEFAULT 0,
  `BannerBadge` int(11) NOT NULL DEFAULT 0,
  `BannerStripe` int(11) NOT NULL DEFAULT 0,
  `BannerMark` int(11) NOT NULL DEFAULT 0,
  `CryMoney` int(11) NOT NULL DEFAULT 0,
  `CrownMoney` int(11) NOT NULL DEFAULT 0,
  `GameMoney` int(11) NOT NULL DEFAULT 0,
  `Progression` text COLLATE utf8mb4_bin DEFAULT NULL,
  `Sponsors` text COLLATE utf8mb4_bin DEFAULT NULL,
  `Settings` text COLLATE utf8mb4_bin DEFAULT NULL,
  `Items` text COLLATE utf8mb4_bin DEFAULT '<items/>',
  `Achievements` text COLLATE utf8mb4_bin DEFAULT '<achievement/>',
  `BoxChance` float DEFAULT 4.25,
  `LoginCurrentSteak` tinyint(4) DEFAULT 0,
  `LoginCurrentBonus` tinyint(4) DEFAULT 0,
  `LoginBonusLastReceive` datetime DEFAULT '1970-01-01 00:00:00',
  `Notifications` longtext COLLATE utf8mb4_bin DEFAULT '<notifications/>',
  `Friends` mediumtext COLLATE utf8mb4_bin NOT NULL DEFAULT '<friends/>',
  `LastSave` datetime NOT NULL DEFAULT '1970-01-01 07:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица wfdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Token` tinytext COLLATE utf8mb4_bin NOT NULL,
  `Profile` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Экспортируемые данные не выделены.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
