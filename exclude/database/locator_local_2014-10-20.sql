-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2014 at 11:30 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `locator_local`
--
CREATE DATABASE `locator_local` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `locator_local`;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `is_open_in_weekends` enum('N','Y') NOT NULL DEFAULT 'N',
  `has_support_desk` enum('N','Y') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=198 ;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `street`, `city`, `latitude`, `longitude`, `is_open_in_weekends`, `has_support_desk`) VALUES
(1, 'Geraardsbergsestraat 26', 'AALST', 50.934618, 4.037655, 'Y', 'Y'),
(2, 'Stationsstraat 110', 'AALTER', 51.089435, 3.447485, 'Y', 'Y'),
(3, 'Sint-Jacobsmarkt 102', 'ANTWERPEN', 51.219944, 4.414836, 'N', 'Y'),
(4, 'Nieuwstraat 27', 'ASSE', 50.911001, 4.194979, 'N', 'N'),
(5, 'Oude Zandstraat 79', 'BEVEREN-WAAS', 51.210907, 4.251498, 'Y', 'N'),
(6, 'Gistelsesteenweg 15A', 'BRUGGE', 51.21381, 2.92751, 'Y', 'N'),
(7, 'Tolpoortstraat 88', 'DEINZE', 50.979823, 3.530195, 'Y', 'N'),
(8, 'Noordlaan 1', 'DENDERMONDE', 51.033113, 4.103522, 'N', 'N'),
(9, 'Molenstraat 20', 'EEKLO', 51.185737, 3.563553, 'Y', 'N'),
(10, 'stationsstraat 57', 'GENK', 50.965845, 5.501657, 'N', 'N'),
(11, 'FRANCOIS LAURENTPLEIN 7', 'GENT', 51.050822, 3.727851, 'N', 'Y'),
(12, 'Koningin Astridlaan 21', 'HASSELT', 50.931277, 5.331956, 'N', 'N'),
(13, 'ZANDSTRAAT 99', 'HERENTALS', 51.177234, 4.830415, 'N', 'N'),
(14, 'Ch. de Napoleon 3', 'HUY', 50.51673, 5.235226, 'N', 'N'),
(15, 'Rijselsestraat 18', 'IEPER', 50.842071, 2.889175, 'N', 'N'),
(16, 'STATIONSSTRAAT 25', 'KAPELLEN', 51.314449, 4.430868, 'N', 'N'),
(17, 'Graanmarkt 20', 'KORTRIJK', 50.826988, 3.265281, 'N', 'N'),
(18, 'DIESTSESTRAAT 138 a/b', 'LEUVEN', 50.881295, 4.7092, 'Y', 'Y'),
(19, 'Boulevard de la Sauvenière 32', 'LIEGE', 50.64424, 5.568841, 'N', 'N'),
(20, 'STATIONSSTRAAT 40', 'LOKEREN', 51.106869, 3.987082, 'Y', 'Y'),
(21, 'Kloosterstraat 40', 'LOMMEL', 51.230153, 5.315717, 'N', 'N'),
(22, 'IJZERENLEEN 61', 'MECHELEN', 51.026041, 4.47817, 'N', 'N'),
(23, 'Statiestraat 64', 'MOL', 51.190352, 5.117566, 'N', 'N'),
(24, 'GRAANMARKT 47 bus2', 'NINOVE', 50.835403, 4.025254, 'N', 'Y'),
(25, 'Rue Du Cura 5', 'NIVELLES', 50.599892, 4.32764, 'N', 'Y'),
(26, 'ALFONS PIETERSLAAN 31', 'OOSTENDE', 51.226127, 2.914214, 'N', 'Y'),
(27, 'Westlaan 348', 'ROESELARE', 50.948747, 3.112198, 'N', 'Y'),
(28, 'BEVERSESTEENWEG 576', 'ROESELARE', 50.974578, 3.161673, 'N', 'N'),
(29, 'F Rooseveltplein 38', 'RONSE', 50.746352, 3.599596, 'N', 'N'),
(30, 'Parklaan 11 bus 12', 'SINT-NIKLAAS', 51.162012, 4.144396, 'Y', 'N'),
(31, 'IEPERSTRAAT 69', 'TIELT', 50.998178, 3.322276, 'N', 'N'),
(32, 'DE MERODELEI 84', 'TURNHOUT', 51.321824, 4.938776, 'N', 'N'),
(33, 'Stationslei 15', 'VILVOORDE', 50.925556, 4.429025, 'N', 'Y'),
(34, 'KEUKELDAM 10', 'WAREGEM', 50.886567, 3.433702, 'N', 'Y'),
(35, 'Nieuwstraat 37', 'WETTEREN', 51.002705, 3.880603, 'N', 'N'),
(36, 'Bijenstraat 6B', 'SINT-DENIJS-WESTREM', 51.021349, 3.681807, 'N', 'Y'),
(37, 'Torhoutsesteenweg 248', 'BRUGGE', 51.217158, 2.907176, 'N', 'N'),
(38, 'FRERE ORBANLAAN 146', 'GENT', 51.044498, 3.733836, 'Y', 'N'),
(39, 'Diestsesteenweg 54', 'LEUVEN', 50.883552, 4.718237, 'N', 'Y'),
(40, 'Smedenstraat 63', 'BRUGGE', 51.204932, 3.213688, 'Y', 'Y'),
(41, 'Burgstraat 107', 'GENT', 51.056277, 3.715831, 'N', 'Y'),
(42, 'LEOPOLDPLEIN 8', 'HASSELT', 50.927167, 5.336085, 'N', 'Y'),
(43, 'Mlk. Haiglaan 3', 'IEPER', 50.851419, 2.876247, 'N', 'N'),
(44, 'Veemarkt 53', 'KORTRIJK', 50.826763, 3.274643, 'N', 'Y'),
(45, 'BEVERESTRAAT 41', 'OUDENAARDE', 50.84979, 3.597981, 'N', 'N'),
(46, 'STATIONSDREEF 6B', 'ROESELARE', 50.94925, 3.129535, 'N', 'Y'),
(47, 'Parkstraat 19A', 'SINT-NIKLAAS', 51.165278, 4.139002, 'N', 'N'),
(48, 'CAPUCIENENLAAN 35', 'AALST', 50.93713, 4.027329, 'N', 'Y'),
(49, 'Frankrijklei 45', 'ANTWERPEN', 51.216522, 4.414793, 'N', 'N'),
(50, 'Hoefijzerlaan 4', 'BRUGGE', 51.206138, 3.216977, 'N', 'Y'),
(51, 'BABA NOVAC 26 A', 'CLUJ-NAPOCA', 50.940435, 3.12325, 'N', 'N'),
(52, 'Nieuwstraat 103', 'GEEL', 51.16336, 4.99572, 'N', 'N'),
(53, 'Graanmarkt 20', 'KORTRIJK', 50.826988, 3.265281, 'N', 'N'),
(54, 'Onze Lieve Vrouwstraat 105/107', 'MECHELEN', 51.092445, 4.510355, 'N', 'Y'),
(55, 'BEVERSESTEENWEG 24', 'ROESELARE', 50.950147, 3.131083, 'N', 'N'),
(56, 'Antwerpsesteenweg 534', 'SINT-AMANDSBERG', 51.064946, 3.752922, 'N', 'Y'),
(57, 'PLEZANTSTRAAT 66', 'SINT-NIKLAAS', 51.167098, 4.133429, 'N', 'Y'),
(58, 'Rue de Bruxelles 11', 'WAVRE', 50.717739, 4.61116, 'N', 'N'),
(59, 'GENTSESTRAAT 153', 'AALST', 50.937439, 4.027801, 'N', 'Y'),
(60, 'Lostraat 15', 'AALTER', 51.083429, 3.449521, 'N', 'Y'),
(61, 'Grote Markt 16', 'AARSCHOT', 50.983822, 4.836434, 'N', 'N'),
(62, 'Quellinstraat 14', 'ANTWERPEN', 51.217209, 4.416513, 'N', 'N'),
(63, 'BELPAIRESTRAAT 5', 'BERCHEM', 51.197998, 4.417017, 'Y', 'N'),
(64, 'ALBERT PANISSTRAAT 4A', 'BEVEREN-WAAS', 51.209533, 4.249064, 'N', 'Y'),
(65, 'Frans de Schutterlaan 40', 'BOOM', 51.089795, 4.364967, 'Y', 'N'),
(66, 'Boomstraat 67', 'BORNEM', 51.096835, 4.233179, 'N', 'N'),
(67, 'STATIONSPLEIN 8 bus 001', 'BRUGGE', 51.203317, 3.21002, 'N', 'Y'),
(68, 'E. Jacqmainlaan 126', 'BRUSSEL 1', 50.85518, 4.354547, 'N', 'N'),
(69, 'RUE WILLY ERNST 10 BUS 1D', 'CHARLEROI', 50.408075, 4.447824, 'Y', 'Y'),
(70, 'MARKT 41-43', 'DEINZE', 50.984988, 3.52659, 'N', 'Y'),
(71, 'Franz Courtensstraat 32', 'DENDERMONDE', 51.032232, 4.101477, 'N', 'N'),
(72, 'Markt 33', 'EEKLO', 51.184114, 3.56644, 'N', 'Y'),
(73, 'Keizer Karellaan 266', 'GANSHOREN', 50.871273, 4.302804, 'N', 'Y'),
(74, 'Pas 7', 'GEEL', 51.160406, 4.99, 'Y', 'Y'),
(75, 'SCHIETBOOMSTRAAT 5 bus 1', 'GENK', 50.966554, 5.499991, 'N', 'N'),
(76, 'Zuidstationstraat 5', 'GENT', 51.049008, 3.73319, 'N', 'N'),
(77, 'BRUGSESTEENWEG 92', 'GENT', 51.064236, 3.693646, 'N', 'N'),
(78, 'MOLENBORRE 19', 'HALLE', 50.734058, 4.234992, 'Y', 'Y'),
(79, 'GULDENSPORENPLEIN 1 bus 2', 'HASSELT', 50.929774, 5.344187, 'Y', 'Y'),
(80, 'BERGSTRAAT 174 BUS 2', 'HEIST-OP-DEN-BERG', 51.077368, 4.71672, 'N', 'Y'),
(81, 'FRAIKINSTRAAT 20/1', 'HERENTALS', 51.180463, 4.834828, 'N', 'Y'),
(82, 'Vrijheid 117', 'HOOGSTRATEN', 51.402575, 4.762166, 'N', 'N'),
(83, 'VREDELAAN 4', 'HOUTHALEN', 51.031338, 5.372616, 'N', 'N'),
(84, 'R. COLAERTPLEIN 17 A', 'IEPER', 50.849152, 2.878142, 'N', 'N'),
(85, 'NIEUWSTRAAT 2', 'IZEGEM', 50.918121, 3.213306, 'Y', 'Y'),
(86, 'STATIONSTRAAT 25', 'KAPELLEN', 51.314449, 4.430868, 'N', 'N'),
(87, 'Rijselsestraat 45 bus 2', 'KORTRIJK', 50.827244, 3.262387, 'Y', 'N'),
(88, 'BROELKAAI 1E', 'KORTRIJK', 50.829967, 3.264912, 'N', 'Y'),
(89, 'DIESTSESTRAAT 138 a/b', 'LEUVEN', 50.881295, 4.7092, 'Y', 'N'),
(90, 'Rue de la cathedrale 46', 'LIEGE', 50.64311, 5.576075, 'N', 'N'),
(91, 'Rue de la cathedrale 46', 'LIEGE', 50.64311, 5.576075, 'Y', 'N'),
(92, 'KERKSTRAAT 20', 'LOKEREN', 51.103508, 3.99322, 'N', 'N'),
(93, 'Pauwengraaf 88', 'MAASMECHELEN', 50.988577, 5.693055, 'N', 'Y'),
(94, 'Hoogstraat 77', 'MECHELEN', 51.022268, 4.474111, 'N', 'Y'),
(95, 'BRUGGESTRAAT 82', 'MENEN', 50.79861, 3.122592, 'N', 'N'),
(96, 'BREDABAAN 371', 'MERKSEM', 51.243946, 4.444495, 'N', 'N'),
(97, 'Graaf De Broquevillestraat 9', 'MOL', 51.185204, 5.116883, 'Y', 'Y'),
(98, 'Rue des Capucins 12/2', 'MONS', 50.450788, 3.949076, 'N', 'N'),
(99, 'Rue du Premier Lanciers 14', 'NAMUR', 50.466305, 4.871209, 'Y', 'N'),
(100, 'Kaardeloodstraat 19A', 'NINOVE', 50.834405, 4.021258, 'N', 'N'),
(101, 'GRAAF DE SMET DE NAEYERLAAN 17', 'OOSTENDE', 51.225861, 2.923745, 'Y', 'N'),
(102, 'Markt 52', 'OUDENAARDE', 50.842866, 3.604048, 'N', 'Y'),
(103, 'SINT-MICHIELSSTRAAT 27', 'ROESELARE', 50.942757, 3.122692, 'N', 'N'),
(104, 'NOORDSTRAAT 53', 'ROESELARE', 50.94659, 3.122634, 'Y', 'Y'),
(105, 'STATIONSPLEIN 20', 'SINT-NIKLAAS', 51.165718, 4.141526, 'N', 'Y'),
(106, 'STAPELSTRAAT 51', 'SINT-TRUIDEN', 50.815717, 5.180772, 'N', 'N'),
(107, 'BORREDAM 4 BUS 1', 'TERNAT', 50.87223, 4.177759, 'N', 'Y'),
(108, 'Diesterstraat 34', 'TESSENDERLO', 51.066001, 5.087931, 'N', 'Y'),
(109, 'KORTRIJKSTRAAT 12', 'TIELT', 50.999488, 3.326465, 'N', 'N'),
(110, 'ANICIUSPARK 19', 'TONGEREN', 50.78419, 5.47449, 'N', 'Y'),
(111, 'Rue Royale 16', 'TOURNAI', 50.609286, 3.391928, 'Y', 'N'),
(112, 'Grote Markt 28', 'TURNHOUT', 51.322784, 4.949673, 'N', 'N'),
(113, 'NOORDSTRAAT 8', 'VEURNE', 51.073053, 2.662452, 'N', 'N'),
(114, 'LANGE MOLENSTRAAT 1', 'VILVOORDE', 50.928939, 4.421272, 'N', 'N'),
(115, 'HOLSTRAAT 31', 'WAREGEM', 50.885292, 3.434918, 'N', 'N'),
(116, 'AVENUE DES PRINCES 40', 'WAVRE', 50.71706, 4.615414, 'N', 'Y'),
(117, 'STATIONSSTRAAT 5A', 'WETTEREN', 51.004406, 3.883684, 'N', 'Y'),
(118, 'LEUVENSESTEENWEG 669', 'ZAVENTEM', 50.878245, 4.507715, 'N', 'N'),
(119, 'BARON DE MAERELAAN 12', 'ZEEBRUGGE', 51.329064, 3.183368, 'Y', 'N'),
(120, 'GROTE MARKT 64', 'ZELZATE', 51.20045, 3.81063, 'N', 'N'),
(121, 'Begijnhoflaan 464', 'GENT', 51.057644, 3.709723, 'N', 'Y'),
(122, 'KEMPISCHE STEENWEG 6', 'HASSELT', 50.934426, 5.339645, 'N', 'N'),
(123, 'Gentsestraat 30', 'IZEGEM', 50.917234, 3.216521, 'N', 'N'),
(124, 'ITALIELEI 215', 'ANTWERPEN', 51.221486, 4.416864, 'N', 'N'),
(125, 'Smedenstraat 40', 'BRUGGE', 51.20545, 3.215036, 'N', 'Y'),
(126, 'ANTWERPSELAAN 5', 'BRUSSEL', 50.856314, 4.354325, 'N', 'N'),
(127, 'Dorpsplein 22', 'KAPELLEN', 51.313926, 4.428135, 'N', 'Y'),
(128, 'DOLFIJNKAAI 4', 'KORTRIJK', 50.82941, 3.263731, 'N', 'Y'),
(129, 'Diestsestraat 238', 'LEUVEN', 50.882091, 4.71323, 'N', 'N'),
(130, 'Avenue Blonden 20/22', 'LIEGE', 50.629672, 5.569224, 'N', 'N'),
(131, 'St. MICHIELSSTRAAT 3A', 'ROESELARE', 50.943685, 3.123022, 'N', 'N'),
(132, 'Kokkelbeekstraat 23', 'SINT-NIKLAAS', 51.162719, 4.141919, 'Y', 'Y'),
(133, 'BIJENSTRAAT28', 'SINT-DENIJS-WESTREM', 51.0213356018066, 3.68180704116821, 'N', 'Y'),
(134, 'POORTAKKERSTRAAT 21/0201', 'SINT-DENIJS-WESTREM', 51.024845, 3.683017, 'N', 'N'),
(135, 'BEVERSESTEENWEG 576', 'ROESELARE', 50.974048, 3.160431, 'N', 'Y'),
(136, 'BROELKAAI 1E', 'KORTRIJK', 50.829967, 3.264912, 'N', 'Y'),
(137, 'BEVERSESTEENWEG576', 'ROESELARE', 50.974184, 3.160659, 'N', 'N'),
(138, 'BURGEMEESTERSPLEIN 6', 'AALST', 50.933526, 4.045378, 'N', 'N'),
(139, 'LANGDORPSESTEENWEG 1', 'AARSCHOT', 50.991691, 4.840907, 'N', 'N'),
(140, 'RIJNPOORTVEST 1', 'ANTWERPEN', 51.225966, 4.413759, 'Y', 'N'),
(141, 'SINT-MARTINUSSTRAAT 4', 'ASSE', 50.910287, 4.195371, 'N', 'N'),
(142, 'Oude Zandstraat 35', 'BEVEREN-WAAS', 51.21174, 4.253139, 'N', 'Y'),
(143, 'ANTWERPSESTRAAT 76 BUS 1', 'BOOM', 51.089013, 4.365294, 'N', 'N'),
(144, 'BOOMSTRAAT 116', 'BORNEM', 51.095947, 4.23263, 'N', 'N'),
(145, 'MALTA 2', 'BREE', 51.141981, 5.601047, 'N', 'Y'),
(146, 'GULDEN-VLIESLAAN 21', 'BRUGGE', 51.21117, 3.214348, 'N', 'Y'),
(147, 'LOUIZALAAN 125', 'BRUSSEL 5', 50.832478, 4.358354, 'N', 'Y'),
(148, 'Boulevard Joseph II 4', 'CHARLEROI', 50.413439, 4.449724, 'N', 'N'),
(149, 'KORTRIJKSTRAAT 72 BUS 1', 'DEINZE', 50.977292, 3.527698, 'N', 'N'),
(150, 'NOORDLAAN 113a', 'DENDERMONDE', 51.033347, 4.088012, 'Y', 'N'),
(151, 'MOLENSTRAAT 2', 'EEKLO', 51.18533, 3.56407, 'N', 'N'),
(152, 'ANTWERPSEWEG 17A', 'GEEL', 51.151432, 4.971169, 'N', 'N'),
(153, 'EUROPALAAN 57 BUS 3', 'GENK', 50.966622, 5.497809, 'Y', 'N'),
(154, 'Keizer Karelstraat 220', 'GENT', 51.050149, 3.733788, 'N', 'N'),
(155, 'SUIKERKAAI 9', 'HALLE', 50.731931, 4.237414, 'N', 'N'),
(156, 'LUIKERSTEENWEG 97 BUS 2', 'HASSELT', 50.923526, 5.339667, 'N', 'N'),
(157, 'BOVENRIJ 9', 'HERENTALS', 51.173802, 4.838934, 'Y', 'Y'),
(158, 'OUDE VEURNESTRAAT 79', 'IEPER', 50.857916, 2.872211, 'N', 'Y'),
(159, 'De Smet De Naeyerlaan 111a', 'JETTE', 50.873607, 4.328189, 'Y', 'N'),
(160, 'Antwerpsesteenweg 69', 'KAPELLEN', 51.311409, 4.430237, 'N', 'Y'),
(161, 'SCHOUWBURGPLEIN 8', 'KORTRIJK', 50.825641, 3.265233, 'Y', 'Y'),
(162, 'BRUGSESTRAAT 10', 'KORTRIJK', 50.834214, 3.259328, 'N', 'Y'),
(163, 'MARTELARENLAAN 30', 'LEUVEN', 50.88195, 4.7175, 'N', 'Y'),
(164, 'Avenue Blonden 20/22', 'LIEGE', 50.629672, 5.569224, 'N', 'Y'),
(165, 'Hoogveldweg 153', 'LIER', 51.123001, 4.572693, 'Y', 'Y'),
(166, 'ZAND 22', 'LOKEREN', 51.102363, 3.995337, 'N', 'N'),
(167, 'KAPITTELHOF 2', 'LOMMEL', 51.230419, 5.311006, 'N', 'N'),
(168, 'Hoogstraat 9', 'MECHELEN', 51.023768, 4.475208, 'N', 'N'),
(169, 'IEPERSTRAAT 29', 'MENEN', 50.796492, 3.118243, 'Y', 'Y'),
(170, 'ANTWERPSESTRAAT 147', 'MORTSEL', 51.174263, 4.44098, 'Y', 'N'),
(171, 'RUE DU PREMIER LANCIERS 14', 'NAMUR', 50.466305, 4.871209, 'N', 'Y'),
(172, 'Av. De Centenaire 53', 'NIVELLES', 50.594894, 4.337284, 'N', 'Y'),
(173, 'Leopold II Laan 13', 'OOSTENDE', 51.230261, 2.914263, 'N', 'N'),
(174, 'BEVERESTRAAT 18-20', 'OUDENAARDE', 50.847878, 3.600415, 'Y', 'N'),
(175, 'NOORDLAAN 41A', 'ROESELARE', 50.955701, 3.118822, 'Y', 'N'),
(176, 'BEVERSESTEENWEG 576', 'ROESELARE', 50.974578, 3.161673, 'N', 'N'),
(177, 'MARKT 17', 'SCHOTEN', 51.251884, 4.497916, 'N', 'N'),
(178, 'PLEZANTSTRAAT 2 BUS 1', 'SINT-NIKLAAS', 51.165946, 4.136382, 'N', 'N'),
(179, 'STATIONSTRAAT 133', 'TERNAT', 50.874407, 4.164053, 'Y', 'N'),
(180, 'Neerstraat 29', 'TESSENDERLO', 51.068914, 5.087926, 'N', 'Y'),
(181, 'KORTRIJKSTRAAT 72A', 'TIELT', 50.997463, 3.326604, 'Y', 'N'),
(182, 'GILAINSTRAAT 33', 'TIENEN', 50.809474, 4.937276, 'Y', 'Y'),
(183, 'SINT TRUIDERSTEENWEG 36', 'TONGEREN', 50.778717, 5.453811, 'N', 'N'),
(184, 'PATERSSTRAAT 44 b1', 'TURNHOUT', 51.323659, 4.949664, 'N', 'Y'),
(185, 'STALLESTRAAT 11', 'UKKEL', 50.799961, 4.335557, 'N', 'Y'),
(186, 'ST-DENISPLAATS 11', 'VEURNE', 51.07006, 2.661776, 'Y', 'Y'),
(187, 'BENOIT HANSSENSLAAN 18A', 'VILVOORDE', 50.925912, 4.433432, 'N', 'N'),
(188, 'WESTERLAAN 12 BUS 2', 'WAREGEM', 50.886626, 3.423432, 'N', 'N'),
(189, 'Hoenderstraat 2', 'WETTEREN', 51.004513, 3.883561, 'Y', 'Y'),
(190, 'MECHELSESTEENWEG 497', 'ZAVENTEM', 50.87865, 4.507508, 'N', 'N'),
(191, 'BRUSSELSTRAAT 1', 'ZEEBRUGGE', 51.329195, 3.183194, 'N', 'N'),
(192, 'Koning Albert I laan 70', 'BRUGGE', 51.191915, 3.212187, 'N', 'N'),
(193, 'KEMPISCHE STEENWEG 6', 'HASSELT', 50.934426, 5.339645, 'N', 'N'),
(194, 'KONING ALBERT I LAAN 92', 'ROESELARE', 50.940109, 3.128716, 'N', 'N'),
(195, 'Steenweg op Antwerpen 31 bus 2', 'TURNHOUT', 51.319622, 4.923025, 'N', 'N'),
(196, 'GROTE STEENWEG NOORD 63', 'ZWIJNAARDE', 51.010544, 3.702622, 'N', 'N'),
(197, 'Hendrik I lei 200', 'VILVOORDE', 50.93596, 4.432298, 'N', 'N');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
