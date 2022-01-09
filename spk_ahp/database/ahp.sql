-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 05:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(19, 'Motor Beat'),
(20, 'Motor Vario'),
(21, 'Motor Revo'),
(22, 'Motor Scoopy'),
(23, 'Motor PCX');

-- --------------------------------------------------------

--
-- Table structure for table `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`) VALUES
(28, 'Penerangan'),
(29, 'Kemudi'),
(30, 'Ban'),
(31, 'Mesin'),
(32, 'Fisik');

-- --------------------------------------------------------

--
-- Table structure for table `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(16, 19, 20, 28, 1.25),
(17, 19, 21, 28, 1.25),
(18, 19, 22, 28, 1),
(19, 19, 23, 28, 1),
(20, 20, 21, 28, 1),
(21, 20, 22, 28, 0.8),
(22, 20, 23, 28, 1),
(23, 21, 22, 28, 0.8),
(24, 21, 23, 28, 1),
(25, 22, 23, 28, 1),
(26, 19, 20, 29, 1),
(27, 19, 21, 29, 0.8),
(28, 19, 22, 29, 0.8),
(29, 19, 23, 29, 1),
(30, 20, 21, 29, 0.8),
(31, 20, 22, 29, 0.8),
(32, 20, 23, 29, 1),
(33, 21, 22, 29, 1),
(34, 21, 23, 29, 1),
(35, 22, 23, 29, 1),
(36, 19, 20, 30, 0.6),
(37, 19, 21, 30, 1),
(38, 19, 22, 30, 0.6),
(39, 19, 23, 30, 1),
(40, 20, 21, 30, 1.6),
(41, 20, 22, 30, 1),
(42, 20, 23, 30, 1),
(43, 21, 22, 30, 0.6),
(44, 21, 23, 30, 1),
(45, 22, 23, 30, 1),
(46, 19, 20, 31, 1),
(47, 19, 21, 31, 1.33333),
(48, 19, 22, 31, 1),
(49, 19, 23, 31, 1),
(50, 20, 21, 31, 1.33333),
(51, 20, 22, 31, 1),
(52, 20, 23, 31, 1),
(53, 21, 22, 31, 0.75),
(54, 21, 23, 31, 1),
(55, 22, 23, 31, 1),
(56, 19, 20, 32, 1),
(57, 19, 21, 32, 1.66667),
(58, 19, 22, 32, 1),
(59, 19, 23, 32, 1),
(60, 20, 21, 32, 1.66667),
(61, 20, 22, 32, 1),
(62, 20, 23, 32, 1),
(63, 21, 22, 32, 0.6),
(64, 21, 23, 32, 1),
(65, 22, 23, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(7, 28, 29, 1),
(8, 28, 30, 3),
(9, 28, 31, 5),
(10, 28, 32, 5),
(11, 29, 30, 5),
(12, 29, 31, 3),
(13, 29, 32, 5),
(14, 30, 31, 5),
(15, 30, 32, 5),
(16, 31, 32, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(40, 19, 28, 0.217866),
(41, 20, 28, 0.182292),
(42, 21, 28, 0.182292),
(43, 22, 28, 0.217866),
(44, 23, 28, 0.199684),
(45, 19, 29, 0.182292),
(46, 20, 29, 0.182292),
(47, 21, 29, 0.217866),
(48, 22, 29, 0.217866),
(49, 23, 29, 0.199684),
(50, 19, 30, 0.160468),
(51, 20, 30, 0.238652),
(52, 21, 30, 0.161651),
(53, 22, 30, 0.240779),
(54, 23, 30, 0.19845),
(55, 19, 31, 0.21076),
(56, 20, 31, 0.21076),
(57, 21, 31, 0.16807),
(58, 22, 31, 0.21076),
(59, 23, 31, 0.199649),
(60, 19, 32, 0.218054),
(61, 20, 32, 0.218054),
(62, 21, 32, 0.146832),
(63, 22, 32, 0.218054),
(64, 23, 32, 0.199006);

-- --------------------------------------------------------

--
-- Table structure for table `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(28, 0.33257),
(29, 0.347216),
(30, 0.1827),
(31, 0.0888121),
(32, 0.0487011);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(19, 0.194405),
(20, 0.196859),
(21, 0.187883),
(22, 0.22143),
(23, 0.199422);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
