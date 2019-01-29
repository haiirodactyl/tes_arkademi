-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Jan 2019 pada 07.57
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hobby`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `personId` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`personId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`personId`, `name`) VALUES
(1, 'nurhadi'),
(2, 'aldo'),
(3, 'dodi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hobbies`
--

CREATE TABLE IF NOT EXISTS `hobbies` (
  `hobbyId` int(2) NOT NULL AUTO_INCREMENT,
  `personId` int(2) NOT NULL,
  `hobby` varchar(15) NOT NULL,
  PRIMARY KEY (`hobbyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `hobbies`
--

INSERT INTO `hobbies` (`hobbyId`, `personId`, `hobby`) VALUES
(1, 1, 'Bird Watching'),
(2, 1, 'Martial Arts'),
(3, 2, 'Hiking'),
(4, 1, 'Archery'),
(5, 2, 'Beekeeping'),
(6, 3, 'Book Restoratio');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vhobbies`
--
CREATE TABLE IF NOT EXISTS `vhobbies` (
`id` int(2)
,`name` varchar(15)
,`hobbies` text
);
-- --------------------------------------------------------

--
-- Struktur untuk view `vhobbies`
--
DROP TABLE IF EXISTS `vhobbies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vhobbies` AS select `categories`.`personId` AS `id`,`categories`.`name` AS `name`,group_concat(`hobbies`.`hobby` separator ',') AS `hobbies` from (`hobbies` join `categories` on((`hobbies`.`personId` = `categories`.`personId`))) group by `categories`.`personId`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
