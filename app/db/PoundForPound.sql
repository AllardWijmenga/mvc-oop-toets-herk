-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 3 mrt 2023 om 9:22
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
  `Netto/Waarde` smallint(100) NOT NULL,
  `Land` varchar(100) NOT NULL,
  `Mobiel` varchar(20) NOT NULL,
  `Leeftijd` tinyint(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `PoundForPound`
--

INSERT INTO `PoundForPound` (`Id`, `Naam`, `Netto/Waarde`, `Land`, `Mobiel`, `Leeftijd`) VALUES
(1, 'Rihanna', 1400, 'Barbados', '+ 1246 2400 1862400', 35),
(2, 'Rihanna', 1400, 'Barbados', '+ 1246 2400 1862400', 35),
(3, 'Madonna', 575, 'Verenigde Staten', '+1 3425 18587', 64),
(4, 'Taylor Swift', 570, 'Verenigde Staten', '+1 5876 23512', 33),
(5, 'Beyonce', 420, 'Verenigde Staten', '+1 6794 908465', 41),
(6, 'Jennifer Lopez', 400, 'Verenigde Staten', '+1 3131 857345', 53);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
