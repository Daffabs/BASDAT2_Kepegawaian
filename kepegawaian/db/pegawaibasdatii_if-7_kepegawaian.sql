-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 05:50 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawaibasdatii_if-7_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `jam_masuk`
--

CREATE TABLE `jam_masuk` (
  `id` int(11) NOT NULL,
  `jam_masuk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jam_masuk`
--

INSERT INTO `jam_masuk` (`id`, `jam_masuk`) VALUES
(1, '0800');

-- --------------------------------------------------------

--
-- Table structure for table `log_update_admin`
--

CREATE TABLE `log_update_admin` (
  `id` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `kontak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_update_admin`
--

INSERT INTO `log_update_admin` (`id`, `waktu`, `username`, `password`, `kontak`) VALUES
(2, '2022-08-05', 'jono', 'ef9322a1a342a36856e9e8929b19437a', '1231231231'),
(3, '2022-08-05', 'jono', 'ef9322a1a342a36856e9e8929b19437a', '1231231231'),
(4, '2022-08-05', 'jono', 'ef9322a1a342a36856e9e8929b19437a', '1231231231'),
(5, '2022-08-05', 'jono', 'ef9322a1a342a36856e9e8929b19437a', '1231231231');

-- --------------------------------------------------------

--
-- Table structure for table `log_update_karyawan`
--

CREATE TABLE `log_update_karyawan` (
  `id` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `alamat` text NOT NULL,
  `kontak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_update_karyawan`
--

INSERT INTO `log_update_karyawan` (`id`, `waktu`, `username`, `password`, `alamat`, `kontak`) VALUES
(0, '2022-08-05', 'joko', '278ea841c0d133059032b8a75320c3e0', 'Jl. Tengah No.44', 2147483647),
(1, '2022-08-05', 'joko', '278ea841c0d133059032b8a75320c3e0', 'Jl. Simpang No.10', 2147483647),
(2, '2022-08-05', 'joko', '278ea841c0d133059032b8a75320c3e0', 'Jl. Simpang No.10', 2147483647),
(3, '2022-08-05', 'joko', '278ea841c0d133059032b8a75320c3e0', 'Jl. Simpang No.10', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `nip` text NOT NULL,
  `nama` text NOT NULL,
  `tanggal` text NOT NULL,
  `jam` text NOT NULL,
  `jam2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `nip`, `nama`, `tanggal`, `jam`, `jam2`) VALUES
(36, '10001122', 'Pevita Pearce', '05-08-2022', '06:15 pm', '0615'),
(37, '10001133', 'Chealse Islan', '05-08-2022', '06:19 pm', '0619');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `nama` text NOT NULL,
  `kontak` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `nama`, `kontak`, `foto`) VALUES
(15, 'alfi', '3350258cbfb4059d508ca6e80dca5a45', 'alfi Aditya Z', '10120254', '561-pas.png'),
(16, 'david', '55fc5b709962876903785fd64a6961e5', 'Muhammad David S P', '10120256', '53-david.png'),
(17, 'tegar', '1d31802d64bae29d88923d795fc73734', 'Tegar Ahmad F', '10120252', '558-tegar.png'),
(18, 'daffa', '7b1e852330575c92c8d918377b30726a', 'Daffa Bagus S P', '10120265', '712-PAO - Daffa.png');

--
-- Triggers `tb_admin`
--
DELIMITER $$
CREATE TRIGGER `log_admin` AFTER UPDATE ON `tb_admin` FOR EACH ROW INSERT INTO log_update_admin VALUES
("", NOW(), OLD.username, OLD.password, OLD.kontak)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `nip` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `nama` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` text NOT NULL,
  `alamat` text NOT NULL,
  `kontak` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `nip`, `username`, `password`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kontak`, `foto`) VALUES
(32, '10001122', 'pevita', 'a722b06f4f94c8b83aa4e2a7c26367a6', 'Pevita Pearce', 'Bandung', '2001-01-10', 'Jl. Selatan No.12', '082121314122', '729-pevita.png'),
(33, '10001133', 'chealse', '8e98ba67ae4049a2fcc320d99e5db852', 'Chealse Islan', 'Bogor', '2000-12-12', 'Jl. Utara No,122', '0895123123312', '417-celsi.png'),
(34, '10001144', 'joko', '278ea841c0d133059032b8a75320c3e0', 'Joko Anwar', 'Magelang', '2000-09-15', 'Jl. Simpang No.10', '0895356401871', '373-joko.png'),
(35, '10001155', 'pidi', 'd93fbaba2bf8549a562f07241852a2f9', 'Pidi Baiq', 'Bandung', '2002-06-12', 'Jl. Mangga No.13', '089535641223', '15-pidi.png');

--
-- Triggers `tb_karyawan`
--
DELIMITER $$
CREATE TRIGGER `log_karyawan` AFTER UPDATE ON `tb_karyawan` FOR EACH ROW INSERT INTO log_update_karyawan VALUES
("", NOW(), OLD.username, OLD.password, OLD.alamat, OLD.kontak)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_keterangan`
--

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `nip` text NOT NULL,
  `nama` text NOT NULL,
  `keterangan` text NOT NULL,
  `alasan` text NOT NULL,
  `tanggal` text NOT NULL,
  `jam` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_keterangan`
--

INSERT INTO `tb_keterangan` (`id`, `nip`, `nama`, `keterangan`, `alasan`, `tanggal`, `jam`, `foto`) VALUES
(5, '10001144', 'Joko Anwar', 'Sakit', 'Demam', '05-08-2022', '06:21 pm', '676-sakit.png'),
(6, '10001155', 'Pidi Baiq', 'Ijin', 'izin manggung', '05-08-2022', '06:21 pm', '315-izin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jam_masuk`
--
ALTER TABLE `jam_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_update_admin`
--
ALTER TABLE `log_update_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_update_karyawan`
--
ALTER TABLE `log_update_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jam_masuk`
--
ALTER TABLE `jam_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_update_admin`
--
ALTER TABLE `log_update_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_update_karyawan`
--
ALTER TABLE `log_update_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
