-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 10:23 AM
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
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `kode_captcha` int(11) UNSIGNED NOT NULL,
  `pertanyaan` varchar(25) NOT NULL,
  `jawaban` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`kode_captcha`, `pertanyaan`, `jawaban`) VALUES
(1, 'Berapakah 2+7?', '9'),
(2, 'Berapakah 3 x 4?', '12'),
(3, 'Berapakah 10-7?', '3'),
(4, 'Berapakah 11+13?', '24'),
(5, 'Berapakah 5+6?', '11');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `NIDN` varchar(10) DEFAULT NULL,
  `NIDK` varchar(10) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telp` varchar(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `id_user`, `NIP`, `NIDN`, `NIDK`, `nama_lengkap`, `alamat`, `nomor_telp`, `created_at`, `updated_at`) VALUES
(1, 2, '1910012345678901', '1111111111', '1111111111', 'Bayley Cooke', NULL, '081256789012', '2021-11-24 16:32:59', NULL),
(2, 3, '1910012345678902', '1111111113', '1111111113', 'Orson Alvarez', NULL, '081256789014', '2021-11-24 16:32:59', NULL),
(3, 4, '1910012345678903', '1111111115', '1111111115', 'Neriah Merrill', NULL, '081256789016', '2021-11-24 16:32:59', NULL),
(4, 5, '1910012345678904', '1111111117', '1111111117', 'Ebony Wooten', NULL, '081256789018', '2021-11-24 16:33:00', NULL),
(5, 6, '1910012345678905', '1111111119', '1111111119', 'Michalina Fraser', NULL, '081256789020', '2021-11-24 16:33:00', NULL),
(6, 7, '1910012345678906', '1111111121', '1111111121', 'Aila Parrish', NULL, '081256789022', '2021-11-24 16:33:00', NULL),
(7, 8, '1910012345678907', '1111111123', '1111111123', 'Elana Charles', NULL, '081256789024', '2021-11-24 16:33:00', NULL),
(8, 9, '1910012345678908', '1111111125', '1111111125', 'Alannah Herbert', NULL, '081256789026', '2021-11-24 16:33:01', NULL),
(9, 10, '1910012345678909', '1111111127', '1111111127', 'Fardeen Pate', NULL, '081256789028', '2021-11-24 16:33:01', NULL),
(10, 11, '1910012345678910', '1111111129', '1111111129', 'Loretta Porter', NULL, '081256789030', '2021-11-24 16:33:01', NULL),
(11, 12, '1910012345678911', '1111111131', '1111111131', 'Reyansh Barclay', NULL, '081256789032', '2021-11-24 16:33:01', NULL),
(12, 13, '1910012345678912', '1111111133', '1111111133', 'Jack Serrano', NULL, '081256789034', '2021-11-24 16:33:02', NULL),
(13, 14, '1910012345678913', '1111111135', '1111111135', 'Naomi Lara', NULL, '081256789036', '2021-11-24 16:33:02', NULL),
(14, 15, '1910012345678914', '1111111137', '1111111137', 'Beatriz Portillo', NULL, '081256789038', '2021-11-24 16:33:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_seksi` int(11) UNSIGNED NOT NULL,
  `kode_matkul` int(11) UNSIGNED NOT NULL,
  `semester` int(11) UNSIGNED DEFAULT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(15) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_seksi`, `kode_matkul`, `semester`, `hari`, `jam`, `deskripsi`) VALUES
(1912600000, 50050001, 3, 'senin', '08:00 - 09:00', 'Ruang 304'),
(1912600001, 50050001, 3, 'senin', '09:00 - 10:00', NULL),
(1912600002, 50050002, 2, 'selasa', '08:00 - 09:00', NULL),
(1912600003, 50050002, 2, 'selasa', '09:00 - 10:00', NULL),
(1912600004, 50050003, 2, 'selasa', '10:00 - 11:00', NULL),
(1912600005, 50050003, 2, 'selasa', '13:00 - 14:00', NULL),
(1912600006, 50050004, 5, 'rabu', '08:00 - 09:45', NULL),
(1912600007, 50050004, 5, 'rabu', '09:45 - 11:45', NULL),
(1912600008, 50050005, 5, 'rabu', '08:00 - 09:00', NULL),
(1912600009, 50050005, 5, 'kamis', '09:00 - 10:00', 'Ruang 301'),
(1912600010, 50050006, 2, 'kamis', '08:00 - 09:00', NULL),
(1912600011, 50050006, 2, 'kamis', '09:00 - 10:00', NULL),
(1912600012, 50050007, 6, 'selasa', '08:00 - 09:00', NULL),
(1912600013, 50050007, 6, 'selasa', '09:00 - 10:00', NULL),
(1912600014, 50050008, 5, 'senin', '10:00 - 11:00', NULL),
(1912600015, 50050008, 5, 'senin', '13:00 - 14:00', NULL),
(1912600016, 50050009, 2, 'jumat', '08:00 - 09:45', NULL),
(1912600017, 50050009, 2, 'jumat', '09:45 - 11:45', NULL),
(1912600018, 50050010, 3, 'jumat', '08:00 - 09:00', NULL),
(1912600019, 50050010, 3, 'jumat', '09:00 - 10:00', NULL),
(1912600020, 50050011, 3, 'selasa', '08:00 - 09:00', NULL),
(1912600021, 50050011, 3, 'rabu', '09:00 - 10:00', NULL),
(1912600022, 50050012, 4, 'kamis', '08:00 - 09:00', NULL),
(1912600023, 50050012, 4, 'kamis', '09:00 - 10:00', NULL),
(1912600024, 50050013, 8, 'kamis', '10:00 - 11:00', NULL),
(1912600025, 50050014, 8, 'kamis', '13:00 - 14:00', NULL),
(1912600026, 50050015, 8, 'kamis', '08:00 - 09:45', 'Ruang 208'),
(1912600027, 50050000, 3, 'jumat', '09:00 - 11:00', 'telat input');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_pw`
--

CREATE TABLE `lupa_pw` (
  `kode_reset_pw` int(11) UNSIGNED NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `status` enum('sudah','belum') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lupa_pw`
--

INSERT INTO `lupa_pw` (`kode_reset_pw`, `username`, `email`, `status`) VALUES
(1, 'User 6', 'wkrebs@att.net', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `kode_mhs` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telp` varchar(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`kode_mhs`, `id_user`, `NIM`, `nama_lengkap`, `alamat`, `nomor_telp`, `created_at`, `updated_at`) VALUES
(1, 16, '1912627000', 'yayayaya', 'jl.bojong menteng', '081288877769', '2021-11-24 16:33:40', '2022-02-04 15:36:23'),
(2, 17, '1912627001', 'Manahil Vincent', NULL, '081234567002', '2021-11-24 16:33:40', NULL),
(3, 18, '1912627002', 'Darrell Mccarthy', NULL, '081234567004', '2021-11-24 16:33:40', NULL),
(4, 19, '1912627003', 'Dilara Dudley', NULL, '081234567006', '2021-11-24 16:33:40', NULL),
(5, 20, '1912627004', 'Patrik Miranda', NULL, '081234567008', '2021-11-24 16:33:41', NULL),
(6, 21, '1912627005', 'Farhana Macfarlane', NULL, '081234567010', '2021-11-24 16:33:41', NULL),
(7, 22, '1912627006', 'Scarlet Shaffer', NULL, '081234567012', '2021-11-24 16:33:41', NULL),
(8, 23, '1912627007', 'Freddie Mcfadden', NULL, '081234567014', '2021-11-24 16:33:41', NULL),
(9, 24, '1912627008', 'Braden Nicholson', NULL, '081234567016', '2021-11-24 16:33:42', NULL),
(10, 25, '1912627009', 'Heidi Schofield', NULL, '081234567018', '2021-11-24 16:33:42', NULL),
(11, 26, '1912627010', 'Tyler-James Gamble', NULL, '081234567020', '2021-11-24 16:33:42', NULL),
(12, 27, '1912627011', 'Tommie Fraser', NULL, '081234567022', '2021-11-24 16:33:42', NULL),
(13, 28, '1912627012', 'Zhane Burns', NULL, '081234567024', '2021-11-24 16:33:42', NULL),
(14, 29, '1912627013', 'Jess O\'Doherty', NULL, '081234567026', '2021-11-24 16:33:43', NULL),
(15, 30, '1912627014', 'Phyllis Johns', NULL, '081234567028', '2021-11-24 16:33:43', NULL),
(16, 31, '1912627015', 'Bree Merritt', NULL, '081234567030', '2021-11-24 16:33:43', NULL),
(17, 32, '1912627016', 'Alanah Aldred', NULL, '081234567032', '2021-11-24 16:33:43', NULL),
(18, 33, '1912627017', 'Seth Kaufman', NULL, '081234567034', '2021-11-24 16:33:43', NULL),
(19, 34, '1912627018', 'Ewen Huber', NULL, '081234567036', '2021-11-24 16:33:43', NULL),
(20, 35, '1912627019', 'Blaine Arias', NULL, '081234567038', '2021-11-24 16:33:44', NULL),
(21, 36, '1912627020', 'Thierry Larsen', NULL, '081234567040', '2021-11-24 16:33:44', NULL),
(22, 37, '1912627021', 'Nathaniel Parker', NULL, '081234567042', '2021-11-24 16:33:44', NULL),
(23, 38, '1912627022', 'Geraint Rhodes', NULL, '081234567044', '2021-11-24 16:33:44', NULL),
(24, 39, '1912627023', 'Olly Schwartz', NULL, '081234567046', '2021-11-24 16:33:45', NULL),
(25, 40, '1912627024', 'Samirah Lugo', NULL, '081234567048', '2021-11-24 16:33:45', NULL),
(26, 41, '1912627025', 'Mekhi Rooney', NULL, '081234567050', '2021-11-24 16:33:45', NULL),
(27, 42, '1912627026', 'Saad Lord', NULL, '081234567052', '2021-11-24 16:33:45', NULL),
(28, 43, '1912627027', 'Arwa Lester', NULL, '081234567054', '2021-11-24 16:33:45', NULL),
(29, 44, '1912627028', 'Theon Carroll', NULL, '081234567056', '2021-11-24 16:33:46', NULL),
(30, 45, '1912627029', 'Maizie Lott', NULL, '081234567058', '2021-11-24 16:33:46', NULL),
(31, 46, '1912627030', 'Ewan Rawlings', NULL, '081234567060', '2021-11-24 16:33:46', NULL),
(32, 47, '1912627031', 'Shakeel Lopez', NULL, '081234567062', '2021-11-24 16:33:46', NULL),
(33, 48, '1912627032', 'Becky Miller', NULL, '081234567064', '2021-11-24 16:33:47', NULL),
(34, 49, '1912627033', 'Demi-Lee Murillo', NULL, '081234567066', '2021-11-24 16:33:47', NULL),
(35, 50, '1912627034', 'Shakil O\'Quinn', NULL, '081234567068', '2021-11-24 16:33:47', NULL),
(36, 51, '1912627035', 'Tianna Velasquez', NULL, '081234567070', '2021-11-24 16:33:47', NULL),
(37, 52, '1912627036', 'Kamil Cowan', NULL, '081234567072', '2021-11-24 16:33:47', NULL),
(38, 53, '1912627037', 'Mariah Begum', NULL, '081234567074', '2021-11-24 16:33:48', NULL),
(39, 54, '1912627038', 'Oakley Whitaker', NULL, '081234567076', '2021-11-24 16:33:48', NULL),
(40, 55, '1912627039', 'Amayah Dickinson', NULL, '081234567078', '2021-11-24 16:33:48', NULL),
(41, 56, '1912627040', 'Tomi Kaur', NULL, '081234567080', '2021-11-24 16:33:48', NULL),
(42, 57, '1912627041', 'Balraj Newton', NULL, '081234567082', '2021-11-24 16:33:48', NULL),
(43, 58, '1912627042', 'Ryker Cousins', NULL, '081234567084', '2021-11-24 16:33:49', NULL),
(44, 59, '1912627043', 'Kathryn Mcmanus', NULL, '081234567086', '2021-11-24 16:33:49', NULL),
(45, 60, '1912627044', 'Homer Andrews', NULL, '081234567088', '2021-11-24 16:33:49', NULL),
(46, 61, '1912627045', 'Alexandra Harding', NULL, '081234567090', '2021-11-24 16:33:49', NULL),
(47, 62, '1912627046', 'Calum Carver', NULL, '081234567092', '2021-11-24 16:33:49', NULL),
(48, 63, '1912627047', 'Kelsie Valencia', NULL, '081234567094', '2021-11-24 16:33:50', NULL),
(49, 64, '1912627048', 'Brody Hayden', NULL, '081234567096', '2021-11-24 16:33:50', NULL),
(50, 65, '1912627049', 'Tilly Humphrey', NULL, '081234567098', '2021-11-24 16:33:50', NULL),
(51, 66, '1912627050', 'Jaxson Tapia', NULL, '081234567100', '2021-11-24 16:33:51', NULL),
(52, 67, '1912627051', 'Khadeeja Croft', NULL, '081234567102', '2021-11-24 16:33:51', NULL),
(53, 68, '1912627052', 'Shayan Donovan', NULL, '081234567104', '2021-11-24 16:33:51', NULL),
(54, 69, '1912627053', 'Inez Cohen', NULL, '081234567106', '2021-11-24 16:33:51', NULL),
(55, 70, '1912627054', 'Pearce Appleton', NULL, '081234567108', '2021-11-24 16:33:51', NULL),
(56, 71, '1912627055', 'Tahmina Mccoy', NULL, '081234567110', '2021-11-24 16:33:52', NULL),
(57, 72, '1912627056', 'Ronald Jennings', NULL, '081234567112', '2021-11-24 16:33:52', NULL),
(58, 73, '1912627057', 'Cohen Mathis', NULL, '081234567114', '2021-11-24 16:33:52', NULL),
(59, 74, '1912627058', 'Maeve Reid', NULL, '081234567116', '2021-11-24 16:33:52', NULL),
(60, 75, '1912627059', 'Tiya Salt', NULL, '081234567118', '2021-11-24 16:33:53', NULL),
(61, 76, '1912627060', 'Ivie Barron', NULL, '081234567120', '2021-11-24 16:33:53', NULL),
(62, 77, '1912627061', 'Fox Bright', NULL, '081234567122', '2021-11-24 16:33:53', NULL),
(63, 78, '1912627062', 'Elizabeth Ashley', NULL, '081234567124', '2021-11-24 16:33:53', NULL),
(64, 79, '1912627063', 'Wayne Clegg', NULL, '081234567126', '2021-11-24 16:33:53', NULL),
(65, 80, '1912627064', 'India Huynh', NULL, '081234567128', '2021-11-24 16:33:54', NULL),
(66, 81, '1912627065', 'Emilio Greaves', NULL, '081234567130', '2021-11-24 16:33:54', NULL),
(67, 82, '1912627066', 'Acacia Cartwright', NULL, '081234567132', '2021-11-24 16:33:54', NULL),
(68, 83, '1912627067', 'Cruz Nava', NULL, '081234567134', '2021-11-24 16:33:54', NULL),
(69, 84, '1912627068', 'Abubakar Matthews', NULL, '081234567136', '2021-11-24 16:33:55', NULL),
(70, 85, '1912627069', 'Janice Cordova', NULL, '081234567138', '2021-11-24 16:33:55', NULL),
(71, 86, '1912627070', 'Ephraim Foley', NULL, '081234567140', '2021-11-24 16:33:55', NULL),
(72, 87, '1912627071', 'Ziggy Curry', NULL, '081234567142', '2021-11-24 16:33:55', NULL),
(73, 88, '1912627072', 'Victoria Cantu', NULL, '081234567144', '2021-11-24 16:33:56', NULL),
(74, 89, '1912627073', 'Hilda Odling', NULL, '081234567146', '2021-11-24 16:33:56', NULL),
(75, 90, '1912627074', 'Scarlette Dillon', NULL, '081234567148', '2021-11-24 16:33:56', NULL),
(76, 91, '1912627075', 'Darrel Peralta', NULL, '081234567150', '2021-11-24 16:33:56', NULL),
(77, 92, '1912627076', 'Amy Atkins', NULL, '081234567152', '2021-11-24 16:33:57', NULL),
(78, 93, '1912627077', 'Farhana Easton', NULL, '081234567154', '2021-11-24 16:33:57', NULL),
(79, 94, '1912627078', 'Ayesha Stewart', NULL, '081234567156', '2021-11-24 16:33:57', NULL),
(80, 95, '1912627079', 'Jillian Barnett', NULL, '081234567158', '2021-11-24 16:33:58', NULL),
(81, 96, '1912627080', 'Duane Whittaker', NULL, '081234567160', '2021-11-24 16:33:58', NULL),
(82, 97, '1912627081', 'Cherise Mcintosh', NULL, '081234567162', '2021-11-24 16:33:58', NULL),
(83, 98, '1912627082', 'Joao Young', NULL, '081234567164', '2021-11-24 16:33:59', NULL),
(84, 99, '1912627083', 'Laaibah Neville', NULL, '081234567166', '2021-11-24 16:33:59', NULL),
(85, 100, '1912627084', 'Azra Schmidt', NULL, '081234567168', '2021-11-24 16:33:59', NULL),
(86, 101, '1912627085', 'Kacper Mejia', NULL, '081234567170', '2021-11-24 16:33:59', NULL),
(87, 102, '1912627086', 'Miranda Noel', NULL, '081234567172', '2021-11-24 16:33:59', NULL),
(88, 103, '1912627087', 'Jorja Owen', NULL, '081234567174', '2021-11-24 16:34:00', NULL),
(89, 104, '1912627088', 'Carson Walls', NULL, '081234567176', '2021-11-24 16:34:00', NULL),
(90, 105, '1912627089', 'Keiren Mcleod', NULL, '081234567178', '2021-11-24 16:34:00', NULL),
(91, 106, '1912627090', 'Jeff Mills', NULL, '081234567180', '2021-11-24 16:34:00', NULL),
(92, 107, '1912627091', 'Merlin Leblanc', NULL, '081234567182', '2021-11-24 16:34:01', NULL),
(93, 108, '1912627092', 'Abi Blake', NULL, '081234567184', '2021-11-24 16:34:01', NULL),
(94, 109, '1912627093', 'Shanna Farrington', NULL, '081234567186', '2021-11-24 16:34:01', NULL),
(95, 110, '1912627094', 'Rui Orr', NULL, '081234567188', '2021-11-24 16:34:01', NULL),
(96, 111, '1912627095', 'Chase Woods', NULL, '081234567190', '2021-11-24 16:34:02', NULL),
(97, 112, '1912627096', 'Zacharias Talbot', NULL, '081234567192', '2021-11-24 16:34:02', NULL),
(98, 113, '1912627097', 'Nikolas Forster', NULL, '081234567194', '2021-11-24 16:34:02', NULL),
(99, 114, '1912627098', 'Madelaine Lowe', NULL, '081234567196', '2021-11-24 16:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matkul` int(11) UNSIGNED NOT NULL,
  `kode_kel_mk` int(11) UNSIGNED NOT NULL,
  `kode_peminatan` int(11) UNSIGNED DEFAULT NULL,
  `nama_matkul` varchar(40) NOT NULL,
  `sks` int(5) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matkul`, `kode_kel_mk`, `kode_peminatan`, `nama_matkul`, `sks`, `deskripsi`) VALUES
(50050000, 1, 4, 'Pendidikan Agama Islam', 2, 'test'),
(50050001, 1, 4, 'Pendidikan Agama Kristen', 2, 'test'),
(50050002, 4, 4, 'Pancasila', 2, NULL),
(50050003, 4, 4, 'Bahasa Indonesia', 2, NULL),
(50050004, 3, 4, 'Landasan Ilmu Pendidikan', 4, NULL),
(50050005, 3, 4, 'Psikologi Perkembangan', 2, NULL),
(50050006, 3, 4, 'Teori Belajar dan Pembelajaran', 4, NULL),
(50050007, 1, 2, 'Basis Data', 3, NULL),
(50050008, 1, 2, 'Rekayasa Perangkat Lunak', 3, NULL),
(50050009, 1, 1, 'Desain Web', 3, NULL),
(50050010, 1, 1, 'Animasi Komputer', 3, NULL),
(50050011, 1, 3, 'Perancangan Jaringan Komputer', 3, NULL),
(50050012, 1, 3, 'Pemrograman Jaringan', 3, NULL),
(50050013, 2, 4, 'Kriptografi', 3, NULL),
(50050014, 2, 4, 'Data Mining', 2, NULL),
(50050015, 2, 4, 'e-Commerce', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket_soal`
--

CREATE TABLE `paket_soal` (
  `kode_paket` varchar(5) NOT NULL,
  `kode_ujian` int(11) UNSIGNED NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket_soal`
--

INSERT INTO `paket_soal` (`kode_paket`, `kode_ujian`, `aktif`) VALUES
('48VVL', 1, 1),
('6CIW9', 1, 1),
('A3FJ5', 1, 1),
('AS2Q9', 1, 1),
('GIY1F', 1, 1),
('IOHG8', 1, 1);

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
  `jenis_ujian` varchar(25) DEFAULT NULL
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
  `kelompok_matakuliah` varchar(25) NOT NULL
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
  `peminatan` varchar(25) DEFAULT NULL
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
  `role` varchar(11) NOT NULL
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
  `semester` varchar(5) DEFAULT NULL
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
  `id` int(11) UNSIGNED NOT NULL,
  `kode_dosen` int(11) UNSIGNED NOT NULL,
  `kode_seksi` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_dosen_kelas`
--

INSERT INTO `rel_dosen_kelas` (`id`, `kode_dosen`, `kode_seksi`) VALUES
(17, 1, 1912600000),
(18, 2, 1912600001),
(19, 4, 1912600001),
(20, 4, 1912600002),
(22, 7, 1912600003),
(24, 8, 1912600005),
(21, 11, 1912600003),
(23, 12, 1912600004);

-- --------------------------------------------------------

--
-- Table structure for table `rel_mahasiswa_kelas`
--

CREATE TABLE `rel_mahasiswa_kelas` (
  `id` int(11) UNSIGNED NOT NULL,
  `kode_mhs` int(11) UNSIGNED NOT NULL,
  `kode_seksi` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_mahasiswa_kelas`
--

INSERT INTO `rel_mahasiswa_kelas` (`id`, `kode_mhs`, `kode_seksi`) VALUES
(5, 1, 1912600003),
(4, 1, 1912600012),
(6, 2, 1912600003);

-- --------------------------------------------------------

--
-- Table structure for table `rel_paketsoal_soal`
--

CREATE TABLE `rel_paketsoal_soal` (
  `id` int(11) UNSIGNED NOT NULL,
  `kode_paket` varchar(5) NOT NULL,
  `kode_soal` int(11) UNSIGNED NOT NULL,
  `no_urut_soal` int(2) NOT NULL,
  `bobot_soal` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_paketsoal_soal`
--

INSERT INTO `rel_paketsoal_soal` (`id`, `kode_paket`, `kode_soal`, `no_urut_soal`, `bobot_soal`) VALUES
(1, '6CIW9', 1, 1, 10),
(2, '6CIW9', 2, 2, 10),
(3, '6CIW9', 3, 3, 15),
(4, '6CIW9', 4, 4, 20),
(5, '6CIW9', 5, 5, 25),
(6, '6CIW9', 7, 6, 5),
(7, '6CIW9', 8, 7, 10),
(8, '6CIW9', 6, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `soal_essay`
--

CREATE TABLE `soal_essay` (
  `kode_soal` int(11) UNSIGNED NOT NULL,
  `kode_matkul` int(11) UNSIGNED NOT NULL,
  `kode_dosen` int(11) UNSIGNED NOT NULL,
  `soal` text NOT NULL,
  `gambar_soal` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `audio_soal` varchar(50) DEFAULT NULL,
  `video_soal` varchar(50) DEFAULT NULL,
  `status` enum('draft','terbit') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_essay`
--

INSERT INTO `soal_essay` (`kode_soal`, `kode_matkul`, `kode_dosen`, `soal`, `gambar_soal`, `audio_soal`, `video_soal`, `status`, `created_at`, `updated_at`) VALUES
(1, 50050002, 7, 'sebutkan dan jelaskan sila-sila pancasila!', '[\"1.1.image1.jpeg\",\"1.2.image2.jpeg\"]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(2, 50050002, 7, 'bagaimana pendapat kamu tentang NFT?', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(3, 50050002, 7, 'kamu siapa?', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(4, 50050002, 7, 'aku siapa?', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(5, 50050002, 7, 'testing 123456', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(6, 50050002, 7, 'testing 123457', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(7, 50050002, 7, 'testing 123458', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(8, 50050002, 7, 'testing 123459', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(9, 50050002, 7, 'testing 123460', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(10, 50050002, 7, 'testing 123461', '[]', NULL, NULL, 'terbit', '2022-02-09 22:40:42', NULL),
(11, 50050002, 7, 'testing 123', '[]', '2_ase.mid', NULL, 'terbit', '2022-02-11 22:51:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `token_sessions`
--

CREATE TABLE `token_sessions` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `refresh_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status_civitas` enum('aktif','tidak_aktif') NOT NULL DEFAULT 'aktif',
  `kode_role` int(11) UNSIGNED NOT NULL,
  `foto_profil` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status_civitas`, `kode_role`, `foto_profil`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'zellev', 'zellev.admin.ujianunj@gmail.com', '$2a$10$C.cT3CPu2aG77NhBIMaeoe5z8DbmetznW87Oal594IJsKZgHV5jRG', 'aktif', 1, '1_24-11-2021_17.34-appujian-94c9ae23-abf4-4026-8319-1d9bac26b45b.jpg', 'Saya Admin YNTKTS', '2021-11-24 10:17:52', '2021-11-24 17:34:48'),
(2, 'User 2', 'richard@gmail.com', '$2b$10$3flpKazebWthi5Hqn35tHeXDg0A07g3VCJOSQT5otzeBbd4XCzLp6', 'aktif', 2, NULL, NULL, '2021-11-24 16:32:59', NULL),
(3, 'User 3', 'clarareiddiff99@gmail.com', '$2b$10$/TFmW.vPyuvvEX7BqpjSB.gkYyYegtK/eyyZaWDCJwqsMs/gmZvkW', 'aktif', 2, NULL, NULL, '2021-11-24 16:32:59', NULL),
(4, 'User 4', 'burniske@aol.com', '$2b$10$7O64FFW7WELlwJtQNjCbGe.ObWr.ZFCUlf.S2qdDDO7sdE7X.ThLm', 'aktif', 2, NULL, NULL, '2021-11-24 16:32:59', NULL),
(5, 'User 5', 'garland@yahoo.ca', '$2b$10$8oIIixAae7wr9QdtkcrfT.5zHNw6qK//2KvCSBBhzkeOMxuQnaTEG', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:00', NULL),
(6, 'User 6', 'wkrebs@att.net', '$2b$10$ai8Jsbrr9m3iSejEMHdF2.YT7hcgYOQyjOSTf1WFhK0FDKRugLjuy', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:00', NULL),
(7, 'User 7', 'tromey@att.net', '$2b$10$wiVq4sxTZd5FdQ0cyqbMruQvfDpEvdDcrnYOyjmz3.enuWZ8hQ11i', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:00', NULL),
(8, 'User 8', 'citadel@aol.com', '$2b$10$Cpdh02Dgnh81sTUZf2P1ve5WMCXuiaC5QJQNjKCMQhMakOzZs5.G6', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:00', NULL),
(9, 'User 9', 'policies@verizon.net', '$2b$10$TLpZ7jIpMTp8JEYarP/vwO8dudeLs8H7re/OTfRksTlBrc3PAmDRu', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:00', NULL),
(10, 'User 10', 'lehice1258@alfaceti.com', '$2b$10$JY1ZPo4VOosmmBbPd2Vfp.Ff1e0WHAegjB7YwThXE.WmoNM615HwS', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:01', NULL),
(11, 'User 11', 'mschwartz@sbcglobal.net', '$2b$10$QvUMvptQHQCL43Eh.f7TBOi7B5jNKrxKwwVZJ5iKBE0TqOKBYuj2q', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:01', NULL),
(12, 'User 12', 'luebke@optonline.net', '$2b$10$VJrS1/lM3W6pPPlzXlo.7eWRvebhcSKlk3Ro7/F/KFjcQtbOvqSlm', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:01', NULL),
(13, 'User 13', 'zavadsky@me.com', '$2b$10$PJJ6w6FsFUwmvZUzmNXxQOxMe3hq6itbf7niJPxACdXKCmffWHFqG', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:02', NULL),
(14, 'User 14', 'pappp@optonline.net', '$2b$10$.mUXTIWZqZMAyZyXp.Nvz.IbqUyNRPYMGGjOR4tl3czbq7JwO0dom', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:02', NULL),
(15, 'User 15', 'drjlaw@yahoo.com', '$2b$10$AHCA/vqGZhUDPeCGk783quGWTiYYZ7EixCOhSR42O8d8Be5/9VPRC', 'aktif', 2, NULL, NULL, '2021-11-24 16:33:02', NULL),
(16, 'Yaya69', 'yaya@gmail.com', '$2b$10$k.5AWblEdKZ1LX.xCZs.nOQKQ0Pp28s6U5wI0ToJgHE2wnzNCBGB6', 'aktif', 3, NULL, 'yaya cakep', '2021-11-24 16:33:40', '2022-02-04 15:36:23'),
(17, 'User 17', 'chaikin@msn.com', '$2b$10$ZPKkhHyDx0zlcsKGWHA6hOwiMKXI.NFjBuw1VR.eAegtmuY7kqkE2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:40', NULL),
(18, 'User 18', 'natepuri@comcast.net', '$2b$10$8smlaXH/HOufVZlzbfC.Z.p4yI1Emkss9E9tKnZ4TyNc6Ays.N6NG', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:40', NULL),
(19, 'User 19', 'cantu@msn.com', '$2b$10$n8WsCyMBdGTNX0cyqrtXHOF/wcMcon/fRNQoSSIJySIpR6Q6sW7y2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:40', NULL),
(20, 'User 20', 'jfreedma@verizon.net', '$2b$10$h9vG5aCdIsqGCOqQEn1fceHDBmCA/pjbXn1GlK3Gfjy1nfDa8XOi6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:41', NULL),
(21, 'User 21', 'wetter@verizon.net', '$2b$10$9OCVxLjZ21hePKAfFfM2kOAhtPjs4eYj80bQ8DfQXhMmAnVZw3Eu.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:41', NULL),
(22, 'User 22', 'wsnyder@aol.com', '$2b$10$dqpAzYP4aQ2se.jtqJh73.xhduhk.T7UVKHy7uAQObkX/pVqoLgry', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:41', NULL),
(23, 'User 23', 'durist@yahoo.com', '$2b$10$F7fr1N9AMj58S6uFml9sn./Q/TMorImTG6GNcnnsrA4lnbI7QKWxq', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:41', NULL),
(24, 'User 24', 'gozer@yahoo.com', '$2b$10$heBmpAWOCRLBuGq1eZrdSe7TXSnIqd/zs8vjKiK6GzmDxwddpe76q', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:42', NULL),
(25, 'User 25', 'miami@verizon.net', '$2b$10$cRfjqgVvW1bGDZX3s2KYouE8KZLVz1L4DQuvUXz0Lkt0bpx9bpQA.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:42', NULL),
(26, 'User 26', 'grinder@yahoo.ca', '$2b$10$IupNWxkhKyVPWoUGSSRbcedbisWTO8OdEIBSHZLAM3WaLZitiZXwq', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:42', NULL),
(27, 'User 27', 'denism@icloud.com', '$2b$10$pAtjLhzCP02hzZFHdyXxgu26MCgHxdiyONWs0iUlM7i8283ehHRq.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:42', NULL),
(28, 'User 28', 'kaiser@outlook.com', '$2b$10$s3201r7aE2w5AwefqK3v3.QFgNIdwHArEBRcqbO0pJuAB7lP/mgU6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:42', NULL),
(29, 'User 29', 'claypool@sbcglobal.net', '$2b$10$LvSzO8i7mhlT29HxByq3lOMwrjGCtNvFEXWDfk.OnZaharj55xaWi', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(30, 'User 30', 'zyghom@icloud.com', '$2b$10$G5UOldjbHXvezNk5Rpg24eGz3guuToqYWEMnkW.eGG5Cfb.0V.mfG', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(31, 'User 31', 'lbaxter@live.com', '$2b$10$LY/YIQQNhNSZ/vlG06RWSOC1iAWDcQHTm7jcs//zOuxOuXDfe2iCG', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(32, 'User 32', 'jaffe@me.com', '$2b$10$c9kJRzLsjxsCq4ZyiMvnA.OKJwgVfxLviezwySd4a6Nc5YMH13ZH.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(33, 'User 33', 'isaacson@live.com', '$2b$10$yZMed18BxH21d7Bok7ZFjevStuSIXMuwmbB3sK7Lx60SpuVDle2/S', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(34, 'User 34', 'ijackson@comcast.net', '$2b$10$Jkt7805GWQdcLMIReCQdEOsdxOcledHylVw1JHuJQBQ9WRychCXFS', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:43', NULL),
(35, 'User 35', 'srour@verizon.net', '$2b$10$e12oXG5QqCm41Lskbf4qqeAPPiq7h/I6KD/EDvQsWWrIAsS0OvRQm', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:44', NULL),
(36, 'User 36', 'ovprit@icloud.com', '$2b$10$ljjxIuxO0fXh9WMrs1F9ceSg9HI.LxJbKaE//KE1e0wpKTZV0xEN2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:44', NULL),
(37, 'User 37', 'rjones@att.net', '$2b$10$DyKU6JTfvLPbdcYDWKI1KOkOPwCcZhXZPSf2zlfxCQID8a7G7DpTy', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:44', NULL),
(38, 'User 38', 'uraeus@me.com', '$2b$10$6WCRQXKWWgF1Fy3Vqg3XqOOxuMUOrzReagGltC/RXAfiftmE1E6aW', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:44', NULL),
(39, 'User 39', 'heckerman@verizon.net', '$2b$10$McI3y6qWzOoKQGb/Xx1uDuZZF8VPFlTi.M.44TSZ43XeuFBILI2rO', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:45', NULL),
(40, 'User 40', 'jaarnial@comcast.net', '$2b$10$jwMf1lgHXxkukCEu86K9KeUyGX1O/ufHK/TK2h8USTcZGSGyAncq.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:45', NULL),
(41, 'User 41', 'emmanuel@verizon.net', '$2b$10$rHs.FyFHZo5.oJKCBchiTucgqBvS5pA/4c4R08cvF754edNEjmzFO', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:45', NULL),
(42, 'User 42', 'pierce@optonline.net', '$2b$10$x7AxR5HFaCEUvfjZQtHc4uD2ABPs1NpKgD/1TcpQ.HJlBWqIDbzcu', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:45', NULL),
(43, 'User 43', 'lstaf@aol.com', '$2b$10$zqZceh/dg6mZXI1CwCys3urdyxdqEG6f3XWahvXpctg3LJsAt0J32', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:45', NULL),
(44, 'User 44', 'sequin@hotmail.com', '$2b$10$ExobBGiRlnF1uSyDpg0KC.DHSHeFYpUtrrhkSQM5Z5m1AG8f6kTvm', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:46', NULL),
(45, 'User 45', 'avalon@outlook.com', '$2b$10$wMZefG9UtLMLcWX5.ST2Ruy8BW40YdBw8zSCoVI1gCBiCXkAz79ou', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:46', NULL),
(46, 'User 46', 'rjones@outlook.com', '$2b$10$Be42hO3iNUYALyTLjg7OkeT4HaNJr9yVKQwp52zyIhUhBdN06/Nge', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:46', NULL),
(47, 'User 47', 'ismail@gmail.com', '$2b$10$0KoYRbt7TMR/NVw55Jq7EObhnN9Ds4tSVvZvs39sMtNa2BCSE83uC', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:46', NULL),
(48, 'User 48', 'catalog@msn.com', '$2b$10$MQIr0VoQ9ALETS8wNicAoOetn1gPFA.FY3EktQblnC3PH/TOfMTr6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:47', NULL),
(49, 'User 49', 'alfred@hotmail.com', '$2b$10$Uvmd/aBKGr8.33/aRX59/uFW8oguyZMNg35bJsQ9P7KPfP0K4svRi', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:47', NULL),
(50, 'User 50', 'wildixon@verizon.net', '$2b$10$yFwV.kXJJkooCNQZV83YAO0JSNmIkGx6wGx7lM9SAcgZuE5aK4rZe', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:47', NULL),
(51, 'User 51', 'simone@msn.com', '$2b$10$PPYxA03czwVoY/vDdJWunerXgy/TJ4VewKkoZgVUcCf1UwSkGv.Pa', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:47', NULL),
(52, 'User 52', 'privcan@comcast.net', '$2b$10$.H3cbJTUy.oJuEuDw53xY.deLjuiIgBtBa25zFZHtCdV.xBy4kNSS', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:47', NULL),
(53, 'User 53', 'mstrout@icloud.com', '$2b$10$ATeer7hAj4xrJh7QBypkuuVBS2fyc4u.dWDoMvJaaE5nwHOjH8ohe', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:48', NULL),
(54, 'User 54', 'elmer@yahoo.com', '$2b$10$KWFCNDtztCq2.93NFVEHWeVc/72qFZFK4BABWWbyFCBCUoKNXor0e', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:48', NULL),
(55, 'User 55', 'heidrich@hotmail.com', '$2b$10$4Kmr9ChomAp52yiDzU7W8O8Koz9Iil0LI7vbLFJPpIwEyFBBuRkaK', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:48', NULL),
(56, 'User 56', 'tokuhirom@aol.com', '$2b$10$D1Hwa5EPNGW1stqKuGK8iudgvEGqIzKxasYOGQNMyX1vZAmZx7wDW', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:48', NULL),
(57, 'User 57', 'pereinar@yahoo.com', '$2b$10$Si8WTHmGh2iNE6KG.3f1LOvr0MbdviaUqdGhl1mlqxNl1JqnoGkge', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:48', NULL),
(58, 'User 58', 'formis@mac.com', '$2b$10$/NJaEM6s.RK8Mp0BcqcrguSNrRxMZPdedSV3zUztRr08bARMtreHq', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(59, 'User 59', 'johnh@optonline.net', '$2b$10$mmxTEKRHrrUM69XoJO6B1.VIIqRfI0ma2AhCMKU0c16miFAQHtmNm', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(60, 'User 60', 'aukjan@yahoo.ca', '$2b$10$PEj4rBtxZ6r35l8iRDgXX.TU9THBFRBcbsccdR6vcsr6STdQAyC56', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(61, 'User 61', 'jpflip@msn.com', '$2b$10$PE/dJzcBXy.LvHY17EgFD.RMZ7NtHCqhBozETDAw48rzHsRHZIxry', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(62, 'User 62', 'murdocj@mac.com', '$2b$10$XkffHCM7yJv32osMTx0iouEcyt8mjJJVVvN0RKT9Jj9GUqg9YWOH.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(63, 'User 63', 'donev@comcast.net', '$2b$10$Mm7AawIRIxMGqmYgE7W04uQeyc8mrapYAvh3ZCCgs5zhYTaEDTOES', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:49', NULL),
(64, 'User 64', 'hillct@aol.com', '$2b$10$8duLTXh/fnO2sJChG6QH6.cLmPlrLYzmppUKh2SdSirETG5ktMDAG', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:50', NULL),
(65, 'User 65', 'leakin@icloud.com', '$2b$10$wVYe2.mN15W9lrfOx0oqM.8O4gCqX55KEUM0nTO1QNIXXnv/yNRY2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:50', NULL),
(66, 'User 66', 'frosal@verizon.net', '$2b$10$qPEXPuA18esapmd2RiUyDOypCOQTlcrx5uRGcdGKopEtxB/FuawK.', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:50', NULL),
(67, 'User 67', 'xtang@outlook.com', '$2b$10$rF4UpYDpfmUapz5UPYhUJe4vfIvQENBpJLDfTaYj1hbhzmr2Gf6I6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:51', NULL),
(68, 'User 68', 'chinthaka@live.com', '$2b$10$XPhFEyhTzGFlV7mgFq8t5.AXEjOK8xCHiPHvVuR1/SDGypyLsh206', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:51', NULL),
(69, 'User 69', 'bruck@icloud.com', '$2b$10$zRNT2fjmxLT0bLSruzzux.Auo2Mlz8ElG2bft.KhfvvqhNRXp5u9W', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:51', NULL),
(70, 'User 70', 'pgottsch@hotmail.com', '$2b$10$e4uIWWAjETgWypurT4o9z.OdOp2K6rtPMFapkALV8DZAmrU5xAYwi', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:51', NULL),
(71, 'User 71', 'kaiser@att.net', '$2b$10$28rkCSizSBYiVzw3m9MbHeeKWFSEPq21pNeT5iKitIQlvhMuIIEFu', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:51', NULL),
(72, 'User 72', 'bockelboy@sbcglobal.net', '$2b$10$4EV0dqnp5gwc55r5YvPGPeBBSsP06EytFmbkRxn68e/KR/sZl3aVW', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:52', NULL),
(73, 'User 73', 'dhrakar@msn.com', '$2b$10$X/.0XzScZVvWRF5knWHasOuUdKAKsXQQ9IZ.gMEzGYAA/CFGxjISS', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:52', NULL),
(74, 'User 74', 'marcs@outlook.com', '$2b$10$4pPrxB0GXhbicqlvvrf8OOm3bwoLmxK8IJoeUzLDPdbqOpKBcOK7e', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:52', NULL),
(75, 'User 75', 'syrinx@yahoo.ca', '$2b$10$8VxlR7rSuJ38wnfs731yx.rRFoRA09La1I3PKkAg/LYM7RPRmK6Ye', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:52', NULL),
(76, 'User 76', 'yzheng@comcast.net', '$2b$10$0nkjj1TS5OG8qlRXdCcewuyZ/OgDalx8FiJfwsk6iC7vvvqbUfgIu', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:53', NULL),
(77, 'User 77', 'kmself@live.com', '$2b$10$aDQ9HQ.UzzFwoqUc0DLgQe/RV7XCA9i0ZhNybMxEGS5Tmf0eSuNeS', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:53', NULL),
(78, 'User 78', 'josephw@yahoo.com', '$2b$10$FYGX4giL6doc6lb92nrkSOj1KEke.PkOaeMSA6n1vs1kUdPyZ2bY6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:53', NULL),
(79, 'User 79', 'mccurley@me.com', '$2b$10$4Cv9xSmvVyOIz/5EWBafvO1KkQRdemGSU6Oin8LON2jnOt.l2xWOW', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:53', NULL),
(80, 'User 80', 'jbailie@att.net', '$2b$10$bhP1PMEdKyjS2ZJQxPern.OuMVr7aecaMk.ulSRUkzeKJt2qfw4Ci', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:54', NULL),
(81, 'User 81', 'forsberg@optonline.net', '$2b$10$iUKOgcNWvmeMLK3/wENE/.YE2z7dGRwRqj5RHtMm6K7Z7fO6Arp2G', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:54', NULL),
(82, 'User 82', 'crypt@comcast.net', '$2b$10$fNmY9.tVojXsZPjx4cBkLOUXIFBasbpAdc/MMZXutNTk8C.YIAF1G', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:54', NULL),
(83, 'User 83', 'claypool@icloud.com', '$2b$10$BMSgpoDR/ODbDoQ5J2gg3./KzribukgYHzS4fbKSgzqM/hhRF/NPa', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:54', NULL),
(84, 'User 84', 'ideguy@live.com', '$2b$10$YdrQInx/HYHxyIO3LvQr..A0tqHEb0GxULlKu4vXIRTzBKBz5Ev/e', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:55', NULL),
(85, 'User 85', 'bowmanbs@outlook.com', '$2b$10$zGAf4itC0SmZyeG2wxdDKO8CDUP1HzwbNzXSXGejhh8w59xIJFRTO', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:55', NULL),
(86, 'User 86', 'kiddailey@yahoo.com', '$2b$10$N4jRcTickJnRV1fBFkMGFeGA8mL1C2atCwrKokrS4S9e4XAE76U4O', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:55', NULL),
(87, 'User 87', 'snunez@mac.com', '$2b$10$KqxGH5j3VWGSC37.27vETOXpqfPWQtQLPWAe.57gNCwEZ0gqFVhVC', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:55', NULL),
(88, 'User 88', 'ralamosm@yahoo.ca', '$2b$10$n1gPYlPnnIw6GCctnfDh4OI6Wqune898sqb0XZ4.HYooW2Lb4OvYm', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:56', NULL),
(89, 'User 89', 'smallpaul@optonline.net', '$2b$10$zldYSXYfdYtxpTcpkkho1etTnH2gHbBPRJlW97mZAVuJkZQ7xDDvq', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:56', NULL),
(90, 'User 90', 'nicktrig@optonline.net', '$2b$10$zlstWlVLI0dImJq20mYUJORi7GrXQyOikjF5F.9rIG7y1oY63aJgK', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:56', NULL),
(91, 'User 91', 'bancboy@optonline.net', '$2b$10$xWZIZPd.lb//YwlMmiB//etrpdA/vpyodcXalJG3wa1Nrd2iX7Bxa', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:56', NULL),
(92, 'User 92', 'sinkou@mac.com', '$2b$10$foVwqMqKXrF3X64kti2Le.e8FOCJSoQMG2Z7/74ngl4tCcf8YjuO2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:57', NULL),
(93, 'User 93', 'jsbach@att.net', '$2b$10$iZ9At9mTQ3GF5mK9V.8Cl.k1s.5p4sZrFwIK3AbK974IELiV58GE2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:57', NULL),
(94, 'User 94', 'mpiotr@outlook.com', '$2b$10$8P5k6tcZKlPGtyVELfgp2OjtZqZZyygP1LoiIHi91nyqq6EhGBOA6', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:57', NULL),
(95, 'User 95', 'amcuri@live.com', '$2b$10$GwccEIUbZdl/trlwtDroEekcgvbuTAPilp.bWATvnpjziWRttpd5G', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:57', NULL),
(96, 'User 96', 'tamas@optonline.net', '$2b$10$7yHO.yqEXTL3M197dvXm8eDu4pIEXvHK0R8muInOA51xSivQfWN2q', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:58', NULL),
(97, 'User 97', 'uncled@live.com', '$2b$10$Fk/CpQDZwIw3sfQZeaZs1e1VRZyJHrLlAE6VeJJWx1jSKryye8SKe', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:58', NULL),
(98, 'User 98', 'mddallara@att.net', '$2b$10$4zkl4BOXjSlkKDDGWjaoKO3aZluGECirRMXm1H9sY5M/fyQ7menXm', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:58', NULL),
(99, 'User 99', 'ehood@icloud.com', '$2b$10$mDDYdqb65FZdURFDdThhRe8BMoRDA1A/nZ0MUF0I0oydcVClVYlAC', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:59', NULL),
(100, 'User 100', 'clkao@me.com', '$2b$10$SeIqMB73G7gHpMys29b88OnwxSGCL1Ww1tJvvIU26fv3/7phI4Ak2', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:59', NULL),
(101, 'User 101', 'breegster@yahoo.com', '$2b$10$MSbiRPJPoUrm8zSOH/2ntuS35ABZkit5SQ1ZE3rbqY6Lcy7M8J2ce', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:59', NULL),
(102, 'User 102', 'leocharre@comcast.net', '$2b$10$6Itz0Hgck2hR6OMh3yw2CO4ko.OU1uQ9j5DEYq8QSjMIwF/kLGq/y', 'aktif', 3, NULL, NULL, '2021-11-24 16:33:59', NULL),
(103, 'User 103', 'thrymm@live.com', '$2b$10$A24aZAhal4X79U/7ZsGE8ecR/wzSNNtiKdNsZysGJzTAluZtlvPVW', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:00', NULL),
(104, 'User 104', 'seemant@msn.com', '$2b$10$OVjFnHiqG8tEXATygVqtHO0oQDdT01xwWS0H/UTeRmgttiaPraToq', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:00', NULL),
(105, 'User 105', 'sagal@att.net', '$2b$10$IMDhLlMGNvK2pWDPBVEzOum6IVCOm0E/YwVM3Eupaca3qTlMquzFq', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:00', NULL),
(106, 'User 106', 'munson@att.net', '$2b$10$QFcPKadn9jQoU8VBBoi19e/JJKmInYnEvk.U0/UOkVZd3iciysgvK', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:00', NULL),
(107, 'User 107', 'dvdotnet@live.com', '$2b$10$eMeKGuPdulnuPoI0SWZbV.S07K7XJPh3H6HivWvaV0tvpmvQSsfsK', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:01', NULL),
(108, 'User 108', 'yangyan@comcast.net', '$2b$10$PYJHlXltMi6mLY6gBwMjY.O.TZtREyPqtASxtmzFYfAChGPpusItu', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:01', NULL),
(109, 'User 109', 'dkeeler@sbcglobal.net', '$2b$10$AnaZ.RzPbeSjvNDBz1tEy.HWz3MhcQ6VuPlV5PLoDKAypk7GLiF5G', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:01', NULL),
(110, 'User 110', 'daveewart@sbcglobal.net', '$2b$10$Y.DbimnPn9QHLFRqrY68YeJlh/KfR7hTJifx1Qg.DxEF/pU0A.oUO', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:01', NULL),
(111, 'User 111', 'erynf@yahoo.ca', '$2b$10$9uVq1UwGOXMrZItXUuAawuSOCmSSjhoSqkoDfmCJe.nqp0FBoRvu2', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:02', NULL),
(112, 'User 112', 'irving@att.net', '$2b$10$4KC0VWfJQMeDz3zOWIaFyOr3sj/nKSRf1LlY3ARPK.vrvjDxHVNgC', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:02', NULL),
(113, 'User 113', 'ghaviv@comcast.net', '$2b$10$fDjvbk3cJJ1PoO3.7NPPLeGOYlQkxj.dUZ5v/REiROPVJx80b/iAK', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:02', NULL),
(114, 'User 114', 'temmink@icloud.com', '$2b$10$tl/enhP.O4oCr92MtocSGu4/AifakBkrC0rXO3R7L1O0gIf9cTidy', 'aktif', 3, NULL, NULL, '2021-11-24 16:34:03', NULL);

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
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `semester` (`semester`);

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
  ADD KEY `kode_peminatan` (`kode_peminatan`);

--
-- Indexes for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD PRIMARY KEY (`kode_paket`),
  ADD KEY `kode_ujian` (`kode_ujian`);

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
-- Indexes for table `rel_mahasiswa_kelas`
--
ALTER TABLE `rel_mahasiswa_kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Rel_mahasiswa_kelas_kode_mhs_kode_seksi_unique` (`kode_mhs`,`kode_seksi`),
  ADD KEY `kode_seksi` (`kode_seksi`);

--
-- Indexes for table `rel_paketsoal_soal`
--
ALTER TABLE `rel_paketsoal_soal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Rel_paketsoal_soal_kode_soal_kode_paket_unique` (`kode_paket`,`kode_soal`),
  ADD KEY `kode_soal` (`kode_soal`);

--
-- Indexes for table `soal_essay`
--
ALTER TABLE `soal_essay`
  ADD PRIMARY KEY (`kode_soal`),
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `kode_dosen` (`kode_dosen`),
  ADD KEY `archived_by_createdAt` (`created_at`,`updated_at`);

--
-- Indexes for table `token_sessions`
--
ALTER TABLE `token_sessions`
  ADD PRIMARY KEY (`id_user`,`refresh_token`);

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
  MODIFY `kode_captcha` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `kode_dosen` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lupa_pw`
--
ALTER TABLE `lupa_pw`
  MODIFY `kode_reset_pw` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `kode_mhs` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rel_mahasiswa_kelas`
--
ALTER TABLE `rel_mahasiswa_kelas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rel_paketsoal_soal`
--
ALTER TABLE `rel_paketsoal_soal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `soal_essay`
--
ALTER TABLE `soal_essay`
  MODIFY `kode_soal` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

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
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `matakuliah` (`kode_matkul`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `ref_semester` (`kode_semester`);

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
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`kode_peminatan`) REFERENCES `ref_peminatan` (`kode_peminatan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD CONSTRAINT `paket_soal_ibfk_1` FOREIGN KEY (`kode_ujian`) REFERENCES `ujian` (`kode_ujian`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `rel_dosen_kelas`
--
ALTER TABLE `rel_dosen_kelas`
  ADD CONSTRAINT `rel_dosen_kelas_ibfk_1` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_dosen_kelas_ibfk_2` FOREIGN KEY (`kode_seksi`) REFERENCES `kelas` (`kode_seksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_mahasiswa_kelas`
--
ALTER TABLE `rel_mahasiswa_kelas`
  ADD CONSTRAINT `rel_mahasiswa_kelas_ibfk_1` FOREIGN KEY (`kode_mhs`) REFERENCES `mahasiswa` (`kode_mhs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_mahasiswa_kelas_ibfk_2` FOREIGN KEY (`kode_seksi`) REFERENCES `kelas` (`kode_seksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_paketsoal_soal`
--
ALTER TABLE `rel_paketsoal_soal`
  ADD CONSTRAINT `rel_paketsoal_soal_ibfk_1` FOREIGN KEY (`kode_paket`) REFERENCES `paket_soal` (`kode_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_paketsoal_soal_ibfk_2` FOREIGN KEY (`kode_soal`) REFERENCES `soal_essay` (`kode_soal`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `soal_essay`
--
ALTER TABLE `soal_essay`
  ADD CONSTRAINT `soal_essay_ibfk_1` FOREIGN KEY (`kode_soal`) REFERENCES `dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `soal_essay_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matakuliah` (`kode_matkul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `soal_essay_ibfk_3` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `token_sessions`
--
ALTER TABLE `token_sessions`
  ADD CONSTRAINT `token_sessions_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`kode_role`) REFERENCES `ref_role` (`kode_role`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
