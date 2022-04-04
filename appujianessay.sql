-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2021 at 11:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

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
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `kode_captcha` int(11) UNSIGNED NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `NIDN` varchar(30) DEFAULT NULL,
  `NIDK` varchar(30) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telp` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `id_user`, `NIP`, `NIDN`, `NIDK`, `nama_lengkap`, `alamat`, `nomor_telp`, `created_at`, `updated_at`) VALUES
(1, 116, '1910012345678900', '1111111111', '1111111111', 'Hayley Deem', 'Jln. Margonda raya no 3', '081256789012', '2021-10-06 07:14:44', '2021-10-25 18:20:41'),
(2, 117, '1910012345678901', '1111111112', '1111111112', 'Orson Alvarez', 'Jln.jakatarup.no 44', '081256789014', '2021-10-06 07:14:44', '2021-10-25 18:20:41'),
(3, 118, '1910012345678903', '1111111115', '1111111115', 'Neriah Merrill', NULL, '081256789016', '2021-10-06 07:14:44', NULL),
(4, 119, '1910012345678904', '1111111117', '1111111117', 'Ebony Wooten', NULL, '081256789018', '2021-10-06 07:14:45', NULL),
(5, 120, '1910012345678905', '1111111119', '1111111119', 'Michalina Fraser', NULL, '081256789020', '2021-10-06 07:14:45', NULL),
(6, 121, '1910012345678906', '1111111121', '1111111121', 'Aila Parrish', NULL, '081256789022', '2021-10-06 07:14:45', NULL),
(7, 122, '1910012345678907', '1111111123', '1111111123', 'Elana Charles', NULL, '081256789024', '2021-10-06 07:14:45', NULL),
(8, 123, '1910012345678908', '1111111125', '1111111125', 'Alannah Herbert', NULL, '081256789026', '2021-10-06 07:14:46', NULL),
(9, 124, '1910012345678909', '1111111127', '1111111127', 'Fardeen Pate', NULL, '081256789028', '2021-10-06 07:14:46', NULL),
(10, 125, '1910012345678910', '1111111129', '1111111129', 'Loretta Porter', NULL, '081256789030', '2021-10-06 07:14:47', NULL),
(11, 126, '1910012345678911', '1111111131', '1111111131', 'Reyansh Barclay', NULL, '081256789032', '2021-10-06 07:14:47', NULL),
(12, 127, '1910012345678912', '1111111133', '1111111134', 'Jack Serrano', NULL, '081256789034', '2021-10-06 07:14:47', NULL),
(13, 128, '1910012345678913', '1111111135', '1111111135', 'Naomi Lara', NULL, '081256789036', '2021-10-06 07:14:47', NULL),
(14, 129, '1910012345678914', '1111111137', '1111111137', 'Beatriz Portillo', NULL, '081256789038', '2021-10-06 07:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_seksi` int(20) UNSIGNED NOT NULL,
  `kode_matkul` int(11) UNSIGNED NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(25) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_seksi`, `kode_matkul`, `hari`, `jam`, `deskripsi`) VALUES
(1912600000, 50050001, 'senin', '08:00 - 09:00', 'Ruang 304'),
(1912600001, 50050001, 'senin', '09:00 - 10:00', NULL),
(1912600002, 50050002, 'selasa', '08:00 - 09:00', NULL),
(1912600003, 50050002, 'selasa', '09:00 - 10:00', NULL),
(1912600004, 50050003, 'selasa', '10:00 - 11:00', NULL),
(1912600005, 50050003, 'selasa', '13:00 - 14:00', NULL),
(1912600006, 50050004, 'rabu', '08:00 - 09:45', NULL),
(1912600007, 50050004, 'rabu', '09:45 - 11:45', NULL),
(1912600008, 50050005, 'rabu', '08:00 - 09:00', NULL),
(1912600009, 50050005, 'kamis', '09:00 - 10:00', 'Ruang 301'),
(1912600010, 50050006, 'kamis', '08:00 - 09:00', NULL),
(1912600011, 50050006, 'kamis', '09:00 - 10:00', NULL),
(1912600012, 50050007, 'selasa', '08:00 - 09:00', NULL),
(1912600013, 50050007, 'selasa', '09:00 - 10:00', NULL),
(1912600014, 50050008, 'senin', '10:00 - 11:00', NULL),
(1912600015, 50050008, 'senin', '13:00 - 14:00', NULL),
(1912600016, 50050009, 'jumat', '08:00 - 09:45', NULL),
(1912600017, 50050009, 'jumat', '09:45 - 11:45', NULL),
(1912600018, 50050010, 'jumat', '08:00 - 09:00', NULL),
(1912600019, 50050010, 'jumat', '09:00 - 10:00', NULL),
(1912600020, 50050011, 'selasa', '08:00 - 09:00', NULL),
(1912600021, 50050011, 'rabu', '09:00 - 10:00', NULL),
(1912600022, 50050012, 'kamis', '08:00 - 09:00', NULL),
(1912600023, 50050012, 'kamis', '09:00 - 10:00', NULL),
(1912600024, 50050013, 'kamis', '10:00 - 11:00', NULL),
(1912600025, 50050014, 'kamis', '13:00 - 14:00', NULL),
(1912600026, 50050015, 'kamis', '08:00 - 09:45', 'Ruang 208');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_pw`
--

CREATE TABLE `lupa_pw` (
  `kode_reset_pw` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('sudah','belum') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `kode_mhs` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `NIM` varchar(30) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telp` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`kode_mhs`, `id_user`, `NIM`, `nama_lengkap`, `alamat`, `nomor_telp`, `created_at`, `updated_at`) VALUES
(1, 16, '1912627000', 'Kingsley Lyons', NULL, '081234567000', '2021-09-30 06:28:23', NULL),
(2, 17, '1912627001', 'Manahil Vincent', NULL, '081234567002', '2021-09-30 06:28:23', NULL),
(3, 18, '1912627002', 'Darrell Mccarthy', NULL, '081234567004', '2021-09-30 06:28:24', NULL),
(4, 19, '1912627003', 'Dilara Dudley', NULL, '081234567006', '2021-09-30 06:28:24', NULL),
(5, 20, '1912627004', 'Patrik Miranda', NULL, '081234567008', '2021-09-30 06:28:24', NULL),
(6, 21, '1912627005', 'Farhana Macfarlane', NULL, '081234567010', '2021-09-30 06:28:24', NULL),
(7, 22, '1912627006', 'Scarlet Shaffer', NULL, '081234567012', '2021-09-30 06:28:25', NULL),
(8, 23, '1912627007', 'Freddie Mcfadden', NULL, '081234567014', '2021-09-30 06:28:25', NULL),
(9, 24, '1912627008', 'Braden Nicholson', NULL, '081234567016', '2021-09-30 06:28:25', NULL),
(10, 25, '1912627009', 'Heidi Schofield', NULL, '081234567018', '2021-09-30 06:28:25', NULL),
(11, 26, '1912627010', 'Tyler-James Gamble', NULL, '081234567020', '2021-09-30 06:28:25', NULL),
(12, 27, '1912627011', 'Tommie Fraser', NULL, '081234567022', '2021-09-30 06:28:26', NULL),
(13, 28, '1912627012', 'Zhane Burns', NULL, '081234567024', '2021-09-30 06:28:26', NULL),
(14, 29, '1912627013', 'Jess O\'Doherty', NULL, '081234567026', '2021-09-30 06:28:26', NULL),
(15, 30, '1912627014', 'Phyllis Johns', NULL, '081234567028', '2021-09-30 06:28:26', NULL),
(16, 31, '1912627015', 'Bree Merritt', NULL, '081234567030', '2021-09-30 06:28:27', NULL),
(17, 32, '1912627016', 'Alanah Aldred', NULL, '081234567032', '2021-09-30 06:28:27', NULL),
(18, 33, '1912627017', 'Seth Kaufman', NULL, '081234567034', '2021-09-30 06:28:27', NULL),
(19, 34, '1912627018', 'Ewen Huber', NULL, '081234567036', '2021-09-30 06:28:27', NULL),
(20, 35, '1912627019', 'Blaine Arias', NULL, '081234567038', '2021-09-30 06:28:27', NULL),
(21, 36, '1912627020', 'Thierry Larsen', NULL, '081234567040', '2021-09-30 06:28:28', NULL),
(22, 37, '1912627021', 'Nathaniel Parker', NULL, '081234567042', '2021-09-30 06:28:28', NULL),
(23, 38, '1912627022', 'Geraint Rhodes', NULL, '081234567044', '2021-09-30 06:28:29', NULL),
(24, 39, '1912627023', 'Olly Schwartz', NULL, '081234567046', '2021-09-30 06:28:29', NULL),
(25, 40, '1912627024', 'Samirah Lugo', NULL, '081234567048', '2021-09-30 06:28:29', NULL),
(26, 41, '1912627025', 'Mekhi Rooney', NULL, '081234567050', '2021-09-30 06:28:30', NULL),
(27, 42, '1912627026', 'Saad Lord', NULL, '081234567052', '2021-09-30 06:28:30', NULL),
(28, 43, '1912627027', 'Arwa Lester', NULL, '081234567054', '2021-09-30 06:28:30', NULL),
(29, 44, '1912627028', 'Theon Carroll', NULL, '081234567056', '2021-09-30 06:28:31', NULL),
(30, 45, '1912627029', 'Maizie Lott', NULL, '081234567058', '2021-09-30 06:28:31', NULL),
(31, 46, '1912627030', 'Ewan Rawlings', NULL, '081234567060', '2021-09-30 06:28:31', NULL),
(32, 47, '1912627031', 'Shakeel Lopez', NULL, '081234567062', '2021-09-30 06:28:32', NULL),
(33, 48, '1912627032', 'Becky Miller', NULL, '081234567064', '2021-09-30 06:28:32', NULL),
(34, 49, '1912627033', 'Demi-Lee Murillo', NULL, '081234567066', '2021-09-30 06:28:32', NULL),
(35, 50, '1912627034', 'Shakil O\'Quinn', NULL, '081234567068', '2021-09-30 06:28:33', NULL),
(36, 51, '1912627035', 'Tianna Velasquez', NULL, '081234567070', '2021-09-30 06:28:33', NULL),
(37, 52, '1912627036', 'Kamil Cowan', NULL, '081234567072', '2021-09-30 06:28:34', NULL),
(38, 53, '1912627037', 'Mariah Begum', NULL, '081234567074', '2021-09-30 06:28:34', NULL),
(39, 54, '1912627038', 'Oakley Whitaker', NULL, '081234567076', '2021-09-30 06:28:34', NULL),
(40, 55, '1912627039', 'Amayah Dickinson', NULL, '081234567078', '2021-09-30 06:28:35', NULL),
(41, 56, '1912627040', 'Tomi Kaur', NULL, '081234567080', '2021-09-30 06:28:35', NULL),
(42, 57, '1912627041', 'Balraj Newton', NULL, '081234567082', '2021-09-30 06:28:35', NULL),
(43, 58, '1912627042', 'Ryker Cousins', NULL, '081234567084', '2021-09-30 06:28:36', NULL),
(44, 59, '1912627043', 'Kathryn Mcmanus', NULL, '081234567086', '2021-09-30 06:28:36', NULL),
(45, 60, '1912627044', 'Homer Andrews', NULL, '081234567088', '2021-09-30 06:28:37', NULL),
(46, 61, '1912627045', 'Alexandra Harding', NULL, '081234567090', '2021-09-30 06:28:37', NULL),
(47, 62, '1912627046', 'Calum Carver', NULL, '081234567092', '2021-09-30 06:28:38', NULL),
(48, 63, '1912627047', 'Kelsie Valencia', NULL, '081234567094', '2021-09-30 06:28:38', NULL),
(49, 64, '1912627048', 'Brody Hayden', NULL, '081234567096', '2021-09-30 06:28:38', NULL),
(50, 65, '1912627049', 'Tilly Humphrey', NULL, '081234567098', '2021-09-30 06:28:38', NULL),
(51, 66, '1912627050', 'Jaxson Tapia', NULL, '081234567100', '2021-09-30 06:28:39', NULL),
(52, 67, '1912627051', 'Khadeeja Croft', NULL, '081234567102', '2021-09-30 06:28:39', NULL),
(53, 68, '1912627052', 'Shayan Donovan', NULL, '081234567104', '2021-09-30 06:28:39', NULL),
(54, 69, '1912627053', 'Inez Cohen', NULL, '081234567106', '2021-09-30 06:28:39', NULL),
(55, 70, '1912627054', 'Pearce Appleton', NULL, '081234567108', '2021-09-30 06:28:39', NULL),
(56, 71, '1912627055', 'Tahmina Mccoy', NULL, '081234567110', '2021-09-30 06:28:40', NULL),
(57, 72, '1912627056', 'Ronald Jennings', NULL, '081234567112', '2021-09-30 06:28:40', NULL),
(58, 73, '1912627057', 'Cohen Mathis', NULL, '081234567114', '2021-09-30 06:28:40', NULL),
(59, 74, '1912627058', 'Maeve Reid', NULL, '081234567116', '2021-09-30 06:28:41', NULL),
(60, 75, '1912627059', 'Tiya Salt', NULL, '081234567118', '2021-09-30 06:28:41', NULL),
(61, 76, '1912627060', 'Ivie Barron', NULL, '081234567120', '2021-09-30 06:28:41', NULL),
(62, 77, '1912627061', 'Fox Bright', NULL, '081234567122', '2021-09-30 06:28:41', NULL),
(63, 78, '1912627062', 'Elizabeth Ashley', NULL, '081234567124', '2021-09-30 06:28:42', NULL),
(64, 79, '1912627063', 'Wayne Clegg', NULL, '081234567126', '2021-09-30 06:28:42', NULL),
(65, 80, '1912627064', 'India Huynh', NULL, '081234567128', '2021-09-30 06:28:42', NULL),
(66, 81, '1912627065', 'Emilio Greaves', NULL, '081234567130', '2021-09-30 06:28:43', NULL),
(67, 82, '1912627066', 'Acacia Cartwright', NULL, '081234567132', '2021-09-30 06:28:43', NULL),
(68, 83, '1912627067', 'Cruz Nava', NULL, '081234567134', '2021-09-30 06:28:44', NULL),
(69, 84, '1912627068', 'Abubakar Matthews', NULL, '081234567136', '2021-09-30 06:28:44', NULL),
(70, 85, '1912627069', 'Janice Cordova', NULL, '081234567138', '2021-09-30 06:28:44', NULL),
(71, 86, '1912627070', 'Ephraim Foley', NULL, '081234567140', '2021-09-30 06:28:45', NULL),
(72, 87, '1912627071', 'Ziggy Curry', NULL, '081234567142', '2021-09-30 06:28:45', NULL),
(73, 88, '1912627072', 'Victoria Cantu', NULL, '081234567144', '2021-09-30 06:28:45', NULL),
(74, 89, '1912627073', 'Hilda Odling', NULL, '081234567146', '2021-09-30 06:28:46', NULL),
(75, 90, '1912627074', 'Scarlette Dillon', NULL, '081234567148', '2021-09-30 06:28:46', NULL),
(76, 91, '1912627075', 'Darrel Peralta', NULL, '081234567150', '2021-09-30 06:28:47', NULL),
(77, 92, '1912627076', 'Amy Atkins', NULL, '081234567152', '2021-09-30 06:28:47', NULL),
(78, 93, '1912627077', 'Farhana Easton', NULL, '081234567154', '2021-09-30 06:28:47', NULL),
(79, 94, '1912627078', 'Ayesha Stewart', NULL, '081234567156', '2021-09-30 06:28:48', NULL),
(80, 95, '1912627079', 'Jillian Barnett', NULL, '081234567158', '2021-09-30 06:28:48', NULL),
(81, 96, '1912627080', 'Duane Whittaker', NULL, '081234567160', '2021-09-30 06:28:48', NULL),
(82, 97, '1912627081', 'Cherise Mcintosh', NULL, '081234567162', '2021-09-30 06:28:49', NULL),
(83, 98, '1912627082', 'Joao Young', NULL, '081234567164', '2021-09-30 06:28:49', NULL),
(84, 99, '1912627083', 'Laaibah Neville', NULL, '081234567166', '2021-09-30 06:28:49', NULL),
(85, 100, '1912627084', 'Azra Schmidt', NULL, '081234567168', '2021-09-30 06:28:49', NULL),
(86, 101, '1912627085', 'Kacper Mejia', NULL, '081234567170', '2021-09-30 06:28:50', NULL),
(87, 102, '1912627086', 'Miranda Noel', NULL, '081234567172', '2021-09-30 06:28:50', NULL),
(88, 103, '1912627087', 'Jorja Owen', NULL, '081234567174', '2021-09-30 06:28:50', NULL),
(89, 104, '1912627088', 'Carson Walls', NULL, '081234567176', '2021-09-30 06:28:51', NULL),
(90, 105, '1912627089', 'Keiren Mcleod', NULL, '081234567178', '2021-09-30 06:28:51', NULL),
(91, 106, '1912627090', 'Jeff Mills', NULL, '081234567180', '2021-09-30 06:28:51', NULL),
(92, 107, '1912627091', 'Merlin Leblanc', NULL, '081234567182', '2021-09-30 06:28:52', NULL),
(93, 108, '1912627092', 'Abi Blake', NULL, '081234567184', '2021-09-30 06:28:52', NULL),
(94, 109, '1912627093', 'Shanna Farrington', NULL, '081234567186', '2021-09-30 06:28:52', NULL),
(95, 110, '1912627094', 'Rui Orr', NULL, '081234567188', '2021-09-30 06:28:53', NULL),
(96, 111, '1912627095', 'Chase Woods', NULL, '081234567190', '2021-09-30 06:28:53', NULL),
(97, 112, '1912627096', 'Zacharias Talbot', NULL, '081234567192', '2021-09-30 06:28:53', NULL),
(98, 113, '1912627097', 'Nikolas Forster', NULL, '081234567194', '2021-09-30 06:28:54', NULL),
(99, 114, '1912627098', 'Madelaine Lowe', NULL, '081234567196', '2021-09-30 06:28:54', NULL),
(100, 115, '2017190000', 'Sani simonangkir', NULL, '0814457790891', '2021-09-30 06:39:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matkul` int(11) UNSIGNED NOT NULL,
  `kode_kel_mk` int(11) UNSIGNED NOT NULL,
  `kode_peminatan` int(11) UNSIGNED DEFAULT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `semester` int(11) UNSIGNED DEFAULT NULL,
  `sks` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matkul`, `kode_kel_mk`, `kode_peminatan`, `nama_matkul`, `semester`, `sks`, `deskripsi`) VALUES
(50050000, 1, 4, 'Pendidikan Agama Islam', 1, 2, 'test'),
(50050001, 1, 4, 'Pendidikan Agama Kristen', 1, 2, 'test'),
(50050002, 4, 4, 'Pancasila', 1, 2, NULL),
(50050003, 4, 4, 'Bahasa Indonesia', 2, 2, NULL),
(50050004, 3, 4, 'Landasan Ilmu Pendidikan', 2, 4, NULL),
(50050005, 3, 4, 'Psikologi Perkembangan', 1, 2, NULL),
(50050006, 3, 4, 'Teori Belajar dan Pembelajaran', 4, 4, NULL),
(50050007, 1, 2, 'Basis Data', 1, 3, NULL),
(50050008, 1, 2, 'Rekayasa Perangkat Lunak', 1, 3, NULL),
(50050009, 1, 1, 'Desain Web', 1, 3, NULL),
(50050010, 1, 1, 'Animasi Komputer', 1, 3, NULL),
(50050011, 1, 3, 'Perancangan Jaringan Komputer', 1, 3, NULL),
(50050012, 1, 3, 'Pemrograman Jaringan', 1, 3, NULL),
(50050013, 2, 4, 'Kriptografi', 8, 3, NULL),
(50050014, 2, 4, 'Data Mining', 8, 2, NULL),
(50050015, 2, 4, 'e-Commerce', 8, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket_soal`
--

CREATE TABLE `paket_soal` (
  `kode_paket` varchar(11) NOT NULL,
  `kode_jenis_ujian` int(11) UNSIGNED DEFAULT NULL,
  `judul_ujian` varchar(100) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `durasi_ujian` time NOT NULL,
  `bobot_total` int(11) UNSIGNED NOT NULL,
  `status` enum('terbit','draft') NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `kode_pengumuman` int(11) UNSIGNED NOT NULL,
  `pengumuman` text NOT NULL,
  `status` enum('tampil','tidak_tampil') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ref_jenis_ujian`
--

CREATE TABLE `ref_jenis_ujian` (
  `kode_jenis_ujian` int(11) UNSIGNED NOT NULL,
  `jenis_ujian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_jenis_ujian`
--

INSERT INTO `ref_jenis_ujian` (`kode_jenis_ujian`, `jenis_ujian`) VALUES
(1, 'Penilaian Harian'),
(2, 'Penilaian Tengah Semester'),
(3, 'Penilaian Akhir Semester'),
(4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kel_matkul`
--

CREATE TABLE `ref_kel_matkul` (
  `kode_kel_mk` int(11) UNSIGNED NOT NULL,
  `kelompok_matakuliah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_kel_matkul`
--

INSERT INTO `ref_kel_matkul` (`kode_kel_mk`, `kelompok_matakuliah`) VALUES
(3, 'MKDK'),
(4, 'MKU'),
(2, 'Peminatan'),
(1, 'Wajib');

-- --------------------------------------------------------

--
-- Table structure for table `ref_peminatan`
--

CREATE TABLE `ref_peminatan` (
  `kode_peminatan` int(11) UNSIGNED NOT NULL,
  `peminatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_peminatan`
--

INSERT INTO `ref_peminatan` (`kode_peminatan`, `peminatan`) VALUES
(4, NULL),
(1, 'Multimedia'),
(2, 'Rekayasa Perangkat Lunak'),
(3, 'Teknik Komputer Jaringan');

-- --------------------------------------------------------

--
-- Table structure for table `ref_role`
--

CREATE TABLE `ref_role` (
  `kode_role` int(11) UNSIGNED NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_role`
--

INSERT INTO `ref_role` (`kode_role`, `role`) VALUES
(1, 'Admin'),
(2, 'Dosen'),
(3, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `ref_semester`
--

CREATE TABLE `ref_semester` (
  `kode_semester` int(11) UNSIGNED NOT NULL,
  `semester` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_semester`
--

INSERT INTO `ref_semester` (`kode_semester`, `semester`) VALUES
(8, NULL),
(1, '117'),
(2, '118'),
(3, '119'),
(4, '120'),
(5, '121'),
(6, '122'),
(7, '123'),
(9, '124');

-- --------------------------------------------------------

--
-- Table structure for table `rel_dosen_kelas`
--

CREATE TABLE `rel_dosen_kelas` (
  `id` int(20) UNSIGNED NOT NULL,
  `kode_dosen` int(11) UNSIGNED NOT NULL,
  `kode_seksi` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_dosen_kelas`
--

INSERT INTO `rel_dosen_kelas` (`id`, `kode_dosen`, `kode_seksi`) VALUES
(14, 1, 1912600008),
(15, 1, 1912600018),
(4, 3, 1912600000),
(5, 5, 1912600000),
(8, 5, 1912600003),
(7, 7, 1912600002),
(9, 8, 1912600004),
(10, 9, 1912600004),
(11, 9, 1912600005),
(12, 11, 1912600006),
(6, 12, 1912600001),
(13, 14, 1912600007);

-- --------------------------------------------------------

--
-- Table structure for table `rel_kelas_paketsoal`
--

CREATE TABLE `rel_kelas_paketsoal` (
  `id` int(20) UNSIGNED NOT NULL,
  `kode_seksi` int(20) UNSIGNED NOT NULL,
  `kode_paket` varchar(11) NOT NULL,
  `jenis_ujian` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status_civitas` enum('aktif','tidak_aktif') NOT NULL DEFAULT 'aktif',
  `kode_role` int(11) UNSIGNED NOT NULL,
  `foto_profil` varchar(250) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status_civitas`, `kode_role`, `foto_profil`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'zellev77', 'zlv123@gmail.com', '$2b$10$LDLfxYIsUBz0ksxS3ig5zOlLn71laOT.OrCEsU3sBLiyCAtv3FyGm', 'aktif', 1, NULL, 'test', '2021-09-30 05:51:43', '2021-10-25 16:45:57'),
(16, 'lele', 'lele@gmail.com', '$2b$10$mgD/WcvkDj9.FRfkISBYR.CUxHZRQGT084UujzGuyuQL49uJfzT0G', 'aktif', 3, NULL, 'test', '2021-09-30 06:28:23', '2021-10-25 16:45:57'),
(17, 'User 17', 'chaikin@msn.com', '$2b$10$W6rtJ15jc.W.rU1Y9UtQ.OQaqZ9M2LJoIxzQW4JmoHw/EPl5CrEaS', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:23', NULL),
(18, 'User 18', 'natepuri@comcast.net', '$2b$10$tSttSLTeHE2vFDfxtTuBH.5KbWLaLs2z6fm.IJ57tdm2czNpty0ru', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:24', NULL),
(19, 'User 19', 'cantu@msn.com', '$2b$10$2EuyYTmS3sOlqAxHUY3y4elbWnbFqXuEbyn0ABaVPIMhkUUX4mbyq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:24', NULL),
(20, 'User 20', 'jfreedma@verizon.net', '$2b$10$HNCfm5u.sr84NNUIpXdVvO/7fpYumB0W3QVxNj49oHE1Bfob.Kula', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:24', NULL),
(21, 'User 21', 'wetter@verizon.net', '$2b$10$hJ9.Hjw58BBZ3PF76ITOQuObgTRFm8NMfJRQ4XGQ40Zy2FcY0nXeq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:24', NULL),
(22, 'User 22', 'wsnyder@aol.com', '$2b$10$OpP06NVuAroOKxTWXtE4d.cxwS3l1R2Ceo64/cEMc2eYJrr2GYJNK', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:24', NULL),
(23, 'User 23', 'durist@yahoo.com', '$2b$10$PEIcJRe0rxvl9E1EK.ZHjOzmbq3yJIL5wi1TB7aNIGGim5WpY4L9W', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:25', NULL),
(24, 'User 24', 'gozer@yahoo.com', '$2b$10$ufgQDqO//9LhHWxtPt1O4uKtSGuu5rv74XN7AxOyPYUaIluX4Dd86', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:25', NULL),
(25, 'User 25', 'miami@verizon.net', '$2b$10$GRPHYUWl0YtmUJKT1sGVeu6.Zoa1aew6AGsFb5rd5WfWvdeX17wD6', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:25', NULL),
(26, 'User 26', 'grinder@yahoo.ca', '$2b$10$iRNKEC.1CDqrTr5NX.nix.eYtR5u5H4ckKq4vCg/Tim/vvXHtNBs6', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:25', NULL),
(27, 'User 27', 'denism@icloud.com', '$2b$10$MoEdIe9rWb1TpFO4PsSWyepiR4YxzzJFAfplqHf7jlGsVcBtDZNHq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:26', NULL),
(28, 'User 28', 'kaiser@outlook.com', '$2b$10$vb0srQH3xSeoNtkJ186UBOl5/sCi5vdb79O32Qw6.BUJHCeIG1pta', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:26', NULL),
(29, 'User 29', 'claypool@sbcglobal.net', '$2b$10$Hd6lR5WWOVPyj30HpXOxQulIzxrk5./gXfu5Tei1eDec9wZSsNj2q', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:26', NULL),
(30, 'User 30', 'zyghom@icloud.com', '$2b$10$hYRg2QWmAFZ5yGxWHRQupuYt8ZWiFKRJ9jl.wPWgFQtgueW1B1l6.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:26', NULL),
(31, 'User 31', 'lbaxter@live.com', '$2b$10$3ZzMm6.7o8Cb2MttIhJA5.KVHJFPoQ5c7JW/nULtzf6wqRmDajAWu', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:26', NULL),
(32, 'User 32', 'jaffe@me.com', '$2b$10$fbN.0i9BaeVxNRVFs9aAW.jv133GTmHnTNNb9TVQG0J4D7sFQK0.q', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:27', NULL),
(33, 'User 33', 'isaacson@live.com', '$2b$10$TBf95b11z98SSjlQ8sbYT.er3iM3e/ADAoBH6gTzazPdVs.lag2Hq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:27', NULL),
(34, 'User 34', 'ijackson@comcast.net', '$2b$10$J0x/Vye1efDRfsQIGz2.Rea23Z57xgsGpDoYeucVG.rfR6B.W4Xz2', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:27', NULL),
(35, 'User 35', 'srour@verizon.net', '$2b$10$..7s/FsXuSw8rC0Jj1IrOeHgywBbVecliHL6Cfrv76T88/sah92Sq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:27', NULL),
(36, 'User 36', 'ovprit@icloud.com', '$2b$10$jZn6Z9pm2Inq5VNTikbv3uGjv8qlD/3BRMhin0I4y0hlMj/rwg2Vu', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:28', NULL),
(37, 'User 37', 'rjones@att.net', '$2b$10$R/eOt889c7Xus1JRg4iqke9tVcwU4ulZ/GpCanBjpeBOtwYsOnJ7G', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:28', NULL),
(38, 'User 38', 'uraeus@me.com', '$2b$10$oTusJr8cItKy1Rd4Ye54Dec8B.5oNMPF7eGBwgq9rLAQjf9SsZO9a', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:28', NULL),
(39, 'User 39', 'heckerman@verizon.net', '$2b$10$S9lnupoFBMR1mEF3TxZ6fuQICRd3suy/eAUSO3Qyjma7nDXNx03JC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:29', NULL),
(40, 'User 40', 'jaarnial@comcast.net', '$2b$10$zXHsKyfFt1oif14nTnDtEOi5lDibat67AuyIKi3.WeRok2witaaCG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:29', NULL),
(41, 'User 41', 'emmanuel@verizon.net', '$2b$10$HX3tEiJzLZEiO2Te4r1s5uBaWOJQX0h/bkUGOkpgwjTnfC9oQZkVO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:30', NULL),
(42, 'User 42', 'pierce@optonline.net', '$2b$10$dFE0TagBetPtnaT2aCkqQOSuWAExeQaIXVIHTxTSXZ/lW8MnJ07UK', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:30', NULL),
(43, 'User 43', 'lstaf@aol.com', '$2b$10$WOt6jsanQTUc8fxJ01I6SOEIuR9U4QKNqKQ3qGE3vsD4Zvztg/1my', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:30', NULL),
(44, 'User 44', 'sequin@hotmail.com', '$2b$10$Ebv61XGVyVwI88ODIBA1CuH9gOEYRyzTNyYk5QMpksXFkUkI6F.O.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:31', NULL),
(45, 'User 45', 'avalon@outlook.com', '$2b$10$Qf6VGYaBTi3wTwq2KK7vFOvb60I5sBgnKjL40k.jROQQJ8E/Z69JO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:31', NULL),
(46, 'User 46', 'rjones@outlook.com', '$2b$10$DCrZxlYX4jBzYBnvxLoJn.8qjC3VVvCP1bPxFjJvsd76d2oEBLXiO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:31', NULL),
(47, 'User 47', 'ismail@gmail.com', '$2b$10$n4CJAEV/wbr4fINlQAbideT3V1isDGyCCtwxRDh4C59WLGu8T3PaG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:31', NULL),
(48, 'User 48', 'catalog@msn.com', '$2b$10$C2rV3pn/DY6uFOH7Kbw9LutbwBrLS1zlOJDPTIzhbXbNOJnElOgTe', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:32', NULL),
(49, 'User 49', 'alfred@hotmail.com', '$2b$10$4G2hHFE34.YJ38tFzVS.1eO94Nh6LUKrfbVyUBLe6cbPMqT61Klra', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:32', NULL),
(50, 'User 50', 'wildixon@verizon.net', '$2b$10$KP551f.HefcOMoLyMsDXQuDL19rERm52Xx/cemxb0jxRbDq6giRby', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:33', NULL),
(51, 'User 51', 'simone@msn.com', '$2b$10$et7Svo.vlc0/dzMLaFVCKeBllGIi5.SPLpr.50C8fMfa4LYRxUdu.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:33', NULL),
(52, 'User 52', 'privcan@comcast.net', '$2b$10$zuObtitVpZB92phLMAO19.k.svhtipkILcrZuTgrzNdaZlwXvc3Ay', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:33', NULL),
(53, 'User 53', 'mstrout@icloud.com', '$2b$10$qutskZ2ifnB8kTKAtDYXaOdsDTdi3BXJlIIWx3ib7nVEprYTjtz0G', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:34', NULL),
(54, 'User 54', 'elmer@yahoo.com', '$2b$10$OXiPpgZC369eDXJfzwrSfe5/jjK6Kg8KH3c2bV69zvByagBA4mldG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:34', NULL),
(55, 'User 55', 'heidrich@hotmail.com', '$2b$10$Poh0xsCG2zQwh2jeDiFHyeEIhY3lZpsoP.j5u9sxY2oKfPpYgQec6', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:35', NULL),
(56, 'User 56', 'tokuhirom@aol.com', '$2b$10$ZQcNwKSftSEzxb8UrE0AJeXtC6j1Q1AAQ6Pmh0tQsU9RPzhlqEvUG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:35', NULL),
(57, 'User 57', 'pereinar@yahoo.com', '$2b$10$tbIslLWNIKWMAFA3ccGOz.0fZ3TP5gKK9Cnj7xk5HdV9Ssh9DDenW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:35', NULL),
(58, 'User 58', 'formis@mac.com', '$2b$10$egugX2djE.LzXFfwcBvNTOLbNDdBh1cNGmkf4RdHxBivRuPlNzg8G', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:36', NULL),
(59, 'User 59', 'johnh@optonline.net', '$2b$10$KgSYChvTWU/6EnR1k.jftusm9Y8uXhxZleNafNnh0hT8VtPXdefsy', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:36', NULL),
(60, 'User 60', 'aukjan@yahoo.ca', '$2b$10$Uu8xMGyeQq4vKqo2xeIfEua6C0W2i6SH11/pBgA80YCH3GFCZUO6W', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:37', NULL),
(61, 'User 61', 'jpflip@msn.com', '$2b$10$EJpgza9OsH9LPCL./UHjXOb5PxRX3iITASeMlP/EStzx6uG2EXaE2', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:37', NULL),
(62, 'User 62', 'murdocj@mac.com', '$2b$10$V4OB2J9M.s3ysIMox7qL5O5BjXaJw1ztUCwecvzNsVLfTZFyFDLJS', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:38', NULL),
(63, 'User 63', 'donev@comcast.net', '$2b$10$Jb8M7lyD3bDjP/Nf9rwFGeR63sneptJvvE6peskxOcSkt19TvqqpW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:38', NULL),
(64, 'User 64', 'hillct@aol.com', '$2b$10$rIz3gkZeOc1p/8pXHuG6L.e6uiWW98xBplnVChvt.dX4hD/KlOZbC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:38', NULL),
(65, 'User 65', 'leakin@icloud.com', '$2b$10$TjeftE1.0d1P0d2Wgr3Vp.0FP8lf3mjf5gZz7T5PIDewwLPcySyyu', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:38', NULL),
(66, 'User 66', 'frosal@verizon.net', '$2b$10$wUDED9uF1HPRMj.stQOltewry7CUSTs.sbmzivjEDxEZLIWXg9LDG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:38', NULL),
(67, 'User 67', 'xtang@outlook.com', '$2b$10$bvlICDI378ZLSJBKTVxEmeQ9Xr8q8w13csb4GuzzisEKe9kJwTiBO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:39', NULL),
(68, 'User 68', 'chinthaka@live.com', '$2b$10$nZ/tPHjFj34gfybmbSxnfOGX9MG0q5wfMt6ScFAFQTHrlv0QYtiMa', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:39', NULL),
(69, 'User 69', 'bruck@icloud.com', '$2b$10$a3bwoRBak7kHv.Gh9WKuiOHyqzxBc7r23iF13SgktQGRlXuzDykom', 'aktif', 3, '3-10-2021_14-17-39-appujian-16-55-41-images.jpg', NULL, '2021-09-30 06:28:39', '2021-10-03 07:17:39'),
(70, 'User 70', 'pgottsch@hotmail.com', '$2b$10$Ul8uJ.pSwbJ1fia.JwbKDu8QFXd4tONUJiGh4ybVhJeO4pm8yScKO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:39', NULL),
(71, 'User 71', 'kaiser@att.net', '$2b$10$Kpa15QMZv87SWNLBOhUTneeDPSKLQ9Z68AFYhC6yadQ3IqJ2XolyW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:40', NULL),
(72, 'User 72', 'bockelboy@sbcglobal.net', '$2b$10$uQCC8ngezy2pBR7sX7Jauug3LuC15HUQO/Mk6MnSz5pIKueSiAE2.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:40', NULL),
(73, 'User 73', 'dhrakar@msn.com', '$2b$10$0JlLZdZzViRgTEnMYWd5xOPFxCry2ggJOTYI0LYSY4yIIHIULRSiq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:40', NULL),
(74, 'User 74', 'marcs@outlook.com', '$2b$10$DSHK6t14phMOjE0MBepZsuXLSXUIGrgzBCrkvgY09q9dtnbhajOaG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:41', NULL),
(75, 'User 75', 'syrinx@yahoo.ca', '$2b$10$6hg3DQvT2PaQnYslv4AE/eE8Vu3sXpnSGGKbj4SjRNSXID59uMnzG', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:41', NULL),
(76, 'User 76', 'yzheng@comcast.net', '$2b$10$lAADgOUAFoc6IINVkvv2cuTXLkZK4zP8LpWJzftLOpMAH8oaM4Td.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:41', NULL),
(77, 'User 77', 'kmself@live.com', '$2b$10$hGT0228VdZeKbtWTI..s4.erzmGSkuerz8boSIF7pyNPDj2R6D3ea', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:41', NULL),
(78, 'User 78', 'josephw@yahoo.com', '$2b$10$UB1DxsgYUZoI3Anh4cp9ceOfeMg1vGgzgPJsuTasSlk/Et7YCpIUW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:42', NULL),
(79, 'User 79', 'mccurley@me.com', '$2b$10$f4FCt.WJ2gzBqGrdc/o.yeNHNFarATG3TLhe4PSYAWd4N2L5DQhni', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:42', NULL),
(80, 'User 80', 'jbailie@att.net', '$2b$10$O.10/Q/rpErEA8..xWbG0uoAjnSlbI3ckJbdjYnbwA81rtErvopzO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:42', NULL),
(81, 'User 81', 'forsberg@optonline.net', '$2b$10$AtL30Gn45H686KfiJRZyWevOE0yoZVx0g/S9NqDCOO.37TuxYvu0W', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:43', NULL),
(82, 'User 82', 'crypt@comcast.net', '$2b$10$QM7JpX1t0uLSXKha1qlOK.d.ttD0Es6UhWcHwUrATeDIarWCfOXyu', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:43', NULL),
(83, 'User 83', 'claypool@icloud.com', '$2b$10$TZsWEzoFGoWpa8CfhgT8Yeb.zHXbJv3n1uV2cpL9AdAI1OGKtClsa', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:44', NULL),
(84, 'User 84', 'ideguy@live.com', '$2b$10$Mq7qdZ91NDVf1pPF0s4CpOB5KoPY1AsSGbVfs8CuRWncT072MQ.EC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:44', NULL),
(85, 'User 85', 'bowmanbs@outlook.com', '$2b$10$AZQMFDLXNuMoJ2vu2pM.H.d/lyawdB3F8o42PLX.K6QkvGrf2aLeK', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:44', NULL),
(86, 'User 86', 'kiddailey@yahoo.com', '$2b$10$bVWuekA3BK///NTxlUTdsOMagMn23JhELod5pFjNpDeA2EDFArKIa', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:45', NULL),
(87, 'User 87', 'snunez@mac.com', '$2b$10$/JrBKDyOkHfEciTQihB2aes.3ed7G92T9G1dsnAqUILhSJu9KBsOm', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:45', NULL),
(88, 'User 88', 'ralamosm@yahoo.ca', '$2b$10$HGKKSHzvdvgA/W/QNZpn2.PWQYBBOBew8Pl3hnNKIY3W8Jr5Kf02G', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:45', NULL),
(89, 'User 89', 'smallpaul@optonline.net', '$2b$10$2owmBJBO5asGR5NLPBlzN.Af5pT8ZeSpiY6Lgv2ZcJ2hC2c86QXTi', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:46', NULL),
(90, 'User 90', 'nicktrig@optonline.net', '$2b$10$3bnf1lJlfc6g6hLR5tGIpeuGoaT7QMiY.RasqA7qMsO76kni9Up5S', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:46', NULL),
(91, 'User 91', 'bancboy@optonline.net', '$2b$10$m8LEuYukqj7AlWlrko0nYeH7ZdZMkL57l7bDEkFhB/7bJW9X2EiZO', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:46', NULL),
(92, 'User 92', 'sinkou@mac.com', '$2b$10$8VbBfsyjq3fx7zeF.Iy0geiypdvdHo/IBToDYeaRJ5Or6q7NxnTPy', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:47', NULL),
(93, 'User 93', 'jsbach@att.net', '$2b$10$67diKoXsTafPmCNpmt0OyeI3jyNQOdD5Xur.nHV2aVFMuGJlEGu2.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:47', NULL),
(94, 'User 94', 'mpiotr@outlook.com', '$2b$10$X74xGHPTiOTrfrlDxENWh.60BThCSC1QXTb8N/XTO7YXpiQ0hK4qa', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:47', NULL),
(95, 'User 95', 'amcuri@live.com', '$2b$10$egC7mTkiAAs8Co0p9Kl/3OVl3q0wh6iEkBdfYWiMK6pbgNicq7SnC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:48', NULL),
(96, 'User 96', 'tamas@optonline.net', '$2b$10$KU0FLizqRhbtJLRY.hvjh.cpc5ZZD6fVIREKGAji5zltGADvoDGDa', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:48', NULL),
(97, 'User 97', 'uncled@live.com', '$2b$10$zXB411TLl.8r9gFxL5qUweS/8BpD/.RrLNFbYK65XM26xptbys6vW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:48', NULL),
(98, 'User 98', 'mddallara@att.net', '$2b$10$RSLEDzs6KSLyOjJfiqUz9OaKECZ3/t2HRqLwH3Em3aNlwmTrvbQUm', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:49', NULL),
(99, 'User 99', 'ehood@icloud.com', '$2b$10$Ll1FfgXHg5W58WXnmiJMUenYotRTfp5wX8plTQ15w8w0MCl9N/YW.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:49', NULL),
(100, 'User 100', 'clkao@me.com', '$2b$10$dLrapG/MxlqKpTco1X25hOMYtqlJrPktxec9u.RFwvqgZbq0MoM6a', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:49', NULL),
(101, 'User 101', 'breegster@yahoo.com', '$2b$10$fSbDJYZDXfaEp4iy.tJPx.gZ0CsCJD8nXkWl1Y86BSe9V6oQ1AJxW', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:50', NULL),
(102, 'User 102', 'leocharre@comcast.net', '$2b$10$pGrOuqyaG.cJSA40OBjbF.6zvpknFCTikXMNiEBugijQO0UulfAg.', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:50', NULL),
(103, 'User 103', 'thrymm@live.com', '$2b$10$8ifUFfY/oCOrf1BS24JNK.twXjD3YaiR3u8/APon6zVcrVwt/6J9i', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:50', NULL),
(104, 'User 104', 'seemant@msn.com', '$2b$10$ve.Bl/Xw4ep27t8JJ6uJrO3xslSc/djPHs7iwji4jfXBlR9.n/U7C', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:51', NULL),
(105, 'User 105', 'sagal@att.net', '$2b$10$0lZJWmU2Yrp33MunmWCBhO.a21P5DXY9cFX8YAlNDhi4boxA9x9SK', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:51', NULL),
(106, 'User 106', 'munson@att.net', '$2b$10$qixaFr3CLVjlJjKvAvi5v.0H6j9U9L3A9652K6kmyVYUTXbo35bfe', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:51', NULL),
(107, 'User 107', 'dvdotnet@live.com', '$2b$10$UsmNsp2kL25qIcLujItG7e1HGpDqFi9fL0APMc5qB2BNw9m.5I1dm', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:52', NULL),
(108, 'User 108', 'yangyan@comcast.net', '$2b$10$gTHZWdFCVmWX1/80lDVvXebfSo6YDISR6iXx37csTh/ynrIjj1sDy', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:52', NULL),
(109, 'User 109', 'dkeeler@sbcglobal.net', '$2b$10$M1K3.bJnIwgCsvhnZAJ74OhGFW5sLkUP3SddLfmUZdyq46vM0afd2', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:52', NULL),
(110, 'User 110', 'daveewart@sbcglobal.net', '$2b$10$2yrc3DE8tLgp/QH35eTyPuPjYyHp7SQoT9SOVIHIDmV2fJ9c8rAH6', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:53', NULL),
(111, 'User 111', 'erynf@yahoo.ca', '$2b$10$J18NauhT6/LVVo0LOO1Rv.1jJuR6Dzn6hUga99v/c.YWGuuaGDhMe', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:53', NULL),
(112, 'User 112', 'irving@att.net', '$2b$10$ytYCrysoKiCbOY1VAE.BZe4Wj3RCWIc2.XIpJTQqy6maC/G0TshTq', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:53', NULL),
(113, 'User 113', 'ghaviv@comcast.net', '$2b$10$sV8/6TjJ4h6gROAxYHsZ7eXK7FBNEbmg9KBK375yukVjvRdhBxlTC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:54', NULL),
(114, 'User 114', 'temmink@icloud.com', '$2b$10$.wU51x7f5Y45H5zOBDnFv.MGWl/fv/yrdykHSEmOIrPLgeqTZGPVC', 'aktif', 3, NULL, NULL, '2021-09-30 06:28:54', NULL),
(115, 'User 115', 'Sani@gmail.com', '$2b$10$N1Ydozo0wNWYfC1Eo58xdO3eXn.r4/XdL9o1w60xPxDqLZbeIaJgm', 'aktif', 3, NULL, NULL, '2021-09-30 06:39:14', NULL),
(116, 'User 116', 'richard@gmail.com', '$2b$10$84POKfD/7W6t6jma2L533u7QeKSmGmTLVPGwsUTfoKTN2i5ZR1Poq', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:43', NULL),
(117, 'User 117', 'twoflower@mac.com', '$2b$10$KV5B0sQ234hcRdoHWemlB.0o5T9H3yVxmjQSK.hZVKYtHtmgj3crK', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:44', NULL),
(118, 'User 118', 'burniske@aol.com', '$2b$10$IYMRSWoR8X4oG0M4rtG.LuhHuvl2EWSS6DLBvJxtqggvLmPmBzAkW', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:44', NULL),
(119, 'User 119', 'garland@yahoo.ca', '$2b$10$2KDbqtDYu7KuL8JpuGgoPOzqIidirJ7JQJoLgV0qoUO6SzuEGRaEK', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:44', NULL),
(120, 'User 120', 'wkrebs@att.net', '$2b$10$0ICEg8ysF.UseD74EL.2TuJekJMH71vy.tV.1xFC5v1Enq46MCEHC', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:45', NULL),
(121, 'User 121', 'tromey@att.net', '$2b$10$TL/XL8PUKaf19mAQzQ6wGuF7P7kOtWzj2wCN4/TOlHs4qT8xYW9Vu', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:45', NULL),
(122, 'User 122', 'citadel@aol.com', '$2b$10$cb38kkH9W7u514Ls6hJfze38mj9yZTo7g4Tf5JESIkP69/toSzdkO', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:45', NULL),
(123, 'User 123', 'policies@verizon.net', '$2b$10$iMBdlO2NcozFEOZVSvSQX.ATkXDm1gGC6w/yi2z1Oko/L5iobAj8S', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:46', NULL),
(124, 'User 124', 'muzzy@verizon.net', '$2b$10$T50GsHo8VSvIQeqWawWfDe/uOQ209w.kqc68pljatmU5rqODqtXHi', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:46', NULL),
(125, 'User 125', 'mschwartz@sbcglobal.net', '$2b$10$6E9GD7N/Jtxx.eMLWchYBe.LSl0jgJQ4/ut8JFiHLxG5vzQaeWiuS', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:46', NULL),
(126, 'User 126', 'luebke@optonline.net', '$2b$10$o0p/ViLpL.plreidTHQhmeBsS99hyCEbuvAohO2bdbT3G1aS1NuX.', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:47', NULL),
(127, 'User 127', 'zavadsky@me.com', '$2b$10$/lcv8s7HCaGRZLa0IbHgFuzdQQ3b9NMlUbJS1QCreZz7uN1pu8Jke', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:47', NULL),
(128, 'User 128', 'pappp@optonline.net', '$2b$10$evmYwhLGvk5sA29YZ13rHunj246wwBjveIs8zifAjCWedXeS.M7ka', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:47', NULL),
(129, 'User 129', 'drjlaw@yahoo.com', '$2b$10$K6gNS2Sf3Wwuk3pcmavBGu/HjNpbABGDsQ.Vxdw0uw6481ygI8f76', 'aktif', 2, NULL, NULL, '2021-10-06 07:14:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`kode_captcha`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`),
  ADD UNIQUE KEY `NIDK` (`NIDK`),
  ADD UNIQUE KEY `NIDN` (`NIDN`),
  ADD UNIQUE KEY `NIP` (`NIP`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_seksi`),
  ADD KEY `kode_matkul` (`kode_matkul`);

--
-- Indexes for table `lupa_pw`
--
ALTER TABLE `lupa_pw`
  ADD PRIMARY KEY (`kode_reset_pw`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`kode_mhs`),
  ADD UNIQUE KEY `NIM` (`NIM`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD UNIQUE KEY `nama_matkul` (`nama_matkul`),
  ADD KEY `kode_kel_mk` (`kode_kel_mk`),
  ADD KEY `kode_peminatan` (`kode_peminatan`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD PRIMARY KEY (`kode_paket`),
  ADD KEY `kode_jenis_ujian` (`kode_jenis_ujian`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`kode_pengumuman`);

--
-- Indexes for table `ref_jenis_ujian`
--
ALTER TABLE `ref_jenis_ujian`
  ADD PRIMARY KEY (`kode_jenis_ujian`);

--
-- Indexes for table `ref_kel_matkul`
--
ALTER TABLE `ref_kel_matkul`
  ADD PRIMARY KEY (`kode_kel_mk`),
  ADD UNIQUE KEY `kelompok_matakuliah` (`kelompok_matakuliah`);

--
-- Indexes for table `ref_peminatan`
--
ALTER TABLE `ref_peminatan`
  ADD PRIMARY KEY (`kode_peminatan`),
  ADD UNIQUE KEY `peminatan` (`peminatan`);

--
-- Indexes for table `ref_role`
--
ALTER TABLE `ref_role`
  ADD PRIMARY KEY (`kode_role`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `ref_semester`
--
ALTER TABLE `ref_semester`
  ADD PRIMARY KEY (`kode_semester`),
  ADD UNIQUE KEY `semester` (`semester`);

--
-- Indexes for table `rel_dosen_kelas`
--
ALTER TABLE `rel_dosen_kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Rel_dosen_kelas_kode_seksi_kode_dosen_unique` (`kode_dosen`,`kode_seksi`),
  ADD KEY `kode_seksi` (`kode_seksi`);

--
-- Indexes for table `rel_kelas_paketsoal`
--
ALTER TABLE `rel_kelas_paketsoal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Rel_kelas_paketsoal_kode_paket_kode_seksi_unique` (`kode_seksi`,`kode_paket`),
  ADD KEY `kode_paket` (`kode_paket`),
  ADD KEY `jenis_ujian` (`jenis_ujian`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`),
  ADD KEY `kode_role` (`kode_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `kode_captcha` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `kode_dosen` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lupa_pw`
--
ALTER TABLE `lupa_pw`
  MODIFY `kode_reset_pw` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `kode_mhs` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `kode_pengumuman` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_jenis_ujian`
--
ALTER TABLE `ref_jenis_ujian`
  MODIFY `kode_jenis_ujian` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_kel_matkul`
--
ALTER TABLE `ref_kel_matkul`
  MODIFY `kode_kel_mk` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_peminatan`
--
ALTER TABLE `ref_peminatan`
  MODIFY `kode_peminatan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_role`
--
ALTER TABLE `ref_role`
  MODIFY `kode_role` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_semester`
--
ALTER TABLE `ref_semester`
  MODIFY `kode_semester` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rel_dosen_kelas`
--
ALTER TABLE `rel_dosen_kelas`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rel_kelas_paketsoal`
--
ALTER TABLE `rel_kelas_paketsoal`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matakuliah` (`kode_matkul`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`kode_kel_mk`) REFERENCES `ref_kel_matkul` (`kode_kel_mk`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`kode_peminatan`) REFERENCES `ref_peminatan` (`kode_peminatan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliah_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `ref_semester` (`kode_semester`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD CONSTRAINT `paket_soal_ibfk_1` FOREIGN KEY (`kode_jenis_ujian`) REFERENCES `ref_jenis_ujian` (`kode_jenis_ujian`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `rel_dosen_kelas`
--
ALTER TABLE `rel_dosen_kelas`
  ADD CONSTRAINT `rel_dosen_kelas_ibfk_1` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_dosen_kelas_ibfk_2` FOREIGN KEY (`kode_seksi`) REFERENCES `kelas` (`kode_seksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_kelas_paketsoal`
--
ALTER TABLE `rel_kelas_paketsoal`
  ADD CONSTRAINT `rel_kelas_paketsoal_ibfk_1` FOREIGN KEY (`kode_seksi`) REFERENCES `kelas` (`kode_seksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_kelas_paketsoal_ibfk_2` FOREIGN KEY (`kode_paket`) REFERENCES `paket_soal` (`kode_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_kelas_paketsoal_ibfk_3` FOREIGN KEY (`jenis_ujian`) REFERENCES `ref_jenis_ujian` (`kode_jenis_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`kode_role`) REFERENCES `ref_role` (`kode_role`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
