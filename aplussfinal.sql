-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 11:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appujianessay`
--

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) UNSIGNED NOT NULL,
  `id_jenis_ujian` int(11) UNSIGNED DEFAULT NULL,
  `judul_ujian` varchar(45) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `durasi_ujian` time NOT NULL,
  `durasi_per_soal` time DEFAULT NULL,
  `bobot_per_soal` enum('tampilkan','sembunyikan') NOT NULL DEFAULT 'sembunyikan',
  `bobot_total` int(5) UNSIGNED NOT NULL,
  `status_ujian` enum('draft','akan dimulai','sedang berlangsung','selesai') NOT NULL,
  `tipe_penilaian` enum('automatis','manual','campuran','') DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_jenis_ujian`, `judul_ujian`, `tanggal_mulai`, `waktu_mulai`, `durasi_ujian`, `durasi_per_soal`, `bobot_per_soal`, `bobot_total`, `status_ujian`, `tipe_penilaian`, `aktif`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Penilaian Harian Bahasa Indonesia', '2022-10-09', '14:12:00', '01:00:00', '00:03:00', 'sembunyikan', 100, 'akan dimulai', 'campuran', 1, 'testing #14', '2022-03-07 23:21:52', '2022-03-09 13:18:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`),
  ADD KEY `id_jenis_ujian` (`id_jenis_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`id_jenis_ujian`) REFERENCES `ref_jenis_ujian` (`id_jenis_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
