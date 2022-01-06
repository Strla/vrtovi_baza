-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2021 at 01:09 PM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 7.2.25-1+0~20191128.32+debian8~1.gbp108445

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrtovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anketa`
--

CREATE TABLE `anketa` (
  `anketa_id` bigint(20) UNSIGNED NOT NULL,
  `rok` datetime NOT NULL,
  `korisnik` bigint(20) UNSIGNED NOT NULL,
  `biljka` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `biljka`
--

CREATE TABLE `biljka` (
  `biljka_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `opis` text NOT NULL,
  `vrsta_biljke` varchar(50) NOT NULL,
  `predlozio` bigint(20) UNSIGNED NOT NULL,
  `kolicina` int(11) NOT NULL,
  `vrt` bigint(20) UNSIGNED NOT NULL,
  `anketa` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `biljka`
--

INSERT INTO `biljka` (`biljka_id`, `naziv`, `opis`, `vrsta_biljke`, `predlozio`, `kolicina`, `vrt`, `anketa`) VALUES
(13, 'Vlasac', 'Allium schoenoprasum', 'Povrće', 11, 2, 8, NULL),
(14, 'Origano', 'Origanum onites', 'Povrće', 6, 3, 4, NULL),
(15, 'Zimski čubar', 'Origanum onites', 'Povrće', 14, 1, 10, NULL),
(16, 'Majčina dušica', 'Thymus x citriodorus', 'Povrće', 6, 3, 8, NULL),
(17, 'Agava', 'Agave', 'Povrće', 15, 2, 8, NULL),
(18, 'Judino drvo', 'Cercis siliquastrum', 'Povrće', 13, 1, 8, NULL),
(20, 'Lovor', 'Laurus nobilis', 'Povrće', 4, 2, 8, NULL),
(21, 'Smokva', 'Ficus carica', 'Voće', 8, 4, 8, NULL),
(22, 'Limun', 'Citrus limon', 'Voće', 15, 5, 8, NULL),
(23, 'Đumbir', 'Zingiber officinale', 'Povrće', 7, 2, 12, NULL),
(24, 'Medinilla', 'Medinilla magnifica', 'Povrće', 6, 1, 12, NULL),
(25, 'Anđeoska truba', 'Brugmansia', 'Povrće', 18, 3, 12, NULL),
(26, 'Banana', 'Musa sapientium', 'Voće', 15, 6, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik`
--

CREATE TABLE `dnevnik` (
  `dnevnik_id` bigint(20) UNSIGNED NOT NULL,
  `tip_dnevnika` bigint(20) UNSIGNED NOT NULL,
  `korisnik` bigint(20) UNSIGNED NOT NULL,
  `vrijeme_datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`dnevnik_id`, `tip_dnevnika`, `korisnik`, `vrijeme_datum`) VALUES
(33, 1, 4, '2021-06-13 11:16:16'),
(34, 4, 4, '2021-06-13 11:16:36'),
(35, 2, 4, '2021-06-13 11:17:06'),
(36, 3, 4, '2021-06-13 11:17:11'),
(37, 1, 5, '2021-06-13 11:18:30'),
(38, 2, 5, '2021-06-13 11:18:45'),
(39, 3, 5, '2021-06-13 11:18:50'),
(40, 4, 5, '2021-06-13 11:18:55'),
(41, 1, 6, '2021-06-13 11:20:51'),
(42, 4, 6, '2021-06-13 11:21:28'),
(43, 1, 7, '2021-06-13 11:22:53'),
(44, 4, 7, '2021-06-13 11:23:01'),
(45, 1, 8, '2021-06-13 11:23:39'),
(46, 4, 8, '2021-06-13 11:24:01'),
(47, 1, 9, '2021-06-13 11:25:14'),
(48, 1, 10, '2021-06-13 11:26:10'),
(49, 1, 11, '2021-06-13 11:26:56'),
(50, 1, 13, '2021-06-13 11:30:11'),
(51, 1, 14, '2021-06-13 11:30:49'),
(52, 1, 15, '2021-06-13 11:31:23'),
(53, 4, 15, '2021-06-13 11:31:51'),
(54, 4, 15, '2021-06-13 11:31:56'),
(55, 2, 15, '2021-06-13 11:34:04'),
(56, 3, 15, '2021-06-13 12:15:54'),
(57, 2, 8, '2021-06-13 12:16:17'),
(58, 3, 8, '2021-06-13 12:16:32'),
(59, 2, 8, '2021-06-13 12:16:38'),
(60, 1, 16, '2021-06-13 19:58:16'),
(61, 4, 16, '2021-06-13 19:58:38'),
(62, 2, 15, '2021-06-13 20:02:07'),
(63, 1, 17, '2021-06-13 21:27:32'),
(64, 4, 17, '2021-06-13 21:27:56'),
(65, 2, 15, '2021-06-13 21:37:38'),
(66, 3, 15, '2021-06-13 22:15:46'),
(67, 2, 6, '2021-06-13 22:16:13'),
(68, 1, 18, '2021-06-14 12:09:45'),
(69, 4, 18, '2021-06-14 12:09:49'),
(70, 2, 18, '2021-06-14 12:09:56'),
(71, 3, 18, '2021-06-14 12:10:05'),
(72, 2, 15, '2021-06-14 12:12:14'),
(73, 2, 11, '2021-06-14 13:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `DZ4_izlet`
--

CREATE TABLE `DZ4_izlet` (
  `izlet_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `datum` varchar(255) DEFAULT NULL,
  `vrijeme` varchar(255) DEFAULT NULL,
  `zupanija` varchar(255) DEFAULT NULL,
  `boja` varchar(255) DEFAULT NULL,
  `iskustvo` varchar(255) DEFAULT NULL,
  `sprema` varchar(255) DEFAULT NULL,
  `planine` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DZ4_izlet`
--

INSERT INTO `DZ4_izlet` (`izlet_id`, `url`, `datum`, `vrijeme`, `zupanija`, `boja`, `iskustvo`, `sprema`, `planine`) VALUES
(2, 'http://test.com', '15.6.2020', '22:45', '1000006', '#000000', 'Amater', '1', '1|3|4'),
(3, '', '15.6.2020', '22:45', '-1', '#000000', '', '5', '1|2|3'),
(4, 'http://test.com', '15.6.2020', '22:45', '-1', '#000000', '', '5', '1|2'),
(5, 'google.hr', '23.03.2020', '11:11', '1000020', 'crna', '', '6', '0|2'),
(6, 'https://www.youtube.com/watch?v=AwTmXP1tRgYasdf', '13.12.2020.', '12:12:12', '1000006', '#000000', '', '5', '1|3');

-- --------------------------------------------------------

--
-- Table structure for table `DZ4_korisnik`
--

CREATE TABLE `DZ4_korisnik` (
  `korisnik_id` int(11) NOT NULL,
  `ime` varchar(255) DEFAULT NULL,
  `prezime` varchar(255) DEFAULT NULL,
  `korisnicko_ime` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lozinka` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `tip_korisnika` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DZ4_korisnik`
--

INSERT INTO `DZ4_korisnik` (`korisnik_id`, `ime`, `prezime`, `korisnicko_ime`, `email`, `lozinka`, `hash`, `tip_korisnika`) VALUES
(6, 'Miro', 'Ivanusic', 'ivan', 'ivan.Miro@mail.com', '123', 'c2ef76d4d1802120e08fef97423cf748728e54f80ef49afc703621d23ef7f0d2', 'REGISTRIRANI'),
(7, 'Direkt', 'Registrirani', 'registrirani_korisnik', NULL, '123456', 'c2ef76d4d1802120e08fef97423cf748728e54f80ef49afc703621d23ef7f0d2', 'REGISTRIRANI'),
(8, 'Direkt', 'Moderator', 'moderator', NULL, '123456', 'c2ef76d4d1802120e08fef97423cf748728e54f80ef49afc703621d23ef7f0d2', 'MODERATOR'),
(9, 'Direkt', 'Admin', 'admin', NULL, '123456', 'c2ef76d4d1802120e08fef97423cf748728e54f80ef49afc703621d23ef7f0d2', 'ADMIN'),
(10, 'Milan', 'Mladenovic', 'mmilan', 'milan.mladenovic@gmail.com', 'milanM', '7cb1f818cfd71a50fea47b5810a4b4b71a3d64d8e53b1f0389127e7ec7b40aa3', 'REGISTRIRANI'),
(11, 'matnovak', 'matnovak', 'matnovak', 'matnovak@d', 'matnovak', '1fdb0c2811a0605e31f555b06a9c55b194d23dcba39e44ab9e4f3fc2cdd180e8', 'REGISTRIRANI');

-- --------------------------------------------------------

--
-- Table structure for table `favoriti`
--

CREATE TABLE `favoriti` (
  `favoriti_id` bigint(20) UNSIGNED NOT NULL,
  `korisnik` bigint(20) UNSIGNED NOT NULL,
  `biljka` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favoriti`
--

INSERT INTO `favoriti` (`favoriti_id`, `korisnik`, `biljka`) VALUES
(3, 8, 22),
(4, 8, 16);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_id` bigint(20) UNSIGNED NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lozinka` varchar(50) NOT NULL,
  `lozinka_SHA256` char(64) NOT NULL,
  `datum_registracije` datetime NOT NULL,
  `aktiviran` tinyint(1) NOT NULL DEFAULT '0',
  `broj_pokusaja_prijave` int(11) NOT NULL DEFAULT '0',
  `tip_korisnika` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `zakljucan` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `ime`, `prezime`, `korisnicko_ime`, `email`, `lozinka`, `lozinka_SHA256`, `datum_registracije`, `aktiviran`, `broj_pokusaja_prijave`, `tip_korisnika`, `zakljucan`) VALUES
(4, 'Marko', 'Marković', 'marko5', 'nibom76949@beydent.com', 'mmarkovic', '$2y$11$QwrBzamOaX8hIaRVleiniOHGWLb1w0SL9OT/WazLuTrPKfbJRzEqq', '2021-06-13 11:16:16', 1, 0, 2, 0),
(5, 'Pero', 'Perić', 'pero8', 'sanip65924@awinceo.com', 'peroperic', '$2y$11$0Dsoh7AsRIWS1mzS3JV.qergz1srcoyABFnrTln1ErTQ/orlCOKLS', '2021-06-13 11:18:30', 1, 0, 1, 0),
(6, 'Mirko', 'Mirković', 'mirko2', 'nomiyi9637@0ranges.com', 'mmirkovic', '$2y$11$XD1RRZQbKOWox5zvtNFmXO.CD1JhRRGz8kieVINjisA0Ax00MiiZO', '2021-06-13 11:20:48', 1, 0, 2, 0),
(7, 'Ivan', 'Ivanović', 'ivan33', 'wodon64703@beydent.com', 'iivanovic', '$2y$11$2uhH1LFk/XqkVTyuzmhcAuWSdSqsBVClSfehMGfmvLlpGbAa1E3Bq', '2021-06-13 11:22:53', 1, 0, 3, 0),
(8, 'Karlo', 'Karlović', 'karlo88', 'sofixa9040@0ranges.com', 'kkarlovic', '$2y$11$Cx59UcUFiAu9nuNmkxYVLO0tt8totCsd4.Kjkyy9QCx/jPbx8Le1i', '2021-06-13 11:23:38', 1, 0, 4, 0),
(9, 'Josip', 'Josipović', 'jopa55', 'bogiba1551@0ranges.com', 'jjosipovic', '$2y$11$9nbF5Qix98n9RljoyySLlucTtV9YG8IQFvDWSgYlLJ2I/qU9id89C', '2021-06-13 11:25:14', 1, 0, 1, 0),
(10, 'Danijel', 'Danilović', 'dani047', 'yaloco9453@0ranges.com', 'ddanilovic', '$2y$11$r93T2ieCgmZLaWQQGCr4qOS5qb3gMbdPtmydjzVVSZuwGaXN8IsY6', '2021-06-13 11:26:09', 1, 0, 1, 0),
(11, 'Luka', 'Lukić', 'lucca88', 'gocosa1474@beydent.com', 'lukalukic', '$2y$11$oGV7xVLMRiJ1a7esPHDkWeiwZl43o3TkxRXxMPYpEO/7tCIQWBS2y', '2021-06-13 11:26:56', 1, 0, 3, 0),
(13, 'Borna', 'Bornović', 'bborna', 'kopano5473@awinceo.com', 'bbornovic', '$2y$11$obQD9gcYcFCOme5s4y04PuLK9/6CgoLenSl0f05ReVd98ns/SeLwa', '2021-06-13 11:30:11', 1, 0, 3, 0),
(14, 'Hrvoje', 'Hrvojević', 'hrco22', 'poyaro1875@awinceo.com', 'hhrvojevic', '$2y$11$0TUJFtDUZItaclrqPlk1Bu5QySswYs0GhrvSKdrFh0aHnsKZNsKyC', '2021-06-13 11:30:49', 1, 0, 2, 0),
(15, 'Ivan', 'Starčević', 'strle', 'ivan.starcevic15@gmail.com', 'istarcevi', '$2y$11$frYow0FNJQkFcsmvuFvcTe30Fq8OBA3oWcwCgRyN.fjuNMe1CbmuW', '2021-06-13 11:31:23', 1, 0, 4, 0),
(17, 'Bruno', 'Brunic', 'bruno', 'fajalis933@bbsaili.com', 'brunobruno', '$2y$11$vd6i58N6eCCcAmCjuMuLbOmfu67EozTCAeSDjojTwVUAa6oTNoSjy', '2021-06-13 21:27:32', 1, 0, 2, 0),
(18, 'Ivo', 'Ivić', 'ivicaa', 'tileyi8724@awinceo.com', 'lozinkaa', '$2y$11$DfSZqB56tWK4VL0qGUrg3eXpJ.lGNfCy29Um0m5tUtXPV57mRq1kW', '2021-06-14 12:09:44', 1, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `materijal`
--

CREATE TABLE `materijal` (
  `materijal_id` bigint(20) UNSIGNED NOT NULL,
  `korisnik` bigint(20) UNSIGNED NOT NULL,
  `biljka` bigint(20) UNSIGNED NOT NULL,
  `putanja` varchar(50) NOT NULL,
  `tip_materijala` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `moderator_vrta`
--

CREATE TABLE `moderator_vrta` (
  `moderator_kategorije_id` bigint(20) UNSIGNED NOT NULL,
  `korisnik` bigint(20) UNSIGNED NOT NULL,
  `vrt` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moderator_vrta`
--

INSERT INTO `moderator_vrta` (`moderator_kategorije_id`, `korisnik`, `vrt`) VALUES
(6, 13, 4),
(7, 8, 6),
(8, 8, 7),
(9, 11, 7),
(10, 15, 8),
(11, 7, 9),
(12, 15, 9),
(13, 11, 10),
(14, 7, 11),
(15, 13, 11),
(16, 15, 12),
(17, 11, 13),
(18, 13, 14),
(19, 8, 15),
(20, 11, 15),
(21, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tip_dnevnika`
--

CREATE TABLE `tip_dnevnika` (
  `tip_dnevnika_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tip_dnevnika`
--

INSERT INTO `tip_dnevnika` (`tip_dnevnika_id`, `naziv`) VALUES
(1, 'Registracija'),
(2, 'Prijava'),
(3, 'Odjava'),
(4, 'Aktivacija korisnikčkog računa'),
(5, 'Pogrešna lozinka'),
(6, 'Zaključavanje računa');

-- --------------------------------------------------------

--
-- Table structure for table `tip_korisnika`
--

CREATE TABLE `tip_korisnika` (
  `tip_korisnika_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`tip_korisnika_id`, `naziv`) VALUES
(1, 'Neregistrirani korisnik'),
(2, 'Registrirani korisnik'),
(3, 'Moderator'),
(4, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tip_materijala`
--

CREATE TABLE `tip_materijala` (
  `tip_materijala_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrt`
--

CREATE TABLE `vrt` (
  `vrt_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vrt`
--

INSERT INTO `vrt` (`vrt_id`, `naziv`) VALUES
(4, 'Engleski vrt'),
(6, 'Francuski vrt'),
(7, 'Arapski vrt'),
(8, 'Mediteranski vrt'),
(9, 'Japanski vrt'),
(10, 'Feng Shui vrt'),
(11, 'Okomiti vrt'),
(12, 'Tropski vrt'),
(13, 'Vodeni vrt'),
(14, 'Održivi vrt'),
(15, 'Kišom vrt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anketa`
--
ALTER TABLE `anketa`
  ADD PRIMARY KEY (`anketa_id`),
  ADD KEY `anketa_korisnik_korisnik_id_fk` (`korisnik`),
  ADD KEY `anketa_bilja_biljka_id_fk` (`biljka`);

--
-- Indexes for table `biljka`
--
ALTER TABLE `biljka`
  ADD PRIMARY KEY (`biljka_id`),
  ADD UNIQUE KEY `biljka_id` (`biljka_id`),
  ADD KEY `biljka_anketa_anketa_id_fk` (`anketa`),
  ADD KEY `biljka_korisnik_korisnik_id_fk` (`predlozio`);

--
-- Indexes for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD PRIMARY KEY (`dnevnik_id`),
  ADD UNIQUE KEY `dnevnik_id` (`dnevnik_id`),
  ADD KEY `dnevnik_tip_dnevnika_tip_dnevnika_id_fk` (`tip_dnevnika`);

--
-- Indexes for table `DZ4_izlet`
--
ALTER TABLE `DZ4_izlet`
  ADD PRIMARY KEY (`izlet_id`);

--
-- Indexes for table `DZ4_korisnik`
--
ALTER TABLE `DZ4_korisnik`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- Indexes for table `favoriti`
--
ALTER TABLE `favoriti`
  ADD PRIMARY KEY (`favoriti_id`),
  ADD UNIQUE KEY `favoriti_id` (`favoriti_id`),
  ADD KEY `favoriti_biljka_biljka_id_fk` (`biljka`),
  ADD KEY `favoriti_korisnik_korisnik_id_fk` (`korisnik`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`),
  ADD UNIQUE KEY `korisnik_email_uindex` (`email`),
  ADD UNIQUE KEY `korisnik_id` (`korisnik_id`),
  ADD UNIQUE KEY `korisnik_korisnicko_ime_uindex` (`korisnicko_ime`),
  ADD KEY `korisnik_tip_korisnika_tip_korisnika_id_fk` (`tip_korisnika`);

--
-- Indexes for table `materijal`
--
ALTER TABLE `materijal`
  ADD PRIMARY KEY (`materijal_id`),
  ADD UNIQUE KEY `materijal_id` (`materijal_id`),
  ADD KEY `materijal_biljka_biljka_id_fk` (`biljka`),
  ADD KEY `materijal_korisnik_korisnik_id_fk` (`korisnik`),
  ADD KEY `materijal_tip_materijala_tip_materijala_id_fk` (`tip_materijala`);

--
-- Indexes for table `moderator_vrta`
--
ALTER TABLE `moderator_vrta`
  ADD PRIMARY KEY (`moderator_kategorije_id`),
  ADD UNIQUE KEY `moderator_kategorije_id` (`moderator_kategorije_id`),
  ADD KEY `moderator_kategorije_kategorija_kategorija_id_fk` (`vrt`),
  ADD KEY `moderator_kategorije_korisnik_korisnik_id_fk` (`korisnik`);

--
-- Indexes for table `tip_dnevnika`
--
ALTER TABLE `tip_dnevnika`
  ADD PRIMARY KEY (`tip_dnevnika_id`),
  ADD UNIQUE KEY `tip_dnevnika_id` (`tip_dnevnika_id`);

--
-- Indexes for table `tip_korisnika`
--
ALTER TABLE `tip_korisnika`
  ADD PRIMARY KEY (`tip_korisnika_id`),
  ADD UNIQUE KEY `tip_korisnika_id` (`tip_korisnika_id`);

--
-- Indexes for table `tip_materijala`
--
ALTER TABLE `tip_materijala`
  ADD PRIMARY KEY (`tip_materijala_id`),
  ADD UNIQUE KEY `tip_materijala_id` (`tip_materijala_id`);

--
-- Indexes for table `vrt`
--
ALTER TABLE `vrt`
  ADD PRIMARY KEY (`vrt_id`),
  ADD UNIQUE KEY `vrt_id` (`vrt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biljka`
--
ALTER TABLE `biljka`
  MODIFY `biljka_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `dnevnik`
--
ALTER TABLE `dnevnik`
  MODIFY `dnevnik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `DZ4_izlet`
--
ALTER TABLE `DZ4_izlet`
  MODIFY `izlet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `DZ4_korisnik`
--
ALTER TABLE `DZ4_korisnik`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `favoriti`
--
ALTER TABLE `favoriti`
  MODIFY `favoriti_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `materijal`
--
ALTER TABLE `materijal`
  MODIFY `materijal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `moderator_vrta`
--
ALTER TABLE `moderator_vrta`
  MODIFY `moderator_kategorije_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tip_dnevnika`
--
ALTER TABLE `tip_dnevnika`
  MODIFY `tip_dnevnika_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tip_korisnika`
--
ALTER TABLE `tip_korisnika`
  MODIFY `tip_korisnika_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tip_materijala`
--
ALTER TABLE `tip_materijala`
  MODIFY `tip_materijala_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vrt`
--
ALTER TABLE `vrt`
  MODIFY `vrt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `anketa`
--
ALTER TABLE `anketa`
  ADD CONSTRAINT `anketa_bilja_biljka_id_fk` FOREIGN KEY (`biljka`) REFERENCES `biljka` (`biljka_id`),
  ADD CONSTRAINT `anketa_korisnik_korisnik_id_fk` FOREIGN KEY (`korisnik`) REFERENCES `korisnik` (`korisnik_id`);

--
-- Constraints for table `biljka`
--
ALTER TABLE `biljka`
  ADD CONSTRAINT `biljka_anketa_anketa_id_fk` FOREIGN KEY (`anketa`) REFERENCES `anketa` (`anketa_id`),
  ADD CONSTRAINT `biljka_korisnik_korisnik_id_fk` FOREIGN KEY (`predlozio`) REFERENCES `korisnik` (`korisnik_id`);

--
-- Constraints for table `dnevnik`
--
ALTER TABLE `dnevnik`
  ADD CONSTRAINT `dnevnik_tip_dnevnika_tip_dnevnika_id_fk` FOREIGN KEY (`tip_dnevnika`) REFERENCES `tip_dnevnika` (`tip_dnevnika_id`);

--
-- Constraints for table `favoriti`
--
ALTER TABLE `favoriti`
  ADD CONSTRAINT `favoriti_biljka_biljka_id_fk` FOREIGN KEY (`biljka`) REFERENCES `biljka` (`biljka_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favoriti_korisnik_korisnik_id_fk` FOREIGN KEY (`korisnik`) REFERENCES `korisnik` (`korisnik_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `korisnik_tip_korisnika_tip_korisnika_id_fk` FOREIGN KEY (`tip_korisnika`) REFERENCES `tip_korisnika` (`tip_korisnika_id`);

--
-- Constraints for table `materijal`
--
ALTER TABLE `materijal`
  ADD CONSTRAINT `materijal_biljka_biljka_id_fk` FOREIGN KEY (`biljka`) REFERENCES `biljka` (`biljka_id`),
  ADD CONSTRAINT `materijal_korisnik_korisnik_id_fk` FOREIGN KEY (`korisnik`) REFERENCES `korisnik` (`korisnik_id`),
  ADD CONSTRAINT `materijal_tip_materijala_tip_materijala_id_fk` FOREIGN KEY (`tip_materijala`) REFERENCES `tip_materijala` (`tip_materijala_id`);

--
-- Constraints for table `moderator_vrta`
--
ALTER TABLE `moderator_vrta`
  ADD CONSTRAINT `moderator_kategorije_kategorija_kategorija_id_fk` FOREIGN KEY (`vrt`) REFERENCES `vrt` (`vrt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moderator_kategorije_korisnik_korisnik_id_fk` FOREIGN KEY (`korisnik`) REFERENCES `korisnik` (`korisnik_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
