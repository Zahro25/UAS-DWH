-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2021 at 06:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `namalengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `level`, `namalengkap`) VALUES
(1, 'admin', 'ADMIN', 'ADMIN', 'ADMIN'),
(2, 'zahro', 'zahro', 'USER', 'fatimatuzzahro');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(5) NOT NULL,
  `nm_alternatif` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`) VALUES
('al001', 'alun alun tegal'),
('al002', 'jl.kartini'),
('al003', 'kampus poltek'),
('al004', 'pasar kejambon'),
('al005', 'pasar pagi');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot` double NOT NULL,
  `poin1` double NOT NULL,
  `poin2` double NOT NULL,
  `poin3` double NOT NULL,
  `poin4` double NOT NULL,
  `poin5` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `poin1`, `poin2`, `poin3`, `poin4`, `poin5`, `sifat`) VALUES
('kr002', 'harga sewa', 3, 70, 80, 75, 75, 75, 'cost'),
('kr003', 'kondisi ekonomi masyarakat', 2, 70, 70, 80, 65, 65, 'benefit'),
('kr004', 'jumlah pesaing', 2, 75, 65, 70, 75, 70, 'cost'),
('kr005', 'sarana dan prasarana', 2, 90, 85, 80, 85, 70, 'benefit'),
('kr001', 'lokasi strategis', 4, 90, 85, 70, 80, 70, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(7) NOT NULL,
  `id_alternatif` varchar(7) NOT NULL,
  `id_kriteria` varchar(7) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(136, 'al002', 'kr002', 80),
(137, 'al002', 'kr003', 70),
(138, 'al002', 'kr004', 65),
(139, 'al002', 'kr005', 85),
(140, 'al002', 'kr001', 85),
(141, 'al003', 'kr002', 75),
(142, 'al003', 'kr003', 80),
(143, 'al003', 'kr004', 70),
(144, 'al003', 'kr005', 80),
(145, 'al003', 'kr001', 70),
(146, 'al004', 'kr002', 75),
(147, 'al004', 'kr003', 65),
(148, 'al004', 'kr004', 75),
(149, 'al004', 'kr005', 85),
(150, 'al004', 'kr001', 80),
(151, 'al005', 'kr002', 75),
(152, 'al005', 'kr003', 65),
(153, 'al005', 'kr004', 70),
(154, 'al005', 'kr005', 70),
(155, 'al005', 'kr001', 70),
(156, 'al001', 'kr002', 70),
(157, 'al001', 'kr003', 70),
(158, 'al001', 'kr004', 75),
(159, 'al001', 'kr005', 90),
(160, 'al001', 'kr001', 90);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `nm_alternatif` varchar(35) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_preferensi`
--

INSERT INTO `nilai_preferensi` (`nm_alternatif`, `nilai`) VALUES
('alun alun tegal', 0.5097),
('jl.kartini', 0.5187),
('pasar pagi', 0.5102),
('pasar kejambon', 0.5148),
('kampus poltek', 0.499);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indexes for table `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD PRIMARY KEY (`nm_alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
