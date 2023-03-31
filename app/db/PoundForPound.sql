-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 31 mrt 2023 om 9:22
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PoundForPound`
--
CREATE DATABASE IF NOT EXISTS `PoundForPound` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `PoundForPound`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PoundForPound`
--

DROP TABLE IF EXISTS `PoundForPound`;
CREATE TABLE IF NOT EXISTS `PoundForPound` (
  `Id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Naam` varchar(100) NOT NULL,
  `Rankering` smallint(100) NOT NULL,
  `Lengte` varchar(100) NOT NULL,
  `Gewicht` varchar(20) NOT NULL,
  `Leeftijd` tinyint(3) NOT NULL,
  `WinsByKnockout` tinyint(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `PoundForPound`
--

INSERT INTO `PoundForPound` (`Id`, `Naam`, `Rankering`, `Lengte`, `Gewicht`, `Leeftijd`, `WinsByKnockout`) VALUES
(1, 'Jon Jones', 1, '1.93', '112', 35, 10),
(2, 'Alexander Volkanovski', 2, '1.68', '66', 34, 12),
(3, 'Islam Makhachev', 3, '1.78', '70', 31, 4),
(4, 'Leon Edwards', 4, '1.83', '77', 31, 7),
(5, 'Israel Adesanya', 5, '1.93', '84', 33, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
