-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2022 at 09:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bts`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) NOT NULL,
  `admin_nama` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `d_kelas`
--

CREATE TABLE `d_kelas` (
  `d_kelas_id` int(4) NOT NULL,
  `d_kelas_nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_kelas`
--

INSERT INTO `d_kelas` (`d_kelas_id`, `d_kelas_nama`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `gambar_id` int(11) NOT NULL,
  `gambar_nama` varchar(100) NOT NULL,
  `gambar_jenis` enum('wajib','bebas') NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`gambar_id`, `gambar_nama`, `gambar_jenis`, `kelas_id`) VALUES
(1, 'XII_AK_1_1.JPG', 'wajib', 1),
(2, 'XII_AK_1_2.JPG', 'bebas', 1),
(3, 'XII_AK_1_3.JPG', 'bebas', 1),
(4, 'XII_AK_1_4.JPG', 'bebas', 1),
(5, 'XII_AK_1_5.JPG', 'bebas', 1),
(6, 'XII_AK_1_6.JPG', 'bebas', 1),
(7, 'XII_AK_1_7.JPG', 'bebas', 1),
(8, 'XII_AK_1_8.JPG', 'bebas', 1),
(9, 'XII_AK_1_9.JPG', 'bebas', 1),
(10, 'XII_Ak_1_10.JPEG', 'wajib', 1),
(11, 'XII_Ak_1_11.JPEG', 'wajib', 1),
(12, 'XII_AK_2_1.jpg', 'wajib', 2),
(13, 'XII_AK_2_2.jpg', 'wajib', 2),
(14, 'XII_AK_2_3.jpg', 'wajib', 2),
(15, 'XII_AK_2_4.jpg', 'bebas', 2),
(16, 'XII_AK_2_5.jpg', 'bebas', 2),
(17, 'XII_AK_2_6.jpg', 'bebas', 2),
(18, 'XII_AK_2_7.jpg', 'bebas', 2),
(19, 'XII_AK_2_8.jpg', 'bebas', 2),
(20, 'XII_AK_2_9.jpg', 'bebas', 2),
(21, 'XII_Ak_2_10.jpg', 'bebas', 2),
(22, 'XII_Ak_2_11.jpg', 'bebas', 2),
(23, 'Foto_Kelas_1', 'wajib', 3),
(24, 'Foto_Kelas_2', 'wajib', 3),
(25, 'Foto_Kelas_3', 'wajib', 3),
(26, 'foto_bersama_1.jpg', 'wajib', 10),
(27, 'foto_bersama_2.jpg', 'wajib', 10),
(28, 'foto_bersama_3.JPG', 'wajib', 10),
(29, 'foto_kelompok_1.jpg', 'bebas', 10),
(30, 'foto_kelompok_2.jpg', 'bebas', 10),
(31, 'foto_kelompok_3.jpg', 'bebas', 10),
(32, 'foto_kelompok_4.jpg', 'bebas', 10),
(33, 'foto_kelompok_5.jpg', 'bebas', 10),
(34, 'foto_kelompok_6.jpg', 'bebas', 10),
(35, 'foto_kelompok_7.jpg', 'bebas', 10),
(36, 'foto_kelompok_8.jpg', 'bebas', 10),
(37, 'CEWEK_GRUP_1.jpg', 'bebas', 11),
(38, 'CEWEK_GRUP_2.png', 'bebas', 11),
(39, 'CEWEK_GRUP_3.png', 'bebas', 11),
(40, 'COWOK_GRUP_1.jpg', 'bebas', 11),
(41, 'COWOK_GRUP_2.jpg', 'bebas', 11),
(42, 'COWOK_GRUP_3.jpg', 'bebas', 11),
(43, 'KELAS_1.png', 'wajib', 11),
(44, 'KELAS_2.png', 'wajib', 11),
(45, 'KELAS_3.jpg', 'wajib', 11),
(46, 'XII_TKJ_1_1.jpg', 'bebas', 7),
(47, 'XII_TKJ_1_2.jpg', 'bebas', 7),
(48, 'XII_TKJ_1_3.jpg', 'bebas', 7),
(49, 'XII_TKJ_1_4.jpg', 'bebas', 7),
(50, 'XII_TKJ_1_5.jpg', 'bebas', 7),
(51, 'XII_TKJ_1_6.jpg', 'bebas', 7),
(52, 'XII_TKJ_1_7.jpg', 'bebas', 7),
(53, 'XII_TKJ_1_8.jpg', 'wajib', 7),
(54, 'XII_TKJ_1_9.jpg', 'wajib', 7),
(55, 'XII_TKJ_1_10.jpg', 'wajib', 7),
(56, 'IMG_1', 'bebas', 8),
(57, 'IMG_2', 'bebas', 8),
(58, 'IMG_3', 'bebas', 8),
(59, 'IMG_4', 'bebas', 8),
(60, 'IMG_5', 'wajib', 8),
(61, 'IMG_6', 'wajib', 8),
(62, 'IMG_7', 'wajib', 8),
(63, 'IMG_8', 'bebas', 8),
(64, 'IMG_9', 'bebas', 8),
(65, 'IMG_10', 'bebas', 8),
(66, 'IMG_11', 'bebas', 8),
(67, 'XII_TKJ_3_1.JPG', 'wajib', 9),
(68, 'XII_TKJ_3_2.JPG', 'bebas', 9),
(69, 'XII_TKJ_3_3.JPG', 'bebas', 9),
(70, 'XII_TKJ_3_4.JPG', 'wajib', 9),
(71, 'XII_TKJ_3_5.JPG', 'wajib', 9),
(72, 'XII_TKJ_3_6.JPG', 'bebas', 9),
(73, 'XII_TKJ_3_7.JPG', 'bebas', 9),
(74, 'XII_TKJ_3_8.JPG', 'bebas', 9),
(75, 'XII_TKJ_3_9.JPG', 'bebas', 9),
(76, 'XII_TKJ_3_10.JPG', 'bebas', 9),
(77, 'XII_TKJ_3_11.JPG', 'bebas', 9),
(78, 'XII_TKJ_3_12.JPG', 'bebas', 9),
(79, 'XII_TEI_3_1.JPG', 'wajib', 12),
(80, 'XII_TEI_3_2.JPG', 'wajib', 12),
(81, 'XII_TEI_3_3.JPG', 'wajib', 12),
(82, 'XII_TEI_3_4.JPG', 'bebas', 12),
(83, 'XII_TEI_3_5.JPG', 'bebas', 12),
(84, 'XII_TEI_3_6.JPG', 'bebas', 12),
(85, 'XII_TEI_3_7.JPG', 'bebas', 12),
(86, 'XII_TEI_3_8.JPG', 'bebas', 12),
(87, 'XII_TEI_3_9.JPG', 'bebas', 12),
(88, 'XII_TEI_4_1.jpg', 'wajib', 13),
(89, 'XII_TEI_4_2.jpg', 'wajib', 13),
(90, 'XII_TEI_4_3.jpg', 'wajib', 13),
(91, 'XII_TEI_4_4.JPG', 'bebas', 13),
(92, 'XII_TEI_4_5.jpg', 'bebas', 13),
(93, 'XII_TEI_4_6.jpg', 'bebas', 13),
(94, 'XII_TEI_4_7.jpg', 'bebas', 13),
(95, 'XII_TEI_4_8.jpg', 'bebas', 13),
(96, 'XII_TEI_4_9.jpg', 'bebas', 13),
(97, 'XII_RPL_1_1.jpg', 'wajib', 4),
(98, 'XII_RPL_1_2.jpg', 'bebas', 4),
(99, 'XII_RPL_1_3.jpg', 'wajib', 4),
(100, 'XII_RPL_1_4.jpg', 'wajib', 4),
(101, 'XII_RPL_1_5.jpg', 'bebas', 4),
(102, 'XII_RPL_1_6.jpg', 'bebas', 4),
(103, 'XII_RPL_1_7.jpg', 'bebas', 4),
(104, 'XII_RPL_1_8.jpg', 'bebas', 4),
(105, 'XII_RPL_1_9.jpg', 'bebas', 4),
(106, 'XII_RPL_1_10.jpg', 'bebas', 4),
(107, 'FIX 1.jpg', 'bebas', 5),
(108, 'FIX 2.jpg', 'bebas', 5),
(109, 'FIX 3.jpg', 'bebas', 5),
(110, 'FIX 4.jpg', 'bebas', 5),
(111, 'FIX 5.jpg', 'bebas', 5),
(112, 'FIX 6.jpg', 'bebas', 5),
(113, 'FIX 7.JPG', 'wajib', 5),
(114, 'FIX 8.JPG', 'wajib', 5),
(115, 'FIX 9.JPG', 'wajib', 5),
(116, 'XII_TBSM_2_1.JPG', 'bebas', 15),
(117, 'XII_TBSM_2_2.JPG', 'bebas', 15),
(118, 'XII_TBSM_2_3.JPG', 'bebas', 15),
(119, 'XII_TBSM_2_4.JPG', 'bebas', 15),
(120, 'XII_TBSM_2_5.JPG', 'bebas', 15),
(121, 'XII_TBSM_2_6.JPG', 'wajib', 15),
(122, 'XII_TBSM_2_7.JPG', 'wajib', 15),
(123, 'XII_TBSM_2_8.jpg', 'wajib', 15),
(124, 'XII_TBSM_3_1.JPG', 'wajib', 16),
(125, 'XII_TBSM_3_2.jpg', 'wajib', 16),
(126, 'XII_TBSM_3_3.JPG', 'wajib', 16),
(127, 'XII_TBSM_3_4.JPG', 'bebas', 16),
(128, 'XII_TBSM_3_5.JPG', 'bebas', 16),
(129, 'XII_TBSM_3_6.jpg', 'bebas', 16),
(130, 'XII_TBSM_3_7.jpg', 'bebas', 16),
(131, 'XII_TBSM_3_8.jpg', 'bebas', 16),
(132, 'XII_TBSM_3_9.jpg', 'bebas', 16),
(133, 'XII_TBSM_3_10.jpg', 'bebas', 16),
(134, 'XII_TBSM_4_1.jpg', 'wajib', 17),
(135, 'XII_TBSM_4_2.jpg', 'wajib', 17),
(136, 'XII_TBSM_4_3.jpg', 'wajib', 17),
(137, 'XII_TET_2_1.JPG', 'bebas', 19),
(138, 'XII_TET_2_2.JPG', 'bebas', 19),
(139, 'XII_TET_2_3.jpg', 'wajib', 19),
(140, 'XII_TET_2_4.jpg', 'wajib', 19),
(141, 'XII_TET_2_5.jpg', 'wajib', 19),
(142, 'Foto1.JPG', 'bebas', 18),
(143, 'Foto2.JPG', 'bebas', 18),
(144, 'Foto3.JPG', 'bebas', 18),
(145, 'Foto4.JPG', 'wajib', 18),
(146, 'Foto5.JPG', 'wajib', 18),
(147, 'Foto6.JPG', 'wajib', 18),
(148, 'Foto7.JPG', 'bebas', 18),
(149, 'Foto8.JPG', 'bebas', 18),
(150, 'Foto9.JPG', 'bebas', 18),
(151, 'ramean1.JPG', 'wajib', 6),
(152, 'ramean2.JPG', 'bebas', 6),
(153, 'ramean3.JPG', 'wajib', 6),
(154, 'ramean4.JPG', 'bebas', 6),
(155, 'ramean5.JPG', 'bebas', 6),
(156, 'ramean6.JPG', 'bebas', 6),
(157, 'ramean7.JPG', 'bebas', 6),
(158, 'ramean8.JPG', 'bebas', 6),
(159, 'ramean9.JPG', 'bebas', 6),
(160, 'ramean10.JPG', 'bebas', 6),
(161, 'ramean11.JPG', 'bebas', 6),
(162, 'ramean12.JPG', 'bebas', 6),
(163, 'ramean13.JPG', 'bebas', 6),
(164, 'ramean14.JPG', 'bebas', 6),
(165, 'ramean15.JPG', 'bebas', 6),
(166, 'ramean16.JPG', 'bebas', 6),
(167, 'ramean17.JPG', 'bebas', 6),
(168, 'ramean18.JPG', 'wajib', 6);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nama` varchar(225) NOT NULL,
  `guru_gambar` varchar(225) NOT NULL,
  `guru_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`guru_id`, `guru_nama`, `guru_gambar`, `guru_jabatan`) VALUES
(1, 'ABDUL ROHIM', 'ABDUL ROHIM.JPG', 'Keamanan'),
(2, 'ABDUL ROSID, S.Pd.', 'ABDUL ROSID, S.Pd.JPG', 'PPKN'),
(3, 'ABDUL ROZAQ SYAM, S.Kom.', 'ABDUL ROZAQ SYAM, S.Kom.JPG', 'Tata Usaha'),
(4, 'AGUS SETIAWAN, S.Pd.', 'AGUS SETIAWAN, S.Pd.JPG', 'PKKWU'),
(5, 'AHMAD BIRUL WALID, S.Pd, MM.', 'AHMAD BIRUL WALID, S.Pd, MM.JPG', 'DDO'),
(6, 'AHMAD TAUFIK, S.Kom.', 'AHMAD TAUFIK, S.Kom.JPG', 'PROD. TKJ (DASJUR)'),
(7, 'ALIMUDIN, M.T.', 'ALIMUDIN, M.T.JPG', 'PSSM'),
(8, 'ANDI SUSANDI, S.Kom.', 'ANDI SUSANDI, S.Kom.JPG', 'Kepala Program RPL'),
(9, 'ANDRI, S.Pd.', 'ANDRI, S.Pd.JPG', 'PROD. TET'),
(10, 'ANWAR SANUSI, S.Pd.', 'ANWAR SANUSI, S.Pd.JPG', 'Bahasa Inggris'),
(11, 'ANWAR SATA', 'ANWAR SATA.JPG', 'CARAKA'),
(12, 'ARDIYANTO KURNIAWAN, S.Psi.', 'ARDIYANTO KURNIAWAN, S.Psi.JPG', 'BP/BK'),
(13, 'ARFIAN SYAH, S.Kom', 'ARFIAN SYAH, S.Kom.JPG', 'PROD. TKJ (DASJUR)'),
(14, 'ARIEF KUSDARMADI, S.Pd.', 'ARIEF KUSDARMADI, S.Pd.JPG', 'INFORMATIKA'),
(15, 'ARIS SUTIANA, S.T.', 'ARIS SUTIANA, ST.JPG', 'PROD. TEI (PSR)'),
(16, 'ARNI ERNAWATI, S.Pd.', 'ARNI ERNAWATI, S.Pd.JPG', 'Bahasa Indonesia'),
(17, 'B.AGUS WIMBADI, M.Pd.', 'B.AGUS WIMBADI, M.Pd.JPG', 'Kepala Sekolah'),
(18, 'BERKAH TRI LESTARI, S.Pd.', 'BERKAH TRI LESTARI, S.Pd.JPG', 'BP/BK'),
(19, 'BONIN', 'BONIN.JPG', 'Keamanan'),
(20, 'DADANG, SE.', 'DADANG, SE.JPG', 'Tata Usaha'),
(21, 'DADI HIDAYAT', 'DADI HIDAYAT.JPG', 'Keamanan'),
(22, 'DANI KURNAWAN, S.Kom.', 'DANI KURNAWAN, S.Kom.JPG', 'Kepala Program TKJ'),
(23, 'DEDEN FANJI PRADANA, S.Pd.', 'DEDEN FANJI PRADANA, S.Pd.JPG', 'PROD. AK (DKK)'),
(24, 'DEDEN NURHALIM, SE.', 'DEDEN NURHALIM, SE.JPG', 'Tata Usaha'),
(25, 'DEDY MARYANTO, S.Kom.', 'DEDY ANDRIANTO, S.Kom.JPG', 'PROD. RPL (DASJUR)'),
(26, 'DEWI MARLINA, S.Pd.', 'DEWI MARLINA, S.Pd.JPG', 'Kepala Program TEI'),
(27, 'DINA MARIYANA, S.Pd.', 'DINA MARIYANA, S.Pd.JPG', 'PPKN'),
(28, 'Dra.SUWARNI.', 'Dra.SUWARNI.JPG', 'PKKWU'),
(29, 'DWI FITRIYANI, S.Pd.', 'DWI FITRIYANI, S.Pd.JPG', 'BP/BK'),
(30, 'EKAWATI, S.Pd.', 'EKAWATI, S.Pd.JPG', 'Bahasa Indonesia'),
(31, 'ELI SUSANTI, S.Pd.', 'ELI SUSANTI, S.Pd.JPG', 'Matematika'),
(32, 'EMMY SIDABUTAR, S.Pd.', 'EMMY SIDABUTAR, S.Pd.JPG', 'Matematika'),
(33, 'ERMA OCTAVIA, S.T.', 'ERMA OCTAVIA, S.T.JPG', 'PROD. TEI (PKKWU)'),
(34, 'ERNI ROSITAWATI, S.T.', 'ERNI ROSITAWATI, S.T.JPG', 'IPAS'),
(35, 'ESTI FAUZI, M.Pd.', 'ESTI FAUZI, M.Pd.JPG', 'PKKWU'),
(36, 'FALAH KOUFUN', 'FALAH KOUFUN.JPG', 'Tata Usaha'),
(37, 'FIRMANSYAH KURNIAWAN, S.Pd.', 'FIRMANSYAH KURNIAWAN, S.Pd.JPG', 'Penjasorkes'),
(38, 'FITRI AAN ANDRIANI, S.Pd.', 'FITRI AAN ANDRIANI, S.Pd.JPG', 'PPKN'),
(39, 'FITRIA PUJI ASTUTI, Sos.', 'FITRIA PUJI ASTUTI, Sos', 'Tata Usaha'),
(40, 'GILANG ADITIA PUTRA SUMADINATA, S.Pd.', 'GILANG ADITIA PUTRA SUMADINATA, S.Pd.JPG', 'BP/BK'),
(41, 'HANUJI, S.Kom.', 'HANUJI, S.Kom..JPG', 'PROD. RPL (DASJUR)'),
(42, 'HARIS SYAMSUDIN, M.Pd.', 'HARIS SYAMSUDIN, M.Pd.JPG', 'Matematika'),
(43, 'ICHSAN ARFIAN, S.S.', 'ICHSAN ARFIAN, S.S.JPG', 'Bahasa Jepang'),
(44, 'IDA NINGSIH, S.Pd.I.', 'IDA NINGSIH, S.Pd.I.JPG', 'Pendidikan Agama dan Budi Pekerti'),
(45, 'IMAM NURSYAHIED, S.Pd.', 'IMAM NURSYAHIED, S.Pd.JPG', 'Kepala Program TET'),
(46, 'INDRI MEIDIASIH, S.Pd.', 'INDRI MEIDIASIH, S.Pd.JPG', 'Seni Budaya'),
(47, 'IRFAN ALI', 'IRFAN ALI.JPG', 'Tata Usaha'),
(48, 'ISTIKOMAH, S.Pd.', 'ISTIKOMAH, S.Pd.JPG', 'PROD. AK (KEU 1)'),
(49, 'IWAN RISYANTO, SE.', 'IWAN RISYANTO, SE.JPG', 'CARAKA'),
(50, 'JAMALUDIN, SE.', 'JAMALUDIN, SE.JPG', 'ITC'),
(51, 'KARSENO, M.Pd.', 'KARSENO, M.Pd.JPG', 'INFORMATIKA'),
(52, 'KOMARUDIN ARDIANSYAH, S.Pd.I.', 'KOMARUDIN ARDIANSYAH, S.Pd.I.JPG', 'Pendidikan Agama dan Budi Pekerti'),
(53, 'KUSARI PAUNTU, M.Kom.', 'KUSARI, M.Kom.JPG', 'PROD. RPL (BASDAT)'),
(54, 'KUSNAN, SE.', 'KUSNAN, SE.JPG', 'Tata Usaha'),
(55, 'LENIE BADHIAH, S.Pd.', 'LENIE BADHIAH, S.Pd.JPG', 'PROD. TKJ (AIJ)'),
(56, 'LINA MARLINA, S.Si.', 'LINA MARLINA, S.Si.JPG', 'Matematika'),
(57, 'MARDIANA, S.Pd.', 'MARDIANA, S.Pd.JPG', 'IPAS'),
(58, 'MARIMIN, S.Pd.', 'MARIMIN, S.Pd.JPG', 'Bahasa Indonesia'),
(59, 'MARYADI', 'MARYADI.JPG', 'CARAKA'),
(60, 'MARYONO, SE.', 'MARYONO, SE.JPG', 'PROD. AK (MYOB 1)'),
(61, 'MERLIN, S.Pd.', 'MERLIN, S.Pd.JPG', 'BP/BK'),
(62, 'METY INDRIATI, SS.', 'METY INDRIATI, SS.JPG', 'Bahasa Jepang'),
(63, 'MUHDA OKTI NAIMA, S.T.', 'MUHDA OKTI NAIMA, S.T.JPG', 'IPAS'),
(64, 'NAIN, S.Pd.', 'NAIN, S.Pd.JPG', 'CARAKA'),
(65, 'NASIP SURYANA', 'NASIP SURYANA.JPG', 'Tata Usaha'),
(66, 'NESIN SEPTIANA', 'NESIN SEPTIANA.JPG', 'Keamanan'),
(67, 'NOVITA IRMAYANTI, S.Pd.', 'NOVITA IRMAYANTI, S.Pd.JPG', 'Matematika'),
(68, 'NUNUNG NURMALASARI, S.Pd.I.', 'NUNUNG NURMALASARI, S.Pd.I.JPG', 'Tata Usaha'),
(69, 'NUR LAELA TUSIYAMAH, S.E, M.Pd.', 'NUR LAELA TUSIYAMAH, S.E, M.Pd.JPG', 'PROD. AK (PRAK 1)'),
(70, 'NY.SAIDAH,S.AG.', 'NY.SAIDAH,S.AG..JPG', 'Pendidikan Agama dan Budi Pekerti'),
(71, 'O. FATHUROCHMAN, M.Pd.', 'O. FATHUROCHMAN, M.Pd.JPG', 'PROD. TEI (PRE)'),
(72, 'OTONG NASIHIN, S.Pd.', 'OTONG NASIHIN, S.Pd.JPG', 'Bahasa Indonesia'),
(73, 'RACHMAD RIYADI, S.Pd.', 'RACHMAD RIYADI, S.Pd.JPG', 'PROD. TET'),
(74, 'RAHMAWATI SYAM, S.Pd.', 'RAHMAWATI SYAM, S.Pd.JPG', 'Bahasa Inggris'),
(75, 'RAMDANI,S.Kom.', 'RAMDANI,S.Kom.JPG', 'PROD. RPL (PBO)'),
(76, 'RENDIKA RAMADANI, S.Pd.', 'RENDIKA RAMADANI, S.Pd.JPG', 'Penjasorkes'),
(77, 'RETNO ANJANI, S.Pd.', 'RETNO ANJANI, S.Pd.JPG', 'Bahasa Inggris'),
(78, 'RIFA SRIHIDAYATI, S.Pd.', 'RIFA SRIHIDAYATI, S.Pd.JPG', 'PKKWU TEI'),
(79, 'RISMAN NOVIAN, S.Kom.', 'RISMAN NOVIAN, S.Kom.JPG', 'PROD. RPL (DASJUR)'),
(80, 'RISNIANI DEWI, SE.', 'RISNIANI DEWI, SE.JPG', 'Perpustakaan'),
(81, 'ROHADI YUSUF, S.Pd.', 'ROHADI YUSUF, S.Pd.JPG', 'Kepala Program TBSM'),
(82, 'RR. RIZKY HANGESTI MUKTI, S.Pd.', 'RR. RIZKY HANGESTI MUKTI, S.PD.JPG', 'Sejarah Indonesia'),
(83, 'RVI RISNAINI, S.Pd.', 'RVI RISNAINI, S.Pd.JPG', 'BP/BK'),
(84, 'SARAH ANNISA FAUZIYATI, S.Pd.', 'SARAH ANNISA FAUZIYATI, S.Pd.JPG', 'PROD. AK (MYOB 2)'),
(85, 'SATRIA SUNARYA, S.Kom.', 'SATRIA SUNARYA, S.Kom.JPG', 'PROD. TKJ (TWAN)'),
(86, 'SILVIYANNA,SE.', 'SILVIYANNA,SE.JPG', 'Tata Usaha'),
(87, 'SITI MASITOH, S.Pdi.', 'SITI MASITOH, S.Pdi.JPG', 'Pendidikan Agama dan Budi Pekerti'),
(88, 'SLAMET RAHARJO,S.Pd.', 'SLAMET RAHARJO,S.Pd.JPG', 'Produktif TSM'),
(89, 'SOLIHIN, S.Pd.', 'SOLIHIN, S.Pd.JPG', 'Produktif TSM'),
(90, 'SRI HERI BUDIYANI, SE.', 'SRI HERI BUDIYANI, SE.JPG', 'Kasubak Tata Usaha'),
(91, 'SRI SUPRIATININGSIH, S. Pd.', 'SRI SUPRIATININGSIH, S. Pd.JPG', 'Kepala Program AK'),
(92, 'SRI SURIANTI, S.Pd.', 'SRI SURIANTI, S.Pd.JPG', 'Sejarah Indonesia'),
(93, 'SUGANDI', 'SUGANDI.JPG', 'Keamanan'),
(94, 'SUGIMAN, S.Pd.', 'SUGIMAN, S.Pd.JPG', 'PPKN'),
(95, 'SUKARNI RADJIMAN, S.Pd.', 'SUKARNI RADJIMAN, S.Pd.JPG', 'PROD. TEI (PPPPE)'),
(96, 'SULISTIYONO, S.Pd.', 'SULISTIYONO, S.Pd.JPG', 'Bahasa Inggris'),
(97, 'SUMARYO, S.Ti.', 'SUMARYO, S.Ti.JPG', 'PROD. TKJ (DASJUR)'),
(98, 'THALIB, S.Pd.', 'THALIB, S.Pd.JPG', 'Penjasorkes'),
(99, 'TITI SUPARNI, S.Pd.', 'TITI SUPARNI, S.Pd.JPG', 'Tata Usaha'),
(100, 'TITIK YULIATI, S.Pd.', 'TITIK YULIATI, S.Pd.JPG', 'Bahasa Indonesia'),
(101, 'TUWONO, S.Pd, MM.', 'TUWONO, S.Pd, MM.JPG', 'PKKWU'),
(102, 'WENDY HADITTIA, S.Kom.', 'WENDY HADITTIA, S.Kom.JPG', 'ITC'),
(103, 'WIDI SANTOSO, S.Kom.', 'WIDI SANTOSO, S.Kom.JPG', 'PROD. TKJ (ASJ)'),
(104, 'WILUJENG HADI CAHYANI, S.Pd.', 'WILUJENG HADI CAHYANI, S.Pd.JPG', 'IPAS TKJ'),
(105, 'YANI S.Pd.', 'YANI S.Pd.JPG', 'Matematika'),
(106, 'ZAKARIA', 'ZAKARIA', 'Keamanan'),
(107, 'ZULMAHDI, S.Pd.', 'ZULMAHDI, S.Pd.JPG', 'PSSM');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` int(4) NOT NULL,
  `jurusan_nama` varchar(100) NOT NULL,
  `jurusan_logo` varchar(255) NOT NULL,
  `jurusan_deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`jurusan_id`, `jurusan_nama`, `jurusan_logo`, `jurusan_deskripsi`) VALUES
(1, 'AK', 'ak.png', 'desc ak'),
(2, 'RPL', 'rpl.png', 'desc rpl'),
(3, 'TKJ', 'tkj.png', 'desc tkj'),
(4, 'TEI', 'tei.png', 'desc tei'),
(5, 'TBSM', 'tbsm.png', 'desc tbsm'),
(6, 'TET', 'tet.png', 'desc tet');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(50) NOT NULL,
  `kelas_gambar` varchar(50) NOT NULL,
  `jurusan_id` int(4) NOT NULL,
  `d_kelas_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `kelas_nama`, `kelas_gambar`, `jurusan_id`, `d_kelas_id`) VALUES
(1, 'Akuntansi 1', 'AK1.JPG', 1, 1),
(2, 'Akuntansi 2', 'AK2.JPG', 1, 2),
(3, 'Akuntansi 3', 'AK3.JPG', 1, 3),
(4, 'Rekayasa Perangkat Lunak 1', 'RPL1.JPG', 2, 1),
(5, 'Rekayasa Perangkat Lunak 2', 'RPL2.JPG', 2, 2),
(6, 'Rekayasa Perangkat Lunak 3', 'RPL3.JPG', 2, 3),
(7, 'Teknik Komputer dan Jaringan 1', 'TKJ1.JPG', 3, 1),
(8, 'Teknik Komputer dan Jaringan 2', 'TKJ2.JPG', 3, 2),
(9, 'Teknik Komputer dan Jaringan 3', 'TKJ3.JPG', 3, 3),
(10, 'Teknik Elektronika Industri 1', 'TEI1.JPG', 4, 1),
(11, 'Teknik Elektronika Industri 2', 'TEI2.JPG', 4, 2),
(12, 'Teknik Elektronika Industri 3', 'TEI3.JPG', 4, 3),
(13, 'Teknik Elektronika Industri 4', 'TEI4.JPG', 4, 4),
(14, 'Teknik dan Bisnis Sepeda Motor 1', 'TBSM1.JPG', 5, 1),
(15, 'Teknik dan Bisnis Sepeda Motor 2', 'TBSM2.JPG', 5, 2),
(16, 'Teknik dan Bisnis Sepeda Motor 3', 'TBSM3.JPG', 5, 3),
(17, 'Teknik dan Bisnis Sepeda Motor 4', 'TBSM4.JPG', 5, 4),
(18, 'Teknik Energi Terbarukan 1', 'TET1.JPG', 6, 1),
(19, 'Teknik Energi Terbarukan 2', 'TET2.JPG', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` int(10) NOT NULL,
  `siswa_nama` varchar(225) NOT NULL,
  `siswa_gambar` varchar(255) NOT NULL,
  `siswa_quote` varchar(100) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_gambar`, `siswa_quote`, `kelas_id`) VALUES
(1, 192010571, 'Adinda Qusnul Khotimah', 'Adinda_Qusnul_Khotimah.JPG', 'Sabar dulu, satu persatu, be calm, one day you will be the best version of you. Trust me!', 1),
(2, 192010572, 'Agnis Naeni Dinata', 'Agnis_Naeni_Dinata.JPG', 'Think, work hard, pray, be patient, and succeed.', 1),
(3, 192010573, 'Amelia Faradila Putriyan', 'Amelia_Faradila_Putriyan.JPG', 'Tetaplah memiliki dua kepribadian, walau hanya satu saja yang boleh dilihat banyak orang', 1),
(4, 192010574, 'Anisa Lathifa Nur Fadila', 'Anisa_Lathifa_Nur_Fadila.JPG', 'Tak kiro lali mbales, tibak e wes males', 1),
(5, 192010575, 'Audya Friska Maharani', 'Audya_Friska_maharani.JPG', 'ikan lele makan tomat, alhamdulillah tamat', 1),
(6, 192010576, 'Ayu Lestari', 'Ayu_Lestari.JPG', 'be strong and independent.', 1),
(7, 192010577, 'Bunga Ayu Syallsabilah', 'Bunga_Ayu_Syallsabilah.JPG', 'Sekolah di sini kaya makan bittersweet by najla, mo meninggal', 1),
(8, 192010578, 'Clara Aurabbela', 'Clara_Aurabbela.JPG', 'Next to trying and winning, the best thing is trying and failing.', 1),
(9, 192010579, 'Dewi Afri Yani', 'Dewi_Afri_Yani.JPG', 'Whatever you are, be the best', 1),
(10, 192010580, 'Diah Widi Anita', 'Diah_Widi_Anita.JPG', 'Success is an achievement.while, struggling is amust.', 1),
(11, 192010581, 'Dwi Yana Fehylia', 'Dwi_Yana_Fehylia.JPG', 'No need to rush, we have forever to reach the top', 1),
(12, 192010582, 'Ezra Vera Lia Panjaitan', 'Ezra_Vera_Lia_Panjaitan.JPG', 'A sure Hope', 1),
(13, 192010583, 'Firdha Frisca Fadilah', 'Firdha_Frisca_fadilah.JPG', 'Don\'t expect too much', 1),
(14, 192010584, 'Hera Ananta', 'Hera_Ananta.JPG', 'Jika ingin terwujud jangan lupa bersujud', 1),
(15, 192010585, 'Isnaeni Fadilah', 'Isnaeni_Fadillah.JPG', 'Saat hidup sama sekali tak memberimu senyuman, coba beri dia sedikit gelitikan.', 1),
(16, 192010586, 'Ivana Grecia Sihombing', 'Ivana_Grecia_Sihombing.JPG', 'it\'s still a progress no matter how small', 1),
(17, 192010587, 'Khairul Anam', 'Khairul_Anam.JPG', 'banyak angan-angan yang tak terkabulkan karena hanya sekedar diucapkan', 1),
(18, 192010588, 'Lutfi Cahya Ningrum', 'Lutfi_Cahya_Ningrum.JPG', 'Don\'t look back with regret, look forward with hope', 1),
(19, 192010589, 'Marisa Nuraini', 'Marisa_Nuraini.JPG', 'fake friends talk shit behind of you, real friends talk shit about you right in front of your face', 1),
(20, 192010590, 'Moralidia Ningrum Widyani', 'Moralidia_Ningrum_Widyani.JPG', 'Most failure comes from the fear of failure', 1),
(21, 192010591, 'Muhammad Rendi Saputra', 'Muhamad_Rendi_Saputra.JPG', 'jangan terpaku sama masa lalu tapi lihat lah masa depan', 1),
(22, 192010592, 'Munzi Faiziyah Aziz', 'Munzi_Faiziyah_Aziz.JPG', 'jangan takut salah, kan ada tipe-x', 1),
(23, 192010593, 'Nasiah', 'Nasiah.JPG', 'Berbuat baiklah tanpa perlu alasan', 1),
(24, 192010594, 'Nur Zanah', 'Nur_Zanah.JPG', 'Yakinlah, Allah akan memberikan yang terbaik, bukan yang tercepat.', 1),
(25, 192010595, 'Raflindo Pratama', 'Raflindo_Pratama.JPG', 'Jangan mengulang kesalahan yang sama,masih banyak kesalahan  lain yang harus dicoba', 1),
(26, 192010596, 'Rama Meika Sundura', 'Rama_Meika_Sundura.JPG', 'blessed to be a blessing', 1),
(27, 192010597, 'Renatal Amaze Gracia Patinno', 'Renatal_Amaze_Gracia_Patinno.JPG', 'Impossible we do, Miracle we try', 1),
(28, 192010598, 'Rosalinda', 'Rosalinda.JPG', 'it\'s okay to not be okay', 1),
(29, 192010599, 'Sally Imelda', 'Sally_Imelda.JPG', 'Because struggle is a sign of your journey to success.', 1),
(30, 192010600, 'Selvia Hermonia Pardosi', 'Selvia_Hermonia_Pardosi.JPG', 'There\'s written in an ancient book that i\'m the salt and the light of this world.', 1),
(31, 192010601, 'Salahuddin Al Ayubi', 'Shalahuddin_Al_Ayubi.JPG', 'Dikejar gajah aku tidak lari, gajahnya lari aku diam saja, dikejar ikan aku tidak mampu', 1),
(32, 192010602, 'Siallagan Lorenzya Oktavia', 'Siallagan_Lorenzya_Oktavia.JPG', 'Orang lain aja bisa pasti aku lebih bisa semangat ayo', 1),
(33, 192010603, 'Silva Lisna Riyadi', 'Silva_Lisna_Riyadi.JPG', 'First u learn, then u remove the L', 1),
(34, 192010604, 'Siti Halimah', 'Siti_Halimah.JPG', 'Jika hidup mu terlalu sulit maka tidurlah dan bermimpi', 1),
(35, 192010605, 'Tamara Selpiana', 'Tamara_Selpiana.JPG', 'mental gapenting yg penting nilai', 1),
(36, 192010606, 'Vina Fitriani', 'Vina_Fitriani.JPG', 'pray hard, study hard, istirahard', 1),
(37, 192010607, 'Adista Kustiyani', 'Adista_Kustiyani.jpg', 'Gausah pusing kalau rencana A gagal, kan masih ada 25 alfabet lainnya', 2),
(38, 192010608, 'Alif Fani Hanifah', 'Alif_Fani_Hanifah.jpg', 'Lakukan sesuatu hari ini yang akan membuat dirimu berterima kasih dimasa depan', 2),
(39, 192010609, 'Andini Selviyana Putri', 'Andini_Selviyana_Putri.jpg', 'Kebersamaan ini ibarat kepompong, kadang bikin kepo, kadang juga malah rempong', 2),
(40, 192010610, 'Anisa Nurhayati', 'Anisa_Nurhayati.jpg', 'Uang tidak akan dibawa mati, tapi uang enak dibawa hidup', 2),
(41, 192010611, 'Aulia Rahmadani Riyadi', 'Aulia_Rahmadani_Riyadi.jpg', 'belajar dari hujan yang tidak pernah menyerah walaupun takdirnya terjatuh', 2),
(42, 192010613, 'Cecilia Fatihah Isyani', 'Cecilia_Fatihah_Isyani.jpg', 'Tidak harus jadi hebat untuk memulai tapi harus memulai untuk jadi hebat', 2),
(43, 192010614, 'Crisnina Selly Wardani', 'Crisnina_Selly_Wardani.jpg', 'lakukan apa yang ingin kamu lakukan, jangan perdulikan apa yang orang pikirkan tentangmu.', 2),
(44, 192010615, 'Dhea Nur Safitri', 'Dhea_Nur_Safitri.jpg', 'Hidup bagaikan rumus matematika, isinya cuma menyelesaikan masalah', 2),
(45, 192010616, 'Dila Prasepta Putri', 'Dila_Prasepta_Putri.jpg', 'be who and what you want', 2),
(46, 192010617, 'Dyan Puspita Sari', 'Dyan_Puspita_Sari.jpg', 'bergegaslah meraih kesuksesan, agar tidak malu saat reunian', 2),
(47, 192010618, 'Fahra Dinda Fatikhah', 'Fahra_Dinda_Fatikhah.jpg', 'Bekerja keras lah kamu sampai orang orang mengaku \'oh dia teman saya\'', 2),
(48, 192010619, 'Florida Nur\'naeni', 'Florida_Nur\'naeni.jpg', 'Tidak ada yang namanya perpisahan, yang ada hanya jeda untuk menyambut pertemuan', 2),
(49, 192010620, 'Hiksa Nova Harisma', 'Hiksa_Nova_Harisma.jpg', 'Jangan biarkan rasa takut menentukan masa depanmu', 2),
(50, 192010622, 'Lutviyana', 'Lutviyana.jpg', 'mau nulis panjang panjang tapi takut diomelin panitia', 2),
(51, 192010623, 'Maudy Trisna Sari', 'Maudy_Trisna_Sari.jpg', 'jika kamu ingin sukses tanpa usaha percayalah saya juga ingin', 2),
(52, 192010624, 'Muhammad Raihan Az-Zhafran', 'Muhammad_Raihan_Az-Zhafran.jpg', 'Hidup itu sulit. Inget kata Bu Istikomah \'Ya Allah Ya Karim\'', 2),
(53, 192010625, 'Nadia_Elviana', 'Nadia_Elviana.jpg', 'Keluarlah dari zona takutmu, bangkitlah dari rasa malumu', 2),
(54, 192010626, 'Nazwa_Khairunnisa', 'Nazwa_Khairunnisa.jpg', 'Hargailah waktu, karna waktu tidak bisa diputar, dijilat apalagi dicelupin', 2),
(55, 192010627, 'Nofi Peratiwi', 'Nofi_Peratiwi.jpg', 'ujian hidup banyak banget, tapi ngga bisa remedial', 2),
(56, 192010628, 'Okta Attala Ramadhan', 'Okta_Attala_Ramadhan.jpg', 'Never gonna give you up, Never gonna let you down, Never gonna run around and desert you', 2),
(57, 192010629, 'Paramita Susanti', 'Paramita_Susanti.jpg', 'Yang bisa kamu ubah adalah diri kamu sendiri ⎯ Bukan orang lain', 2),
(58, 192010630, 'Putri Aulia Rohimah', 'Putri_Aulia_Rohimah.jpg', 'selain remaja lansia, kita adalah remaja yang punya banyak rencana tapi kekurangan dana', 2),
(59, 192010631, 'Rahma Jingga Alisya Pradana', 'Rahma_Jingga_Alisya_Pradana.jpg', 'Nikmati hujanmu, maka pelangi impianmu akan datang', 2),
(60, 192010632, 'Ratna Sari', 'Ratna_Sari.jpg', 'Jangan mengulangi kesalahan yang sama, masih banyak kesalahan yang perlu dicoba', 2),
(61, 192010634, 'Sandi Akbari', 'Sandi_Akbari.jpg', 'Buronan mertua', 2),
(62, 192010635, 'Selvi', 'Selvi.jpg', 'jika tidak bisa jadi yang terbaik jadilah yang terburuk', 2),
(63, 192010636, 'Shera Dwi Nabila', 'Shera_Dwi_Nabila.jpg', 'Perpisahan membuat kita mengerti, bahwa semua yang terjadi disini begitu berarti', 2),
(64, 192010637, 'Sintia', 'Sintia.jpg', 'kamu mau jalan yang cepat, tapi Allah tau jalan yang tepat.', 2),
(65, 192010638, 'Siti Komariah', 'Siti_Komariah.jpg', 'Waktu tidak punya waktu untuk menunggumu mau, cuz life goes on', 2),
(66, 192010639, 'Syaila Putri Pebrianti', 'Syaila_Putri_Pebrianti.jpg', 'tak perlu kata kata yang penting bukti nyata', 2),
(67, 192010640, 'Tresya Febiola', 'Tresya_Febiola.jpg', 'tidak ada usaha yg sia sia yg ada hanya ekspektasi yg tidak terealisasikan semesta', 2),
(68, 192010641, 'Yovita Anastasia', 'Yovita_Anastasia.jpg', 'Tidak semuanya harus sekarang, menjadi kuat juga butuh rehat', 2),
(69, 192010642, 'Afrilia Herawati', 'afrilia_herawati.jpg', 'Trust your journey even if the road seems a little rough at times, you\'ll get there.', 3),
(70, 192010643, 'Alifah Wulandari', 'alifah_wulandari.jpg', 'Living only once is wrong. We live every day and die once.', 3),
(71, 192010644, 'Anggelita Febriyanti', 'anggelita_febriyanti.jpg', 'Hidup sesuai kemampuan, bukan kemauan.', 3),
(72, 192010645, 'Ariel Faqih Muzhaffar', 'ariel_faqih_muzhaffar.jpg', 'Kita adalah pernah, bukan punah, bukan menyerah, hanya sudah.', 3),
(73, 192010646, 'Ayestania Hedita', 'ayestania_hedita.jpg', 'You were born to be real, not be perfect.', 3),
(74, 192010647, 'Azalia Dalawir', 'azalia_dalawir.jpg', 'From zero to hero, from nothing to something.', 3),
(75, 192010648, 'Choirunnisa', 'choirunnisa.jpg', 'Jangan beri tahu orang-orang tentang rencanamu. Tapi, tunjukkan pada mereka hasilmu.', 3),
(76, 192010650, 'Diah Ayu Frimanda', 'diah_ayu_frismanda.jpg', 'Study now, be proud later.', 3),
(77, 192010651, 'Dini Al-Adawiah', 'dini_al-adawiah.jpg', 'Every day, Take a Step to Grow up.', 3),
(78, 192010652, 'Eliniawati', 'eliniawati.jpg', 'Be yourself because no one wants to be you.', 3),
(79, 192010653, 'Firda Arlina Hudoyo', 'firda_arlina_hudoyo.jpg', 'Mau + tapi = konflik', 3),
(80, 192010654, 'Ghina Nabilah Fauziyyah', 'ghina_nabilah_fauziyyah.jpg', 'Hardwork will never betray you.', 3),
(81, 192010655, 'Iin Indah Sari', 'iin_indah_sari.JPG', 'Waktu tidak dapat diputar, dijilat, apalagi dicelupin.', 3),
(82, 192010657, 'Lira Aulia Nurahman', 'lira_aulia_nurahman.jpg', 'People who laugh too hard and coughing are the people who, minum too much teajus.', 3),
(83, 192010658, 'Mariah', 'mariah.jpg', 'Don\'t just dream but make it happen.', 3),
(84, 192010659, 'Mirna Sartika', 'mirna_sartika.jpg', 'Loving yourself isn\'t vanity, it\'s sanity.', 3),
(85, 192010660, 'Munjiah Asliani', 'munjiah_asliani.jpg', 'Believe that everything in your life is God\'s beautiful plan for you.', 3),
(86, 192010661, 'Namira Putri Karpali', 'namira_putri_karpali.JPG', 'Sich selbst zu lieben ist keine eitelkeit, sondern vernunft.', 3),
(87, 192010662, 'Nilam Ayu Prasetya', 'nilam_ayu_prasetya.JPG', 'Perjuangan merupakan tanda perjalananmu menuju sukses.', 3),
(88, 192010663, 'Nisa Pebiyanti', 'nisa_pebiyanti.jpg', 'i\'m only smiling because this is all over.', 3),
(89, 192010664, 'Noklina', 'noklina.jpg', 'Jangan bandingkan proses mu dengan orang lain karna tidak semua bunga mekar secara bersamaan.', 3),
(90, 192010665, 'Putri Indiana Sari', 'putri_indiana_sari.jpeg', 'Hargai kedua orang tuamu, mereka berhasil lulus sekolah tanpa bantuan google.', 3),
(91, 192010666, 'Qurratu A\'ini', 'qurratu_a\'ini.jpg', 'Apapun yang terjadi, teruslah bernafas.', 3),
(92, 192010667, 'Rizka Habibah', 'rizka_habibah.JPG', 'Don’t be afraid to give up the good for the great.', 3),
(93, 192010668, 'Sabrina Karimah Putri', 'sabrina_karimah_putri.jpg', 'Human, half of water, half of mager.', 3),
(94, 192010669, 'Selly Septinur Rohmah', 'selly_septinur_romah.jpg', 'Do something today that your future self will thank you for.', 3),
(95, 192010670, 'Selpia', 'selpia.jpg', 'Life will always guide you to what\'s best for you.', 3),
(96, 192010671, 'Siti Fatimah', 'siti_fatimah.jpeg', 'Jangan membenci mereka yang ingin menjatuhkanmu, karena merekalah yang buatmu semakin kuat.', 3),
(97, 192010672, 'Siti Munaroh', 'siti_munaroh.jpg', 'Motivasi tanpa aksi adalah halusinasi.', 3),
(98, 192010673, 'Suryani Tirta Lestari', 'suryani_tirta_lestari.jpeg', 'The happiness we create, don\'t expect it from others because it will hurt.', 3),
(99, 192010674, 'Syarifah', 'syarifah.JPG', 'Kita dilahirkan untuk menjadi nyata bukan sempurna.', 3),
(100, 192010675, 'Trista Ananda', 'trista_ananda.jpg', 'Ikan hiu makan tomat, Alhamdulillah tamat.', 3),
(101, 192010676, 'Yunitsa Rakhmawati', 'yunitsa_rakhmawati.JPG', 'Kejarlah akhirat maka dunia akan mengikutimu.', 3),
(102, 192010144, 'Ab Zhirdan Gunawan', 'ab_zhirdan_gunawan.jpg', 'it\'s okay kalo lu ga suka gua. cause ga semua orang punyaselera yang bagus.', 10),
(103, 192010145, 'Abdillah Satria Winasis', 'abdillah_satria_winasis.jpg', 'Jauh jauh ke tanggerang,yang ku dapatkan hanya rindu di BUTUN', 10),
(104, 192010146, 'Abil Rifai', 'abil_rifai.jpg', 'jangan ikuti mimpimu, ikuti saja Instagramku @abllrif', 10),
(105, 192010147, 'Aditya Putra Pranawa', 'aditya_putra_pranawa.jpg', 'terkadang waktu yang singkat memiliki kenangan yang hebat.', 10),
(106, 192010148, 'Ahmad Yusup', 'ahmad_yusup.jpg', 'Cinta tak selamanya indah sayang, tapi nikmati saja sebelum keindahannya hilang.', 10),
(107, 192010149, 'Aldy Indrawam', 'aldy_indrawan.jpg', 'i want to thank google,wikipedia,brainly, and to whoever invited copy and paste. Thankyou', 10),
(108, 192010150, 'Alya Ananda Luthfiah', 'alya_ananda_luthfiah.jpg', 'Akun ini privat', 10),
(109, 192010151, 'Dede Mista', 'dede_mista.jpg', 'Saya ingin SLAMDUNK kepalamu ke ring itu.', 10),
(110, 192010152, 'Dwi Candra', 'dwi_candra.jpg', 'Berpikirlah yang Baik', 10),
(111, 192010153, 'Halimah Tusoleha', 'halimah_tusoleha.jpg', 'Hidup pasti banyak rintangan,kalau liat banyak rantangan namanya nyorog kalau kata orang Betawi mah', 10),
(112, 192010154, 'Hikmal Afdilah Akbar', 'hikmal_abdilah_akbar.jpg', 'Bagaimanapun rupa & sikapnya manusia tetap manusia belajar memanusiakan manusia', 10),
(113, 192010155, 'Husein Zhafari', 'husein_zhafari.jpg', 'KNOWLEDGE IS POWER', 10),
(114, 192010156, 'Ikhsan Abdu Fadlilah', 'Ikhsan_abdu_fadlilah.jpg', 'rela melupakan sang pemberi rezeki dengan alasan mencari rezeki', 10),
(115, 192010157, 'Iqbal Fatrurrahman', 'iqba_faturrahman.jpg', 'Ingat! Uang tidak akan membuatmu bahagia, kalo sedikit WKWK', 10),
(116, 192010158, 'Jahwa Hariyanti', 'jahwa_hariyanti.jpg', 'study all the time? no, i sleep all the time. and yet, here i am', 10),
(117, 192010159, 'Juan Carlos Sebastian', 'juan_carlos_sebastian.jpg', 'have problem? better sleep', 10),
(118, 192010160, 'Julianto Lukman Nugroho', 'julianto_lukman_nugroho.jpg', 'jadilah seperti bulu ketek, tetap bertahan hidup walaupun terjepit', 10),
(119, 192010161, 'Khavid Akmalul Huda', 'khavid_akmalul_huda.jpg', 'jangan males, kamu rajin aja belum tentu ada yang mau', 10),
(120, 192010162, 'M Nasruloh', 'm_nasruloh.jpg', 'Cie yang abis lulus bingung mau kemana, haha kasiannn, mending ke ig @sunsblessthrift aja deh.', 10),
(121, 192010163, 'Mery Cahyaning Utami', 'mery_cahyaning_utami.jpg', 'SEMANGAT!!! Masih banyak cobaan yang harus kita cobain', 10),
(122, 192010164, 'Mohamad Ichwan Fahreza', 'mohamad_ichwan_fahreza.jpg', 'hidup adalah seni menggambar tanpa penghapus', 10),
(123, 192010166, 'Muhammad Zahran', 'muhammad_zahran.jpg', 'tidak ada orang alay di dunia ini,anda hanya tidak bisa menerima bentuk kebahagiaan orang lain', 10),
(124, 192010167, 'Nabila Zahra Fatin', 'nabila_zahra_fatin.jpg', 'i repeat Out Of time from The Weeknd more times than my school lessons', 10),
(125, 192010168, 'Naila Nursabila', 'naila_nursabila.jpg', 'Work, eat, sleep, repeat', 10),
(126, 192010169, 'Niken Puspitasari', 'niken_puspitasari.jpg', 'Reminder : Less Egos, More Amigos', 10),
(127, 192010170, 'Panji Rafi Ramadhan', 'panji_rafi_ramadhan.jpg', 'Sadar akan kekurangan lebih baik daripada bangga akan kelebihan', 10),
(128, 192010171, 'Raihan Fahrezi Ferdiansyah', 'raihan_fahrezi_ferdiansyah.jpg', 'Setiap manusia pasti akan merasakan mati, patah hati dan ditipu politisi.', 10),
(129, 192010172, 'Raihan Hafiz Amirulloh M', 'raihan_hafiz_am.jpg', 'jika anda tidak menikmati hidup, lalu mengapa anda hidup', 10),
(130, 192010173, 'Rendi Saputra', 'rendi_saputra.jpg', 'Hapus semua kenangan sedih. Genggam tangan satu sama lain dan tersenyumlah.', 10),
(131, 192010174, 'Riski Romadhon', 'riski_romadhon.jpg', 'Raihlah mimpimu dan jangan dengarkan kata orang laon', 10),
(132, 192010175, 'Riski Saputra', 'riski_saputra.jpg', 'Semakin sulit perjalanan hidupmu, maka kamu akan semakin kuat.', 10),
(133, 192010176, 'Rozi Sahlan', 'rozi_sahlan.jpg', 'secapek capeknya kerja, lebih capek lagi nganggur.', 10),
(134, 192010177, 'Seva Nabila Putri', 'seva_nabila_putri.jpg', 'I am usually not one for speeches, so goodbye.', 10),
(135, 192010178, 'Sigit Fadilah', 'sigit_fadilah.jpg', 'Stop Saying \'I WISH\' Start Saying \'I WILL\'', 10),
(136, 192010179, 'Yani Nurmala', 'yani_nurmala.jpg', 'Belajar bersyukur, terlalu banyak keinginan hanya akan menyiksa diri', 10),
(137, 192010180, 'ADELIA DWI SAGITA', 'ADELIA_DWI_SAGITA.jpg', 'Ikan hiu makan tomat, Alhamdulillah tamat.', 11),
(138, 192010182, 'AHMAD RIYADI', 'AHMAD_RIYADI.png', 'Pada akhirnya takdir tuhan selalu baik, walau terkadang perlu air mata untuk menerimanya.', 11),
(139, 192010183, 'ARIF BAYU ASMORO', 'ARIF_BAYU_ASMORO.png', 'Bekerja keraslah secara diam-diam dan biarkan kesuksesanmu yang membuat kegaduhan.', 11),
(140, 192010184, 'ARIF FREDYANTO', 'ARIF_FREDYANTO.png', 'Jangan mengulangi kesalahan yang sama, masih banyak kesalahan lain yang perlu dicoba.', 11),
(141, 192010185, 'AULIA DWI YUNIANTI', 'AULIA_DWI_YUNIANTI.png', 'Ternyata bukan takdir atau waktu yang salah, tetapi keraguan yang  berkali-kali datang.', 11),
(142, 192010186, 'DAMAR DWI PRASTYO', 'DAMAR_DWI_PRASTYO.png', 'You aren\'t do it wrong, if no one know what you are doing.', 11),
(143, 192010187, 'DEAN IBNU DORIS', 'DEAN_IBNU_DORIS.png', 'Relax, calm, and enjoy the moment. (Minase Inori ga daisuki).', 11),
(144, 192010188, 'DIMAS JUNIOR', 'DIMAS_JUNIOR.png', 'Jika kamu gagal menjadi orang sukses maka sesungguhnya kamu sudah sukses menjadi orang gagal.', 11),
(145, 192010189, 'DINDA PERMATA', 'DINDA_PERMATA.png', 'Wish you all the best and Allah bless you.', 11),
(146, 192010190, 'FADHLI AHMAD FAISAL', 'FADHLI_AHMAD_FAISAL.png', 'Pikiran ialah benih kreativitas dan hati itu tanah. Benih tak bisa tumbuh tanpa hati yang terbuka.', 11),
(147, 192010191, 'FARHAN MAULANA JAYA', 'FARHAN_MAULANA_JAYA.png', 'Lihatlah apa yang dikatakan, jangan melihat siapa yang mengatakan.', 11),
(148, 192010192, 'FARID DWI CAHYO', 'FARID_DWI_CAHYO.png', 'No one really cares about ur quotes.', 11),
(149, 192010193, 'FATURAHMAN FIRMANSYAH RAMADHAN', 'FATURAHMAN_FIRMANSYAH_RAMADHAN.png', 'I Love you 3000 in every universe.', 11),
(150, 192010196, 'ILHAM RIZQI AWALUDIN', 'ILHAM_RIZQI_AWALUDIN.png', 'Cobalah ikuti kata hatimu, tapi jangan sampai lupa bawa juga otak dan logikamu.', 11),
(151, 192010197, 'KAKA ISYA FAHREZI NUGROHO', 'KAKA_ISYA_FAHREZI_NUGROHO.png', 'Jika kita tidak ditakdirkan bersama, maka izin kan aku mencintaimu saja.', 11),
(152, 192010198, 'KOMARUDIN', 'KOMARUDIN.png', 'Mendengar satu kata, mengerti dua kata. Itulah orang bijak.', 11),
(153, 192010199, 'LODOVITUS ANTONIUS TUE', 'LODOVITUS_ANTONIUS_TUE.png', 'Apa yang kau tabur itulah yang kau tuai.', 11),
(154, 192010200, 'MARLEBRIYANTO ALDIRA', 'MARLEBRIYANTO_ALDIRA.png', 'Dapat dimengerti, semoga harimu menyenangkan.', 11),
(155, 192010201, 'MITA NUR AZIZAH', 'MITA_NUR_AZIZAH.png', 'Allah sudah mempersiapkan jalan untuk hidupmu, tapi kamu malah rebahan.', 11),
(156, 192010202, 'MUHAMMAD ADITYA WIBISONO', 'MUHAMMAD_ADITYA_WIBISONO.png', 'Uang memang bukanlah segalanya, tapi segalanya butuh uang.', 11),
(157, 192010203, 'MUHAMMAD ARIFIN ILHAM', 'MUHAMMAD_ARIFIN_ILHAM.png', 'Tidak perlu banyak kata-kata. Btw, 08 berapa?', 11),
(158, 192010204, 'MUHAMMAD FARHAN WIRDIANSYAH', 'MUHAMMAD_FARHAN_WIRDIANSYAH.png', 'Tidak mengenal diri sendiri, adalah hal yang terburuk.', 11),
(159, 192010205, 'MUHAMMAD SYAHRIAL', 'MUHAMMAD_SYAHRIAL.png', 'Kebahagiaan tidak akan bertahan lama untuk mereka yang tidak pernah merasa cukup.', 11),
(160, 192010206, 'NASRUL ARIANSYAH AZWAR', 'NASRUL_ARIANSYAH_AZWAR.png', 'Manusia sebatas penonton yang kemudian berkomentar seolah tau segalanya.', 11),
(161, 192010207, 'NUR DWI RAMADANI', 'NUR_DWI_RAMADANI.png', 'Sekolah disini kayak kelilipan, merem melek merem melek eh lulus.', 11),
(162, 192010208, 'PURINKA AMEYLIAN', 'PURINKA_AMEYLIAN.png', 'My whole school life is like Avril Lavigne\'s song. Yes, Complicated.', 11),
(163, 192010209, 'PUTRA MASAGUNG', 'PUTRA_MASAGUNG.jpg', 'Hidup adalah seni menggambar tanpa penghapus.', 11),
(164, 192010211, 'RAFIANSYAH DWI KURNIAWAN', 'RAFIANSYAH_DWI_KURNIAWAN.png', 'Nothing impossible.', 11),
(165, 192010212, 'REZA IRLANSYAH', 'REZA_IRLANSYAH.png', 'Tak perlu kata kata sing penting bukti nyataa, masoookkkkk.', 11),
(166, 192010213, 'REZKY ASMAPUTRA', 'REZKY_ASMAPUTRA.jpg', 'Hidup seperti Larry.', 11),
(167, 192010214, 'SABILAH FAZIRIAH', 'SABILAH_FAZIRIAH.png', 'Sabar dulu, satu persatu, one day you will be the best version of you.', 11),
(168, 192010215, 'SANDY NUGRAHA', 'SANDY_NUGRAHA.png', 'Aku tidak suka kekerasan, tapi tidak masalah kalau aku dipukul dengan keberuntungan.', 11),
(169, 192010464, 'Abyan Farras', 'abyan_farras.jpg', 'Disambut kopi, dipeluk sepi. Mengepul kehampaan yang menyambut kepulangan', 7),
(170, 192010465, 'Ahmad Luky', 'ahmad_luky.jpg', 'Lebih baik menjauh daripada tersakiti, itulah caraku menggoreng ikan', 7),
(171, 192010466, 'Andien Tri', 'andien_tri.jpg', 'Seperti tarik tambang, ternyata mundur itu menang', 7),
(172, 192010467, 'Annisa Aulia', 'annisa_aulia.jpg', 'School is like reading a book, I don\'t like reading books', 7),
(173, 192010468, 'Arief Hidayat', 'arief_hidayat.jpg', 'I don\'t need you to tell me who I am, I have what I want and no one will ever take it from me', 7),
(174, 192010469, 'Ayunita Febriani', 'ayunita_febriani.jpg', 'Cukup suara Lee Felix saja yang berat, hidupku jangan', 7),
(175, 192010470, 'Bayu Purwo', 'bayu_purwo.jpg', 'Setiap pulang kerumah kebiasaan rumah gua belom pulang', 7),
(176, 192010471, 'Cut Vira', 'cut_vira.jpg', 'High school to went I, school high to went y\'all', 7),
(177, 192010472, 'Dhita Cahyani', 'dhita_cahyani.jpg', 'Cape itu wajar, yang ngga wajar ketampanannya Haruto', 7),
(178, 192010473, 'Dhiya Rifqi', 'dhiya_rifqi.jpg', 'Habis satu dua', 7),
(179, 192010477, 'Hikmah Nur', 'hikmah_nur.jpg', 'Kembali menghela nafas, kembali dipaksa ikhlas', 7),
(180, 192010478, 'Iko Candra', 'iko_candra.jpg', 'Kopi punya cerita, hitam tak selalu kotor, pahit tak selalu sedih', 7),
(181, 192010479, 'Marsiyah', 'marsiyah_marsiyah.jpg', 'Jangan menunggu hari yang baik untuk berbuat baik', 7),
(182, 192010480, 'M.Aditya', 'm_aditya.jpg', 'Kurang tidur tapi banyak mimpi', 7),
(183, 192010481, 'Mulyani', 'mulyani_mulyani.jpg', 'Kalo tidak bisa jadi yang baik, minimal bisa dihargai', 7),
(184, 192010482, 'Nur Aini', 'nur_aini.jpg', 'Berfikirlah seperti Proton, selalu berfikir positif', 7),
(185, 192010483, 'Nurhalisah Apriani', 'nurhalisah_apriani.jpg', 'Jangan seperti Newton, kebanyakan gaya', 7),
(186, 192010484, 'Nurohman', 'nurohman_nurohman.jpg', 'Berikan kepada saya seekor ikan, ajari ia menangkap ikan maka ia akan makan seumur hidupnya', 7),
(187, 192010485, 'Petrishia Ziliwu', 'petrishia_ziliwu.jpg', 'We live to serve, not to be served', 7),
(188, 192010486, 'Raditya Ilham', 'raditya_ilham.jpg', 'Hidup adalah seni, semua tergantung dari perspektif masing masing', 7),
(189, 192010487, 'Reza Maulana', 'reza_maulana.jpg', 'Tanpa aku warga indonesia kurang satu', 7),
(190, 192010488, 'Reza putra', 'reza_putra.jpg', 'Belajar menerima keadaan tanpa harus membenci kenyataan', 7),
(191, 192010489, 'Riza Aperodita', 'riza_aperodita.jpg', 'The only thing that’s constaint is change', 7),
(192, 192010490, 'Rizki Pahmi', 'rizki_pahmi.jpg', 'Duit limit gengsi unlimited', 7),
(193, 192010491, 'Riski Nur Imtiyas', 'riski_imtiyas.jpg', 'Ketika senang kau melupakannya tetapi ketika susah kau mengingat dan meminta kepadanya', 7),
(194, 192010492, 'Septian Nanda', 'septian_nanda.jpg', 'Ada lelah yang sengaja ditahan, karena ada harapan yang harus diwujudkan', 7),
(195, 192010493, 'Stefanie Aurelia', 'stefanie_aurelia.jpg', 'Nilai itu nomer dua, yang penting mah absen aja dulu', 7),
(196, 192010494, 'Tegar Taufiq', 'tegar_taufiq.jpg', 'Jangan lupa minum mizone biar ga kena friendzone', 7),
(197, 192010495, 'Tiyah', 'tiyah_tiyah.jpg', 'Jika tidak bisa jadi yang terbaik maka jadilah yang terburuk', 7),
(198, 192010496, 'Welhnard Van', 'welhnard_van.jpg', 'Orang jahat terlahir karena orang baik udah banyak', 7),
(199, 192010497, 'Yasmin Novita', 'yasmin_novita.jpg', 'Pas kena masalah nyari quotes motivasi tapi ngga nyari solusi', 7),
(200, 192010498, 'Yuliana', 'yuliana.jpg', 'Pintar itu relatif, nyontek adalah alternatif', 7),
(201, 192010499, 'Yusuf Maulana', 'yusuf_maulana.jpg', 'Motivasi tanpa aksi hanyalah mugen tsukoyomi', 7),
(202, 192010500, 'Adi Krisna Yudha', 'adi,jpg', 'Hidup itu sederhana, kita yang membuatnya sulit', 8),
(203, 192010502, 'Ayi Rosita', 'ayi.jpg', 'Lihat ke atas agar terinspirasi, lihat ke bawah agar bersyukur', 8),
(204, 192010503, 'Bima Naufal Mubarak', 'bima.jpg', 'Tidak ada yang bisa memberimu kebahagiaan sejati kecuali Allah', 8),
(205, 192010504, 'Deswita', 'wita.jpg', 'Pengen liat guru piket nyapu', 8),
(206, 192010505, 'Dewo Antonioly', 'dewo.jpg', 'Namanya juga anak-anak', 8),
(207, 192010506, 'Dwi Apriliani Putri', 'dwi.jpg', 'ikan hiu makan tomat, alhamdulillah tamat', 8),
(208, 192010508, 'Erwin Octavianus Tambunan', 'erwin.jpg', 'pertemuan dan perpisahan terjadi terlalu cepat. Namun kenangan dan perasaan tinggal terlalu lama', 8),
(209, 192010510, 'Ibnu Maulana Fajri', 'ibnu.jpg', 'Boleh capek, boleh istirahat dulu tapi jangan sampe nyerah', 8),
(210, 192010511, 'Indah Ramadani', 'indah.jpg', 'Jangan percaya libur 2 minggu', 8),
(211, 192010512, 'Intan Apriliani', 'intan.jpg', 'ga semua orang tulus, ada juga afgan', 8),
(212, 192010513, 'Irgi Ahmad Narayan', 'irgi.jpg', 'ujian kok pencet pencet', 8),
(213, 192010514, 'Isyandi  Muhammad Fadillah', 'isyandi.jpg', 'Saya tidak buka grup whatsapp pada saat itu', 8),
(214, 192010515, 'M. Aufal Syafi\'Il', 'mela.jpg', 'Hidup adalah seni menggambar tanpa penghapus.', 8),
(215, 192010516, 'Mela Trigaena', 'rafi.jpg', 'Jangan berpikir untuk sempurna tetapi berpikirlah untuk berguna', 8),
(216, 192010517, 'Mohammad Rafii Athallah', 'farid.jpg', 'Nama sopo membuat gw bisa berbaur dengan akrab walaupun mereka tak mengenal siapa itu gw', 8),
(217, 192010518, 'Muhamad Farid Prasetiyo', 'amran.jpg', 'Tidak peduli apa yang harus di korbankan , di dunia ini lulus adalah segalanya.', 8),
(218, 192010519, 'Muhammad Amran', 'aufal.jpg', 'Janganlah engkau menimba ilmu atau pengetahuan, karena dalam sumur tidak ada pengetahuan.', 8),
(219, 192010520, 'Muhammad Iqbal', 'iqbal.jpg', 'Jika ukuran benar-benar penting, gajah sudah lama menjadi raja hutan.', 8),
(220, 192010521, 'Najlaa Arya Utami', 'najla.jpg', 'Chill Dude', 8),
(221, 192010522, 'Novita Amelia', 'amel.jpg', 'kejarlah ilmu setinggi-tingginya, karna kalau ngejar dia ga tau kapan luluhnya', 8),
(222, 192010523, 'Nur Amalia Agustin', 'lia.jpg', 'Belajarlah sampai gurumu mengira kau admin brainly', 8),
(223, 192010524, 'Nur Nazma Syawalia', 'nazma.jpg', 'Success is a journey, not a destination', 8),
(224, 192010525, 'Pandu G. Semano', 'pandu.jpg', 'Bersyukurlah, Terkadang tuhan memberi kita COBAAN sebelum PUJIAN', 8),
(225, 192010526, 'Rafa Ananda Putra Syahroni', 'rafa.jpg', 'Your dreams will come true, when you wake up bro', 8),
(226, 192010527, 'Rahmat Hidayat', 'rahmat.jpg', 'Diam bergerak sama-sama mempunyai resiko.tetapi peluang lebih besar ketika kalian BERGERAK', 8),
(227, 192010528, 'Rangga Ramadina Putra', 'rangga.jpg', 'Jangan pernah meninggalkan sholat, jika kamu tau rasanya ditinggal', 8),
(228, 192010529, 'Rani Nur Aeni', 'rani.jpg', 'Saya tidak buka grup whatsapp pada saat itu', 8),
(229, 192010530, 'Reno Dwi Cahya', 'reno.jpg', 'Kepopuleran sekolah hanya sementara, dan tidak membantumu sama sekali saat dewasa', 8),
(230, 192010531, 'Rifqi Yovila Candra', 'rifqi.jpg', 'Kalo mau maju jangan setengah-setengah', 8),
(231, 192010532, 'Riska Tri Hanifah', 'hani.jpg', 'jangan mengejar mimpi, karna mimpi bukan maling', 8),
(232, 192010533, 'Sakha Ega Risqulloh', 'ega.jpg', 'One day or day one', 8),
(233, 192010534, 'Tiara Sapitri', 'tiara.jpg', 'Disetiap kesulitan pasti ada kemudahan, mudah menyerah contohnya.', 8),
(234, 192010535, 'Yulia Stephani Ismail', 'yulia.jpg', 'Simpan rasa takutmu Raih masa depanmu', 8),
(235, 192010536, 'Annisa Putri Rahayu', 'Annisa_Putri_Rahayu.jpg', 'saya rajin males malesan ko masi dibilang males, heran.', 9),
(236, 192010537, 'Ariyanti Dewi', 'ARIYANTI_DEWI.JPG', 'Berhenti jadi orang ga enakan', 9),
(237, 192010538, 'Bayu Akbar Bimantara', 'BAYU_AKBAR_BIMANTARA.JPG', 'Jangan percaya dengan semua yang kau lihat, bahkan Garam terlihat seperti Gula', 9),
(238, 192010539, 'Chelsea Hutabarat', 'CHELSEA_HUTABARAT.JPG', 'Ada manis,ada pahit', 9),
(239, 192010540, 'Dalla Nira Aji', 'DALLA_NIRA_AJI.JPG', 'Pertemuan hanyalah persiapan untuk berpisah,sialnya kita tidak pernah siap.', 9),
(240, 192010541, 'Devi Ayu Septianingsih', 'DEVI_AYU_SEPTIANINGSIH.JPG', 'tempat yang bagus, nyaman dipakai untuk tidur', 9),
(241, 192010542, 'Eva Erliana', 'Eva_Erliana.jpg', 'belajarlah dengan giat, klo ga kuat brainly aja', 9),
(242, 192010544, 'Fresti Kumala Dewi', 'FRESTI_KUMALA_DEWI.JPG', 'Terima kasih teman-teman.tanpa nama orang tua kalian suasana  kelas terasa garing', 9),
(243, 192010546, 'Henry Afif Setiantono', 'HENRY_AFIF_SETIANTONO.JPG', 'botak terus kapan panjangnya', 9),
(244, 192010547, 'Indah Nurwahyuni', 'INDAH_NURWAHYUNI.JPG', 'ambil resiko atau kehilangan kesempatan?', 9),
(245, 192010548, 'Ira Tamara', 'IRA_TAMARA.jpg', 'gapunya motto punyanya molto', 9),
(246, 192010549, 'Maisun Septriazahra Wibowo', 'MAISUN_SEPTRIAZAHRA_WIBOWO.JPG', 'sepandai-pandainya tupai melompat, kamu tetep gabisa menggapai aku', 9),
(247, 192010550, 'Mega Otoria', 'MEGA_OTORIA.JPG', 'lah lulus', 9),
(248, 192010551, 'Mohamad Naufal Maisan Saputra', 'MOHAMAD_NAUFAL_MAISAN_SAPUTRA.JPG', 'Keabisan kata2', 9),
(249, 192010552, 'Muchammad Hasbi Ashshiddiqi', 'MUCHAMMAD_HASBI_ASHSHIDDIQI.JPG', 'Manusia tidak akan pernah mengerti, jika tidak mengalami hal yang sama.', 9),
(250, 192010553, 'Muhammad Dewa Abdillah', 'MUHAMMAD_DEWA_ABDILLAH.JPG', 'Pisau yang dapat melukaimu,dan obat pahit dapat menyembuhkanmu', 9),
(251, 192010554, 'Muhammad Fajar Ilham', 'Muhammad_Fajar_Ilham.JPG', 'Gatau males mau lulus aja', 9),
(252, 192010555, 'Muhammad Rifky Fadhilah', 'MUHAMMAD_RIFKY_FADHILAH.JPG', 'Pikir baik-baik kalo mau daftar Sekolah ya dek', 9),
(253, 192010556, 'Nasywa Afri M', 'NASYWA_AFRI_M.JPG', 'nilai kamu rendah? kasih hilo aja biar tinggi', 9),
(254, 192010557, 'Nur Wardani', 'Nur_Wardani.jpeg', 'tidak banyak bicara bukan berarti  tidak tahu apa apa', 9),
(255, 192010558, 'Priyo Suryo Panuntun', 'PRIYO_SURYO_PANUNTUN.JPG', 'Bermimpilah sesuka hati tentang apa yang kamu inginkan, karena itu hanya mimpi', 9),
(256, 192010559, 'Putri Melya Andani', 'PUTRI_MELYA_ANDANI.jpg', 'Seribu kebaikan akan kalah dengan satu kesalahan', 9),
(257, 192010560, 'Rahmat Adi Nugroho', 'RAHMAT_ADI_NUGROHO.JPG', 'Alhamdulillah for everything', 9),
(258, 192010561, 'Revalina Dwiyanti', 'Revalina_Dwiyanti.JPG', 'jangan lupa pake masker', 9),
(259, 192010562, 'Ridho Al Hafiz', 'RIDHO_AL_HAFIZ.JPG', 'Masuk butun karena kepencet', 9),
(260, 192010563, 'Ridwan Nugroho', 'RIDWAN_NUGROHO.JPG', 'Hidup bukanlah permainan keberuntungan', 9),
(261, 192010564, 'Riqjan Nurdiano Putra', 'RIQJAN_NURDIANO_PUTRA.JPG', 'gua masuk sekolah ini terpaksa, disuruh ortu gua.', 9),
(262, 192010565, 'Satria Fernandra Setyarsono', 'Satria_Fernandra_Setyarsono.JPG', 'Jika seseorang berfikir bahwa dunia itu tidak adil, bukankah itu adil?', 9),
(263, 192010566, 'Siti Nurjanah', 'SITI_NURJANAH.jpeg', 'Penghuni sekolah', 9),
(264, 192010567, 'Sri Wulandari', 'SRI_WULANDARI.JPG', 'banyak mimpi tapi kurang tidur', 9),
(265, 192010568, 'Tri Susilawati', 'TRI_SUSILAWATI.jpg', 'Jangan berhenti ketika lelah. Berhentilah ketika selesai', 9),
(266, 192010569, 'Windu Sasmito Aji', 'WINDU_SASMITO_AJI.JPG', 'Sewa badut terjangkau dm @windusasmitoaji', 9),
(267, 192010570, 'Yogi Aslam Sentyo', 'YOGI_ASLAM_SENTYO.JPG', 'Hidup ga selamanya diatas,Tetapi berusahalah untuk hidup tetap diatas', 9),
(268, 192010252, 'Adam', 'Adam.jpeg', 'Lahir di kota yang tak pernah tidur & dibesarkan oleh seorang perempuan yang mencintaiku selamanya.', 13),
(269, 192010253, 'Ahmad Maulana', 'Ahmad _Maulana.jpeg', 'Baik boleh tapi jangan merasa lebih baik.', 13),
(270, 192010254, 'Amelia Falentin', 'Amelia_Falentin.jpg', 'Waktumu terbatas, jangan habiskan untuk hidup orang lain.', 13),
(271, 192010255, 'Angga Mardiansyah', 'Angga_Mardiansyah.jpeg', 'Ada lelah yang ditahan Karena ada harapan Yang harus diwujudkan.', 13),
(272, 192010256, 'Aprizal', 'Aprizal.jpeg', 'Ingat, ini hanya hari yang buruk, bukan kehidupan yang buruk.', 13),
(273, 192010257, 'Ardi Putra Dwitama', 'Ardi_Putra_Dwitama.jpg', 'Hidup akan lebih mudah jika kamu menikmati apa yang kamu miliki.', 13),
(274, 192010258, 'Ari Cahyono', 'Ari_Cahyono.jpg', 'Hari lo ga berat, lo hanya lupa caranya bersyukur john.', 13),
(275, 192010259, 'Arya Kusuma Wardani', 'Arya_Kusuma_Wardani.jpeg', 'Orang Bejo lebih sukses dibanding orang pintar.', 13),
(276, 192010260, 'Baisal Wahyudin', 'Baisal_Wahyudin.jpeg', 'Tidak harus jadi hebat untuk memulai tapi harus memulai untuk jadi hebat.', 13),
(277, 192010261, 'Dita Sagita', 'Dita_Sagita.jpeg', 'Sebaik apapun kalian, akan terlihat buruk dimata pembenci.', 13),
(278, 192010262, 'Faris Ahsan Ghalib', 'Faris_Ahsan_Ghalib.jpeg', 'What we think determines who we are. Who we are determines what we do.', 13),
(279, 192010263, 'Ferdy Putra Pradana', 'Ferdy_Putra_Pradana.jpeg', 'Ben akhire ora kecewa, dewe kudu ngerti kapan wektune berharap lan kapan wektune kudu mandeg.', 13),
(280, 192010264, 'Fikriando Putra Seprizka', 'Fikriando_Putra_Seprizka.jpeg', 'Motivasi Tanpa Aksi Hanyalah Mugen Tsukoyomi.', 13),
(281, 192010266, 'Fitriyah Rahmawati', 'Fitriyah_Rahmawati.jpg', 'Jangan ngurusin hidup saya, saya udah kurus.', 13),
(282, 192010267, 'Hikmal Nursandi', 'Hikmal_Nursandi.jpeg', 'Untung saja hujan turunnya air, kalau turunya gua pasti rebutan.', 13),
(283, 192010268, 'Iqbal Putra', 'Iqbal_Putra.jpeg', 'Hidup bukan tentang menunggu badai berlalu, ini tentang belajar menari di tengah hujan', 13),
(284, 192010269, 'Kanaya Aqila', 'Kanaya_Aqila.jpeg', 'Sekolah disini kaya plat jakarta, b aja.', 13),
(285, 192010270, 'Muhammad Faisal Ramdhan', 'Muhammad_Faisal_Ramdhan.jpeg', 'Perjuangan merupakan tanda perjalananmu menuju sukses.', 13),
(286, 192010271, 'Muchamad Rafi Saputra', 'Muchamad_Rafi_Saputra.jpeg', 'Nobody cares about your instastory and your fake life on social media.', 13),
(287, 192010272, 'Muhammad Ar Rohman', 'Muhammad_Ar_Rohman.jpeg', 'Rasah kakean sambat, syukuri opo sing uwis diparingi Gusti', 13),
(288, 192010273, 'Muhammad Kadafi', 'Kadafi.JPG', '-', 13),
(289, 192010274, 'Muhammad Rizky', 'Muhammad_Rizky.jpeg', 'Great man are not born great, they grow great.', 13),
(290, 192010275, 'Muhammad Arie Satriadi', 'Muhammad_Arie_Satriadi.jpg', 'Jangan pernah menyesali apapun yang membuatmu tersenyum.', 13),
(291, 192010276, 'Muhammad Ridwan', 'Muhammad_Ridwan.jpeg', 'Kamu tidak tahu apa yang ada di depan, jadi nikmati saat ini dan hargai setiap momen kehidupan.', 13),
(292, 192010277, 'Nabilah Husna Mudzakiyyah', 'Nabilah_Husna_Mudzakiyyah.jpg', 'Di dunia ini kalau bukan kamu yang meninggalkan berarti kamu yang di tinggalin.', 13),
(293, 192010278, 'Niswatun Nadhiroh', 'Niswatun_Nadhiroh.jpeg', 'Hidup memang selalu berjalan kalo capek gojek aja.', 13),
(294, 192010279, 'Nur Rohmansyah', 'Nur_Rohmansyah.jpg', 'Keyakinan adalah kunci yang menjadi faktor utama dalam sebuah keberhasilan.', 13),
(295, 192010280, 'Rian Hidayat', 'Rian_Hidayat.JPG', 'Ada sesuatu yang tak pernah berakhir mesti telah terhenti.', 13),
(296, 192010281, 'Ridwan Akram Azhar', 'Ridwan_Akram_Azhar.JPG', 'Nak kelingan rasa mu seng penak iku, gawe aku ra isoh turu.', 13),
(297, 192010282, 'Senna Nurhiyatul Falah', 'Senna.JPG', 'Dalam dunia terkutuk ini, kedamaian dimana setiap orang saling mengerti hanya sebuah angan-angan.', 13),
(298, 192010283, 'Siti Nurliana', 'Siti_Nurliana.jpg', 'Jika tidak bisa jadi yang terbaik lakukanlah yang terbaik.', 13),
(299, 192010284, 'Syabihul Rizki Prayoga', 'Syabihul.JPG', 'Believe in yourself n try as hard as you can because by just praying God will not come to help you.', 13),
(300, 192010285, 'Syahrul Wicaksono', 'Syahrul_Wicaksono.jpeg', 'Saben masalah mesti ono dalane.', 13),
(301, 192010286, 'Trisna Ardiana', 'Trisna_Ardiana.jpeg', 'Hargai kedua orang tuamu, mereka berhasil lulus dari sekolah tanpa bantuan Google.', 13),
(302, 192010216, 'Abdul Holil', 'ABDUL_HOLIL.JPG', 'ceuk Abah ge Hirup mah kudu loba sabar, kos EMYU Contoh na. -puasalimataun', 12),
(303, 192010217, 'Abdul Rohim', 'ABDUL_ROHIM.JPG', 'Kita sama-sama dikasi waktu yang sama 24/7', 12),
(304, 192010218, 'Ahmad Mugi Firdaus', 'AHMAD_MUGI_FIRDAUS.JPG', 'jangan malu untuk belajar,malulah jadi penganguran', 12),
(305, 192010219, 'Akbar Fitra Surya', 'AKBAR_FITRA_SURYA.JPG', 'jika kau mengeluh soal botak itu , maka kau adalah yang sudah dikalahkan sebelum bertempur!', 12),
(306, 192010220, 'Alda', 'ALDA.JPG', 'Teruslah belajar sampe orang ngira kita admin brainly.', 12),
(307, 192010221, 'Anggi Juliana Anggraeni', 'ANGGI_JULIANA_ANGGRAENI.jpg', 'don\'t be sad because everything will be...yaudahlah mau gimana lagi', 12),
(308, 192010222, 'Atilla Razaaq Deryandra Surdianto', 'ATILLA_RAZAAQ.JPG', 'Tak ada yang abadi di dunia ini. Maka jangan berlebihan untuk segala sesuatu.', 12),
(309, 192010223, 'Aziz Abdul Latif', 'AZIZ_ABDUL_LATIEF.jpg', 'Sekolah itu kek bittersweet by najla, mo meninggaaaaalll', 12),
(310, 192010224, 'Chairul Anam', 'CHAIRUL_ANAM.jpg', 'Lulus - kerja - mapan - nikah', 12),
(311, 192010225, 'Daffa Rizqi Permana', 'DAFFA_RISKY.JPG', 'Kunci sukses itu harus S3 , Kalo S2 sukse , Kalo S1 suke', 12),
(312, 192010226, 'Dika Alwan Dafy', 'DIKA_ALWAN_DAFY.jpg', 'Kesuksesan seseorang selalu berawal dari mimpi. Jika begitu adanya, marilah kita tidur.', 12),
(313, 192010227, 'Divya Deschristyo', 'DIVYA_DESCRISTYO.JPG', 'Selalu ikuti kata hatimu. Tapi jangan lupa bawa juga otakmu.', 12),
(314, 192010228, 'Fadil Fauji', 'FADIL_FAUZI.JPG', 'So what you\'re saying is, whatever I write here will be in the yearbook forever?', 12),
(315, 192010229, 'Fahmi Fachriyana', 'FAHMI_FACHRIYANA.jpg', 'Istighfar untuk masa lalu, bersyukur untuk hari ini, dan berdoa untuk hari esok', 12),
(316, 192010230, 'Firman Firdaus', 'FIRMAN_FIRDAUS.jpg', 'Belajar itu relatif, tp nyontek bisa jd alternatif', 12),
(317, 192010231, 'Fitri Maemunah Ritonga', 'FITRI_MAEMUNAH.jpg', 'jangan takut berjalan lambat, takutlah jika hanya berdiri diam', 12),
(318, 192010232, 'Haerul Fajri', 'HAERUL_FAJRI.JPG', 'Hidup jangan ikuti keinginan tapi kebutuhan.', 12),
(319, 192010233, 'Ilham Ridho Bayu Prathama', 'ILHAM_RIDHO.JPG', 'kejarlah mimpi mu dan raihlah masa depan mu', 12),
(320, 192010234, 'Mery Apriyanti', 'MERY_APRIYANTI.jpg', 'kejarlah ilmu setinggi-tingginya, karena kalau ngejar dia ga tau kapan luluhnya', 12),
(321, 192010235, 'Mohamad Haikal Darmawan', 'MOHAMAD_HAIKAL_D.jpg', 'Tak ada Tekanan, Tak ada Berlian.', 12),
(322, 192010236, 'Muhammad Raikhan Alma Rizki', 'MUHAMMAD_RAIKHAN.JPG', 'Datang telat,pulang gak boleh telat.', 12),
(323, 192010237, 'Muhammad Reksa Pradana', 'MUHAMMAD_REKSA_P.JPG', 'Ngantuk ya turu, laper ya makan jangan telat :D', 12),
(324, 192010238, 'Muhammad Rizki Ramadhan', 'M_RIZKI_RAMADHAN.JPG', 'Masalah bisa membuat kita menjadi dewasa, maka sering-seringlah bermasalah', 12),
(325, 192010239, 'Paris Setiopan Simanjuntak', 'PARIS_SETYOPAN.JPG', 'Kesuksesan Butuh Pengorbanan, Berikan Kenyataan  Saja Dan Bukan Omongan Saja.', 12),
(326, 192010240, 'Raply Marlimansyah', 'RAPLY_MARLIMANSYAH.JPG', 'stay friends forever and keep fighting for a bright future my friends. keep the spirit!!', 12),
(327, 192010241, 'Rashid Syihab Adhika', 'RASYID_SHIHAB.JPG', 'Sukses bukanlah final, kegagalan tidaklah fatal, keberanian untuk melanjutkan yang diperhitungkan.', 12),
(328, 192010242, 'Rico Dwi Yurindra', 'RICO_DWI_YURINDRA.jpg', 'tak perlu kata kata sing penting bukti nyata', 12),
(329, 192010243, 'Riko Sulistyo Putro', 'RIKO_SULISTYO.JPG', 'Berdoa tanpa berusaha itu bohong, berusaha tanpa berdoa itu sombong.', 12),
(330, 192010244, 'Risky Saputra', 'RISKY_SAPUTRA.jpg', 'Matematika boleh keras tapi sholat tetap prioritas', 12),
(331, 192010245, 'Rizki Raindika Wibowo', 'RIZKI_RAINDIKA_W.JPG', 'Waktu tak dapat diputar , dijilat , apalagi dicelupin', 12),
(332, 192010246, 'Rizky Firmansyah Putra', 'RIZKY_FIRMANSYAH_PUTRA.jpg', 'Nikmati hidup lu seperti lu menikmati indomie di kala hujan', 12),
(333, 192010247, 'Salsa Nabila', 'SALSA_NABILA.jpg', 'hidup itu berjalan, kalo cape rebahan ajh', 12),
(334, 192010248, 'Siti Dahlia', 'SITI_DAHLIA.jpg', 'Hujan selalu jadi bagian yang paling menyenangkan. Apalagi saat memikirkanmu', 12),
(335, 192010249, 'Siti Fatimah', 'SITI_FATIMAH.jpg', 'jika kamu ingin berhasil maka jangan gagal', 12),
(336, 192010250, 'Tangguh Priyo Utomo', 'TANGGUH_PRIYO_UTOMO', 'Hidup itu harus memilih. Di saat kau tidak memilih, itulah pilihanmu.', 12),
(337, 192010251, 'Zain Firhan Ali', 'ZAIN_FIRHAN_ALI.jpg', 'Jan lupa bersujud jika ingin terwujud', 12),
(338, 192010359, 'Adityas Apriyanto', 'Adityas_Apriyanto.JPG', 'Hidup itu kaya roda, kadang diatas kadang dibawah kalo hidupmu dibawah terus mungkin rodamu mbledos.', 4),
(339, 192010360, 'Afin Purnomo', 'Afin_Purnomo.jpg', 'Sedang sibuk mencari kesibukan yang tidak menyibukkan.', 4),
(340, 192010362, 'Bayu Sekti Bagus Saputro', 'Bayu_Sekti_Bagus_Saputro.jpg', 'Nikmati hidupmu seperti menikmati indomie di kala hujan.', 4),
(341, 192010363, 'Dedek Prabowo Petama', 'Dedek_Prabowo_Petama.jpg', 'Jangan mengulangi kesalahan yang sama, masih banyak kesalahan yg perlu dicoba', 4),
(342, 192010364, 'Diana Alisia', 'Diana_Alisia.jpg', 'kamu terlalu menyepelekan perasaan seseorang. hingga lupa, tuhan adil dalam memberi luka.', 4),
(343, 192010365, 'Elsa Nur Wulandari', 'Elsa_Nur_Wulandari.jpg', 'Berpikirlah seperti proton, selalu positif.', 4),
(344, 192010366, 'Fadilah Agustiani', 'Fadilah_Agustiani.jpg', 'Hidup itu berjalan, klo capek gojek aja.', 4),
(345, 192010367, 'Fernando Desfrananda Bany Arya', 'Fernando_Desfrananda.jpg', 'Hidup pasti banyak rintangan. Kalau banyak rantangan berarti itu katering.', 4),
(346, 192010368, 'Fransiskan Rumampuk', 'Fransiskan_Rumampuk.jpg', 'Boro boro dugem, diminta uang kas aja susahnya minta ampun.', 4),
(347, 192010370, 'Ihkwanur Adistyo Ermawan', 'Ihkwanur_Adistyo_Ermawan.jpg', 'Guruku tersayang, tapi boong', 4),
(348, 192010371, 'Irma Nurmalasari', 'Irma_Nurmalasari.jpg', 'Jangan menyia²kan waktu mu untuk belajar,karna kesuksesan bisa terjadi karna adanya kesungguhan.', 4),
(349, 192010372, 'Melati Salsabilah Fitriah', 'Melati_Salsabilah.jpg', 'Jangan takut untuk gagal, tapi takut untuk tidak mencoba.', 4),
(350, 192010373, 'Moh. Raffy Hazar Haedaryan', 'Moh_Raffy.jpg', 'Apapun yang menjadi takdirmu,akan mencari jalannya menemukanmu.', 4),
(351, 192010374, 'Muhammad Fatikh Al Arsy', 'Muhammad_Fatikh.jpg', 'Jangan sombong kalau jadi atasan. Di pasar, atasan diobral Rp10 Ribu dapat 3.', 4),
(352, 192010375, 'Muhammad Hilmy Afiansyah', 'Muhammad_Hilmy_Afiansyah.JPG', 'Seberat apapun masalahmu ,jangan di timbang gabakalan laku.', 4),
(353, 192010376, 'Muhammad Kurnianto Saputra', 'Muhammad_Kurnianto_Saputra.jpg', 'Boleh mengeluh asal jangan menyerah dan tetap semangat walaupun kenyataan nya pahit.', 4),
(354, 192010377, 'Muslih Abdul Karim', 'Muslih_Abdul_Karim.JPG', 'Jika kamu berpikir kamu terlalu kecil untuk menjadi efektif, kamu belum pernah tidur dengan nyamuk.', 4),
(355, 192010378, 'Nadila Nur Fitria', 'Nadila_Nur_Fitria.jpg', 'Kita belajar dari kegagalan, bukan dari kesuksesan.', 4),
(356, 192010379, 'Nazwa Dwi Cahyanti', 'Nazwa_Dwi_Cahyanti.JPG', 'Jalanilah semampumu, nikmati seadanya. dan syukuri segalanya.', 4),
(357, 192010381, 'Putri Fatimahyusyifa', 'Putri_Fatimahyussyifa.jpg', 'Old ways, won\'t open new doors.', 4),
(358, 192010380, 'Nur Huda', 'Nur_Huda.jpg', '\'Makan aja, Ibu udah kenyang\' Ucap seorang malaikat yang dikirim Tuhan.', 4),
(359, 192010382, 'Rafi Nurrohman Mufid', 'Rafi_Nurrohman_Mufid.jpg', 'Hargailah waktu, karna waktu tidak bisa diputar, dijilat apalagi dicelupin.', 4),
(360, 192010383, 'Rahma Sabila', 'Rahma_Sabila.jpg', 'Kebersamaan ini ibarat kepompong, kadang bikin kepo, kadang juga malah rempong.', 4),
(361, 192010384, 'Reni Agustin', 'Reni_Agustin.jpg', 'Usaha dan keberanian tidak cukup tanpa adanya tujuan dan arah perencanaan.', 4),
(362, 192010385, 'Riska Alfiyah', 'Riska_Alfiyah.jpg', 'Jangan biarkan rasa takut menentukan masa depanmu.', 4),
(363, 192010386, 'Siti Gumilang Sari', 'Siti_Gumilang_Sari.jpg', 'Cape itu wajar tapi nyerah itu bukan jalan keluar.', 4),
(364, 192010387, 'Sri Siti Lestari', 'Sri_Siti_Lestari.jpg', 'Happiness is about yourself, not others.', 4),
(365, 192010388, 'Syhafina Mayla Rizma', 'Syhaffina_Mayla_Rizma.jpg', 'Pikiran ingin berhenti, Tapi hati masih ingin berjuang.', 4),
(366, 192010389, 'Syifa Fauziah Safarah', 'Syifa_Fauziah_Safarah.jpg', 'Hidup itu cuma sekali kalo dua kali namanya hidup hidup.', 4),
(367, 192010390, 'Uvit Putri Jingga', 'Uvit_Putri_Jingga.jpg', 'Kalo hidupmu ga berkembang, kasih aja baking soda.', 4),
(368, 192010391, 'Yayang', 'yayang.jpg', 'Sebesar usaha yang dikerluarkan, sebesar itu pula kesuksesan yang didapat.', 4),
(369, 192010392, 'Yohana Fransiska Djenama', 'Yohana_Fransiska_Djenama.jpg', 'Karena masa depan sungguh ada dan harapan mu tidak akan hilang.', 4),
(370, 192010393, 'Zaidan Abid Ediputra', 'Zaidan_Abid_Ediputra.jpg', 'Menghargai adalah hal yang mudah tetapi di hargai adalah hal yang sulit', 4),
(371, 192010394, 'Amelia Maharani', 'Amelia_Maharani .jpeg', 'Bahkan jika kita mengalami masa-masa sulit, itu sangat berarti ketika kita bahagia', 5),
(372, 192010395, 'Angga Dwi Pangestu', 'Angga_Dwi_Pangestu.jpeg', 'Tetaplah Bersyukur Karena Bersyukur Jauh Lebih Baik Daripada Mengeluh', 5),
(373, 192010396, 'Anjar Fadilah', 'Anjar_Fadilah.jpeg', 'Tidak ada yang sempurna di dunia ini termasuk dirimu sendiri', 5),
(374, 192010397, 'Ariel Syahwal', 'Ariel_Syahwal.jpeg', 'Jangan jadi kaum rebahan kalo masih ada keluarga dan adik mu yang harus kamu tanggung jawab kan', 5),
(375, 192010398, 'Antoni Anwarudin', 'Anton.JPG', 'Jangan bangga apa yang orang lain miliki, tapi banggalah apa yang telah kamu miliki', 5),
(376, 192010399, 'Bagas Dewa Hartanto', 'bagas_dewa_hartanto.jpeg', 'pengen punya dastek biar bisa brataktak', 5),
(377, 192010400, 'Bayu Awaludin Aprilianna', 'Bayu_Awaludin_Aprilianna.jpeg', 'Violet Evergarden eps 10 : 14.07 - 23.40', 5),
(378, 192010401, 'Berliana Nur Noviyanti', 'Berliana_Nur_Noviyanti .jpeg', 'perpisahan bukanlah akhir dari kehidupan', 5),
(379, 192010402, 'Daffa Syauqi', 'daffa_syauqi.jpeg', 'muda berkelana,tua bercerita', 5),
(380, 192010403, 'Darsita', 'Darsita.jpeg', 'hidup itu seperti sepiring tempe, tidak ada tahunya', 5),
(381, 192010404, 'Dhias Frenatha', 'Diaz.JPG', 'Sekolah jangan males,kalo males gapunya masa depan', 5),
(382, 192010405, 'dwi retno puspitasari', 'Dwi_Retno_Puspitasari.jpeg', 'sekola disini kaya lagi makan bittersweet, mo meninggal', 5),
(383, 192010406, 'Elia Eva Setyawati', 'Elia_Eva_Setyawati .jpeg', 'relakan masa lalu,semangat memulai awal yang baru', 5),
(384, 192010407, 'Ervina Suhendar', 'Ervina_Suhendar .jpeg', 'jangan menghabiskan hari ini hanya untuk menghawatirkan hari esok', 5),
(385, 192010408, 'Fajar Budi Junianto', 'Fajar_Budi_Junianto.jpeg', 'punya pala pusing ga punya pala serem', 5),
(386, 192010409, 'Fiandanu Zidan', 'Fiandanu_Zidan.jpeg', 'Setiap kesalahan mengajarkan kita sesuatu', 5),
(387, 192010410, 'Huzaifah Khanif Algibban', 'Khanif.JPG', 'Siapkan cadangan sebelum kegagalan datang', 5),
(388, 192010411, 'Marlina Anggreani', 'Marlina_Anggreani .jpeg', 'Kerja keraslah sampai tetangga berfikir rezekimu hasil dari pesugihan', 5),
(389, 192010412, 'Khoirul Mubarok', 'Khoirul_Mubarok.jpeg', 'tadinya mau mandi eh pas ngeliat kaca masi ganteng #YaudahGaJadi', 5),
(390, 192010413, 'Lela camilla dewi siagian', 'Lela_camilla_dewi_siagian.jpeg', 'motivasi tanpa aksi adalah halusinasi', 5),
(391, 192010414, 'Muhammad David Affandi', 'M_David_A.jpeg', 'Udah tua belum challenger? MALU', 5),
(392, 192010415, 'Muhammad Salman Faras K', 'M_Salman_Faras_K.jpeg', 'Cape cape mikirin masa depan eh malah sukses', 5),
(393, 192010416, 'Mardahtilla Salva Jamillah', 'Mardhatilla_Salva_Jamillah.JPG', 'Ubah lukamu menjadi kebijaksanaan', 5),
(394, 192010417, 'M.arief Rizky Rahmatullah', 'M.Arief.JPG', 'Lari dari kenyataan itu asik', 5),
(395, 192010419, 'Nuraini', 'Nuraini.JPG', 'Iseng daftar, eh tiba tiba Lulus', 5),
(396, 192010420, 'Putri Eka Amalia Shaleha', 'Putri_eka_amalia.jpeg', 'Kesuksesan dan kegagalan adalah sama-sama bagian dalam hidup. Keduanya hanyalah sementara.', 5),
(397, 192010421, 'RasyiqFashaRazzan', 'Razzan.JPG', 'Belajar itu memang penting,cinta juga lebih penting.', 5),
(398, 192010422, 'Shafa Salsabila', 'Shafa_Salsabila .jpeg', 'Tetap positif, sikap adalah segalanya', 5),
(399, 192010423, 'Shintia Nabila Oktaviani', 'Shintia_Nabila_Oktaviani.jpeg', 'jangan mengulangi kesalahan yg sama, karena masih banyak kesalahan yg belum dicoba', 5),
(400, 192010425, 'Siti umayah', 'Siti_Umayah.jpeg', 'Anda tidak harus hebat untuk memulai, tapi anda harus memulai untuk menjadi orang hebat', 5),
(401, 192010426, 'Verawati', 'Verawati.jpeg', 'Hal-hal besar tidak pernah datang dari zona nyaman', 5),
(402, 192010427, 'Yuliana Sri Rospita', 'Yuliana_Sri_Rospita.jpeg', 'Gak perlu ngerasa spesial, kamu manusia, bukan nasi goreng', 5),
(403, 192010428, 'Yuliani Sri Wulandari', 'Yuliani_sri_wulandari.jpeg', 'berhenti membandingkan dirimu  dengan orang lain', 5),
(404, 192010037, 'Abdul Azis Maulana', 'abdul_azis_maulana.jpg', 'Jadilah dirimu sendiri dan jangan pernah menyerah', 15);
INSERT INTO `siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_gambar`, `siswa_quote`, `kelas_id`) VALUES
(405, 192010038, 'Ahmad Rozaki', 'ahmad_rozaki.JPG', 'Hidup yang tidak di pertaruhkan tidak akan pernah di menangkan', 15),
(406, 192010039, 'A.Jayadi.S', 'a_jayadi_s.JPG', 'Teruslah melangkah, kalau cape ya istirahat', 15),
(407, 192010040, 'Alam Nur Cahyo', 'alam_nur_cahyo.JPG', 'Hidup itu guyon yang serius hanya mati', 15),
(408, 192010041, 'Andri Saputra', 'andri_saputra.jpg', 'Tetaplah tersenyum walaupun hati bersedih', 15),
(409, 192010042, 'Anwar Awaludin', 'anwar_awaludin.jpg', 'Kalau orang lain bisa kenapa harus saya, kalau orang lain ga bisa apalagi saya', 15),
(410, 192010044, 'Ari Alfajri', 'Ari_Alfajri.jpg', 'Waktu adalah emas', 15),
(411, 192010045, 'Arnes Kurnia', 'arnes_kurnia.jpg', 'Jangan pernah menunggu hari yang baik untuk berbuat baik', 15),
(412, 192010046, 'Aryo Gading Saputra', 'aryo_gading_saputra.jpg', 'Tetaplah galau, walaupun tak ada yang menyakiti', 15),
(413, 192010047, 'Dimas Irawan', 'Dimas.JPG', 'Gagal jadi cowo yang tulus, karena disuruh ngaca, padahal kan ada HP', 15),
(414, 192010048, 'Eris Mikhael', 'eris_mikhael.jpg', 'Berteman dengan siapapun boleh, tapi jangan ikuti perilaku buruknya', 15),
(415, 192010049, 'Fakhri Husaini', 'fakhri_husaini.JPG', 'Waktu tak bisa diputar, dijilat, apalagi dicelupin', 15),
(416, 192010050, 'Hermawan Ramadhani', 'hermawan_ramadhani.jpg', 'Sabun, kerikil, baju, karena, ikan gabus, wkwk', 15),
(417, 192010051, 'Idris Eka K.', 'idris_eka_k.jpg', 'Teruslah menyerah dan jangan berlari', 15),
(418, 192010052, 'Ilham', 'ilham.jpg', 'Hargai kedua orang tuamu, mereka berhasil lulu dari sekolah tanpa bantuan google', 15),
(419, 192010053, 'Irfan Nanda', 'irfan_nanda.JPG', 'Jangan pernah menyerah, terus berdo\'a dan berusaha sampai mendapatkan apa yang kita mau', 15),
(420, 192010054, 'Khaerul Rizky Ramadhan', 'khaerul_rizky_ramadhan.jpg', 'Kalahkan kebiasaan buruk anda, atau mereka yang akan mengalahkan anda', 15),
(421, 192010055, 'Kresna Alam Nata', 'kresna_alam_nata.jpg', 'Don\'t too high, don\'t too low, the point is enough', 15),
(422, 192010056, 'Krida Arya Gita', 'krida_arya_gita.jpg', 'Satu-satunya batasan untuk merealisasikan sesuatu di hari esok adalah keraguan kita hari ini', 15),
(423, 192010057, 'Krisna Mukti', 'krisna_mukti.jpg', 'Jika kamu tidak dapat melakukan hal-hal hebat, maka lakukan hal-hal kecil dengan cara yang hebat', 15),
(424, 192010058, 'Maulana Adi Kusuma', 'maulana_adi_kusuma.jpg', 'Mau gagal, mau sukses itu tidak penting. Yang penting berhasil', 15),
(425, 192010059, 'Mikolas Saputra', 'mikolas_saputra.jpg', 'Jangan pernah berhenti jadi orang baik, udah gtu aja', 15),
(426, 192010060, 'Muhamad Azhar', 'muhamad_azhar.jpg', 'Kegagalan terbesar kita sebagai manusia adalah ketika kita berhenti untuk belajar', 15),
(427, 192010061, 'Muhamad Rizki Hidayatulloh', 'muhamad_rizki_hidayatulloh.jpg', 'Jangan biasakan dirimu bergantung pada orang lain, apalagi bergantung di pohon sambil makan pisang', 15),
(428, 192010062, 'Muhammad Ardiansyah', 'muhammad_ardiansyah.jpg', 'Sesibuk apapun pekerjaanmu nanti, jangan pernah lupakan dua hal. Orang tua dan Tuhan mu', 15),
(429, 192010063, 'Muhammad Naufal', 'muhammad_naufal.jpg', 'Kesempatan hanya menanti orang yang siap dan giat', 15),
(430, 192010064, 'Muhammad Naufal Al Gihari', 'muhammad_naufal_al_ghifari.jpg', 'Jangan pernah menyerah, karena masa depan sedang menunggu anda', 15),
(431, 192010065, 'Mustofa Asshiddiqi', 'mustofa_asshiddiqi.jpg', 'Jadilah dirimu sendiri, karena tidak ada juga yang mau jadi dirimu', 15),
(432, 192010066, 'Ridho Ardiansyah', 'ridho_ardiansyah.jpg', 'Belajarlah di tempat gelap, agar kamu menciptakan terang', 15),
(433, 192010067, 'Rizal Ahmad Dani', 'rizal_ahmad_dani.jpg', 'Tetaplah menjadi orang baik', 15),
(434, 192010068, 'Rizky Ilham Permana', 'rizky_ilham_permana.jpg', 'Kalahkan kebiasaan buruk dan kembangkan kebiasaan baik', 15),
(435, 192010070, 'Suryana Saputra', 'suryana_saputra.jpg', 'Percaya si bumi berputar, soalnya banyak pusingnya', 15),
(436, 192010071, 'Ulan', 'Ulan.JPG', 'Tips biar di kejar-kejar perempuan yaitu pukul kepalanya, Insyaallah manjur', 15),
(437, 192010072, 'Vicky Firmansyah', 'Vicky.JPG', 'Graduation isn\'t the end', 15),
(438, 192010073, 'Achmad Revandi Aji Buwono', 'Achmad_Revandi_Aji_Buwono.jpg', 'Hidup itu banyak cobaan,Kalo banyak saweran dangdutan namanya', 16),
(439, 192010074, 'Agis Muhammad Farid Akbar', 'Agis_Muhammad_Farid_Akbar.jpg', 'Nikmati hidup seperti saat menikmati Indomie di kala hujan', 16),
(440, 192010075, 'Ahmad Saepuloh', 'Ahmad_Saepuloh.jpg.', 'Orang sukses juga pernah malas, bodoh, dan gagal. Tapi mereka tetap terus bergerak dan mencoba', 16),
(441, 192010076, 'Aldi', 'Aldi.jpg', 'The account is quiet if it\'s crowded, continue part 2', 16),
(442, 192010077, 'Alvin Surya Satriaji', 'Alvin_Surya_Satriaji.jpg', 'Biasain mikir buruk biar pas ga sesuai ekspektasi jadi ga kaget.', 16),
(443, 192010078, 'Andi Saputra', 'Andi_Saputra.jpg', 'Selamat dan Sukses', 16),
(444, 192010079, 'Andra Rizky Rachman Majid', 'Andra.JPG', 'Selamat dan Sukses', 16),
(445, 192010080, 'Ari Dwi Andika', 'Ari_Dwi_Andika.jpg', 'Jalan yang sulit sering kali mengarah ke tujuan yang indah', 16),
(446, 192010081, 'Dimas Putra Wiguna', 'Dimas_Putra_Wiguna.jpg', 'Lebih baik daripada tidak sama sekali', 16),
(447, 192010082, 'Doni Ramadhan', 'Doni_Ramadhan.jpg', 'Jangan lihat hasil...tapi lihat lah usaha dan prosess!!', 16),
(448, 192010083, 'Fahrel Fauzan', 'Fahrel_Fauzan.jpg', 'Selamat melanjut kan perjalanan, semoga kita bertemu di ketidak sengajaan selanjutnya cuankssssss', 16),
(449, 192010085, 'Fidho Gustaf Prasojo', 'Fidho_Gustaf_Prasojo.jpg', 'Ga butuh kata kata yang penting  bukti nyata cuanksss', 16),
(450, 192010086, 'Gilang Rhamadhan Anwar', 'Gilang_Rhamadhan_Anwar.jpg', 'Selamat dan Sukses', 16),
(451, 192010087, 'Jhonih Hasan', 'Jhonih_Hasan.jpg', 'Jangan pedulikan omongan orang yang penting apa yang kita lakukan bermanfaat untuk banyak orang', 16),
(452, 192010088, 'Kaleb Satria Wiliyanto', 'Kaleb_Satria_Wiliyanton.jpg', 'sebab, menyukai seseorang yng hangat kpda semua orng adalah luka', 16),
(453, 192010089, 'Ken Satriani', 'Ken_Satriani.jpg', 'Kamu sudah jauh melangkah hingga sekarang, terimakasih pada masalah-masalah kemarin.', 16),
(454, 192010090, 'Kevin Pebriana', 'Kevin_Pebriana.jpg', 'Gamau mikir maunya dipikirin', 16),
(455, 192010091, 'Kiki Julianto', 'Kiki_Julianto.jpg', 'Hidup itu bagaikan seni, menggambar tanpa menghapus', 16),
(456, 192010092, 'Mahesa Mukti Sadewa', 'Mahesa_Mukti_Sadewa.jpg', 'Dewasa bukan di lihat dari umur,tapi di lihat dari sikap, tindakan dan perilaku', 16),
(457, 192010093, 'Miftahul Kholiq', 'Miftahul_Kholiq.jpg', 'Selamat dan Sukses', 16),
(458, 192010094, 'Muhammad Al Fauzi', 'Muhammad_Al_Fauzi.jpg', 'Selamat dan Sukses', 16),
(459, 192010095, 'Muhammad Rizky Lubis', 'Muhammad_Rizky_Lubis.jpg', 'Terkadang waktu yang singkat memiliki sejuta kenangan yang hebat', 16),
(460, 192010096, 'Muztaba Habibilah', 'Muztaba_Habibilah.jpg', 'Selamat dan Sukses', 16),
(461, 192010097, 'Nur Firmansyah', 'Nur_Firmansyah.jpg', 'Yang jomblo jangan pernah merasa malu. Jomblo bukan berarti gak laku, tapi emang nggak ada yang mau.', 16),
(462, 192010098, 'Ramadhan Lubis', 'Ramadhan_Lubis.jpg', 'Makan cinta berak lope', 16),
(463, 192010099, 'Retta Rifki Dwi Yulianto', 'Retta_Rifki_Dwi_Yulianto.jpg', 'Selamat dan Sukses', 16),
(464, 192010100, 'Rio Aditya', 'Rio_Aditya.jpg', 'Hargai kedua orang tuamu, mereka berhasil lulus dari sekolah tanpa bantuan Google.', 16),
(465, 192010101, 'Rizky Aditya Permana', 'Rizky_Aditya_Permana.jpg', 'ooo, mungkinkah disana,kau rasa bahagia apa malah sebaliknya?.', 16),
(466, 192010102, 'Rizky Dwi Septa Hindrian Ramayu Mustika', 'Rizky_Dwi_Septa_Hindrian_Ramayu_Mustika.jpg', 'Bersatu kita teguh, bertujuh kita boyband', 16),
(467, 192010103, 'Sanjay saputra', 'Sanjay_Saputra.jpg', 'Berteman itu menjadi motivasi dan inspirasi,bukan hanya gengsi dan basa-basi.', 16),
(468, 192010104, 'Sanudin', 'Sanudin.jpg', 'TraumaMu menghalangi jalan NinjaKu', 16),
(469, 192010105, 'Supriyatna', 'Supriyatna.jpg', 'Kalian terlalu gaskeun Untuk aku yang sok hayu tiheula engke nuturkeun', 16),
(470, 192010106, 'Wahidin', 'Wahidin.jpg', 'Demi masa depan, aku siap menjadi sekuat ultraman', 16),
(471, 192010107, 'Yobel Lansono', 'Yobel_Lansono.jpg', 'Selamat dan Sukses', 16),
(472, 192010108, 'Zidan Abdi Muhammad', 'Zidan_Abdi_Muhammad.jpg', 'Bukan ombak yang besar tapi perahumu yang terlalu kecil', 16),
(473, 192010109, 'Abdul Hadi', 'abdul_hadi.JPG', 'Kesuksesan tidak akan bertahan jika dicapai dengan jalan pintas.', 17),
(474, 192010112, 'Akbar Zaqi', 'akbar_zaqi.JPG', 'Kepergian bukan lah akhir tapi itu adalah awal sebuah perjuangan.', 17),
(475, 192010113, 'Ananda Bagus Zanuar', 'ananda_bagus_zanuar.JPG', 'Syukuri dan hargai hal-hal yang anda miliki.', 17),
(476, 192010114, 'Annur Sofian', 'annur_sofian.JPG', 'Hidup jadi terasa mudah jika pernah merasakan susah...', 17),
(477, 192010115, 'Atta Wijaya', 'atta_wijaya.JPG', 'Hidup adalah sebuah pertanyaan dan bagaimana kita hidup itu adalah jawabannya.', 17),
(478, 192010116, 'Beni Kurniawan Haz', 'beni_kurniawan_haz.JPG', 'Jangan bertanya padaku, dan aku akan mengatakan kebohongan kepadamu.', 17),
(479, 192010117, 'Budi Abdul Majid', 'budi_abdul_majid.JPG', 'Nikmati setidaknya satu matahari terbenam per-hari.', 17),
(480, 192010118, 'Daniel Hasiholan Hutapea', 'daniel_hasiholan_hutapea.JPG', 'Tidak perlu banyak kata-kata, tapi buktikan lah dengan hasil karya.', 17),
(481, 192010119, 'De Ravi Dharojatun', 'de_ravi_dharojatun.JPG', 'TETAPLAH Berusaha Menjadi Baik.', 17),
(482, 192010120, 'Deni Ramadhan', 'deni_ramadhan.JPG', 'Ahkir dari kapasitas berpikir.', 17),
(483, 192010121, 'Diki Dulfani', 'diki_dulfani.JPG', 'Bahagia untuk momen ini, momen ini adalah hidupku.', 17),
(484, 192010122, 'Dimas Pandu Kesumah', 'dimas_pandu_kesumah.JPG', 'Don\'t stop when you\'re tired, but stop when you\'re done', 17),
(485, 192010123, 'Fiansa Ilham Saputra', 'fiansa_ilham_saputra.JPG', 'Pengetahuan dan karir tidak dapat menggantikan persahabatan.', 17),
(486, 192010124, 'Gilang Permana', 'gilang_permana.JPG', 'Jangan Pernah Menyerah Apapun yang Terjadi.', 17),
(487, 192010125, 'Helga Puja Nugraha', 'helga_puja_hugraha.JPG', 'Penyelamat hidup di jaman sekarang yaitu Berhenti membanding bandingkan diri dengan orang lain.', 17),
(488, 192010126, 'Hikmal Biaggi Wimma. F', 'hikmal_biaggi_wimma_f.JPG', 'Jangan berhenti ketika kamu lelah, berhentilah ketika sudah selesai.', 17),
(489, 192010127, 'Indra Rizky Rachman Madjid', 'indra_rizky_rachman_madjid.JPG', 'Bekerjalah dengan ikhlas seperti layaknya ibu dan bapak mengurusi anaknya.', 17),
(490, 192010128, 'Ivan Febrian Pratama', 'ivan_febrian_pratama.JPG', 'jangan egois hanya untuk mengejar sesuatu yang tidak baik.', 17),
(491, 192010129, 'Muhamad Abdul Azis', 'muhamad_abdul_aziz.JPG', 'Di satukan oleh pendidikan, dipisahkan oleh masa depan.', 17),
(492, 192010130, 'Muhamad Adib Arrasyid', 'muhamad_adib_arrasyid.JPG', 'Our life is frittered away by detail. Simplify, Simplify.', 17),
(493, 192010131, 'Muhamad Nur Alam', 'muhamad_nur_alam.JPG', 'Perjalanan ribuan mil dimulai dari satu langkah.', 17),
(494, 192010132, 'Muhammad Adit Wijaya', 'muhammad_adit_wijaya.JPG', 'Hidup itu pahit, karna yang manis cuma adit.', 17),
(495, 192010133, 'Muhammad Ava Septian', 'muhammad_ava_septian.JPG', 'Di dewasakan oleh film dewasa.', 17),
(496, 192010134, 'Muhammad Nurhadi Wibowo', 'muhammad_nurhadi_wibowo.JPG', 'Bersyukur.', 17),
(497, 192010135, 'Muhammad Raditya Aydin', 'muhammad_raditya_aydin.JPG', 'HIDUP HANYA SESAAT, JADILAH MANUSIA YANG BERMANFAAT.', 17),
(498, 192010136, 'Muslihul Haq', 'muslihul_haq.JPG', 'Hidup akan sangat indah jika kamu tahu manakah jalan yang benar', 17),
(499, 192010137, 'Nafis Fachriansyah', 'nafis_fachriansyah.JPG', 'Bunuh rasa malasmu.. Sebelum rasa malas membunuhmu.', 17),
(500, 192010138, 'Nasrullah Aldhiansyah Darussallam', 'nasrullah_aldhiansyah_darussallam.JPG', 'Tidak ada yang menjauh, kita hanya kembali seperti yang seharusnya saja.', 17),
(501, 192010139, 'Nur Muhammad Budi Santoso', 'nur_muhammad_budi_santoso.JPG', 'Hanya satu cara keluar yaitu melewatinya.', 17),
(502, 192010140, 'Rikki', 'rikki.JPG', 'Cape, Tapi ini belum selesai.', 17),
(503, 192010141, 'Robi Asmoro  Bangun', 'robi_asmoro_bangun.JPG', 'Jangan biarkan Impianmu hanya menjadi mimpi.', 17),
(504, 192010142, 'Saykhon Akbar', 'saykhon_akbar.JPG', 'syukurin aja yang penting hidup.', 17),
(505, 192010143, 'Syahrul Gunawan', 'syahrul_gunawan.JPG', 'Hidup bukan masalah tonggak sejarah, tapi momen.', 17),
(506, 192010323, 'Afri Muhammad Diki', 'Afri_Muhamad_Diki.jpg', 'seberat apapun masalah lu, jangan di kiloin. Percuma ga akan laku', 19),
(507, 192010324, 'Ajeng Maharani', 'Ajeng_Maharani.jpg', 'Mama dah pernah bilang, jangan mau kalo ada yang kasih permen... lu mah di baikin dikit jadi bego', 19),
(508, 192010325, 'Alfian Rizky Prayoga', 'alfian_rizky_prayoga.jpg', 'Pengusaha itu bukan orang yang pintar tetapi mereka pintar mencari orang pintar.', 19),
(509, 192010326, 'Amilia Alya Az-Zahra', 'amilia_alya_azzahra.jpeg', 'jika aku besar aku ingin menjadi ibuku, supaya bisa megang uang koperasi', 19),
(510, 192010328, 'Anisa Nurul Santi', 'anisa_nurul_santi.jpg', 'Siapapun bisa jadi apa pun', 19),
(511, 192010329, 'Bayu Firmansyah', 'Bayu_Firmansyah.jpg', 'Belajar dari bulu ketek, walaupun tetap kejepit tapi tetap tumbuh dan bertahan.', 19),
(512, 192010330, 'Benny Sianipar', 'Benny_Sianipar.jpg', 'kita bisa menggapai cita-cita yang kita harapkan', 19),
(513, 192010331, 'Desih', 'desih.jpeg', 'Di kasi nikmat ya nikmatin,dikasi cobaan ya cobain', 19),
(514, 192010332, 'Divia Hermawati', 'divia_hermawati.jpg', 'Bersyukur jauh lebih baik daripada mengeluh', 19),
(515, 192010333, 'Elsa Kresia Bella', 'Elsa_Kresia_Bela.jpg', 'Kalo anda tidak menikmati hidup, ngapain hidup?', 19),
(516, 192010334, 'Esther Lamtonggima Ritonga', 'Esther_Lamtonggima.jpg', 'nothing special here', 19),
(517, 192010335, 'Fiffy Nurliana', 'fiffy_nurliana.jpg', 'Titik awal dari semua pencapaian adalah keinginan', 19),
(518, 192010336, 'Firman Hidayat', 'firman_hidayat.jpg', 'Semoga saya dan teman-teman saya semua nanti sekaya Raffi Ahmad semua.', 19),
(519, 192010337, 'Fitri Khoirunnisa', 'Fitri_khairunnisa.jpg', 'selalu ikuti kata hatimu, tapi jangan lupa bawa juga otakmu', 19),
(520, 192010338, 'Giri Anom Jaya', 'Giri_Anom.jpg', 'Hidup adalah seni menggambar tanpa penghapus', 19),
(521, 192010339, 'Harlan Maulana', 'Harlan_Maulana.jpg', 'bukannya moto hidup nomer satu kalian gengsi dan validasi ya?', 19),
(522, 192010340, 'Ika Dwi Yanti', 'Ika_Dwiyanti.jpg', 'Perjalanan seribu mil dimulai dengan 1 langkah.', 19),
(523, 192010341, 'Indriyani', 'Indriyani_.jpg', 'Bermimpilah dalam hidup, jangan hidup dalam mimpi.', 19),
(524, 192010342, 'Iqbal Firmansyah', 'Iqbal_Firmansyah.jpg', 'selain suka kamu, aku juga suka teh botol', 19),
(525, 192010343, 'Isa Hawari', 'Isa_Hawari.jpg', 'Yang keren itu bukan anak muda yang banyak gaya, tapi anak muda yang banyak karya', 19),
(526, 192010344, 'M. Adha Nuryasin', 'M_Adha_Nuryasin.jpg', 'kunci sukses cuma 1, tapi gua lupa naronya dimana', 19),
(527, 192010345, 'M. Sepian Adi Putra', 'M_Sepian_Adi_Putra.jpg', 'jika kau ingin sukses tanpa usaha, percalah saya juga pengen', 19),
(528, 192010346, 'Marchel Rizaldi', 'Marchel.jpg', '-', 19),
(529, 192010347, 'Muhamad H Nadi', 'Muhamad_Nadi.jpg', 'Sholat itu 5 waktu, bukan karna ada waktu.', 19),
(530, 192010348, 'Muhamad Riqza', 'muhamad_riqza.jpg', 'Bab terakhir,semua kenangan akan tersimpan rapih di hati masing²', 19),
(531, 192010349, 'Muhamad Shabur', 'Muhamad_Shabur.jpg', 'tetaplah hidup, karena hidupmu belum tentu berguna', 19),
(532, 192010350, 'Muhammad Manakib Rizkia', 'Muhammad_Manakib_Rizkia.jpg', 'ini bukan akhir tapi ini perjalanan baru kita semua untuk memulai masa depan', 19),
(533, 192010351, 'Nova Wulandari', 'nova.JPG', 'b aja', 19),
(534, 192010352, 'Nur Kholipahtun Nisa', 'Nur_Khalipatunisa.jpg', 'Jika sekolah bukan tempat tidur, maka rumah bukan untuk tempat belajar', 19),
(535, 192010353, 'Putri Komalia', 'Putri_Komalia.jpg', 'jalani lah hidupmu, karna hidupmu adalah your life', 19),
(536, 192010354, 'Ridho Gustaf Prasojo', 'Ridho_Gustaf_prasodjo.jpg', 'bangku belakang saya lebih asik, bangku belakang kalian gimana Breds?', 19),
(537, 192010355, 'Rio Madputra Elath', 'Rio_mad_putra.jpg', 'sudah terlanjur lahir, ya hidup ajalah', 19),
(538, 192010356, 'Safira Ramadina', 'safira.JPG', 'freedom is yours', 19),
(539, 192010357, 'Syifa Azkiya', 'Syifa_Azkiya.jpg', 'nikmati hidupmu walau tidak semenarik diskon shopee', 19),
(540, 192010358, 'Zealyta Nova Adelya', 'zealyta_nova_adelya.jpg', 'if you\'re happy doing what you\'re doing, then nobody can tell you \"you\'re not successful\" - hs', 19),
(541, 192010001, 'Abdul Rohman', 'ABDUL.JPG', 'Jangan Pernah Mempersulit Hidup Orang Seperti x dan y.', 14),
(542, 192010002, 'Adhi Candra Winata', 'ADHI.JPG', 'tak perlu menyesali kegagalan karna kegagalan itu awal dari kesuksesan', 14),
(543, 192010003, 'Aldi Rahman', 'ALDI.JPG', 'Mau jujur, tapi sadar bahwa nilai lebih penting daripada kejujuran', 14),
(544, 192010004, 'Alfian', 'ALFIAN.JPG', 'Akar pendidikan itu pahit, tetapi buahnya manis', 14),
(545, 192010005, 'Alif Saddam', 'ALIF.JPG', 'Semua orang itu pintar, kecuali yang gamau', 14),
(546, 192010006, 'Anggito Abimanyu', 'ANGGITO.JPG', 'Apa arti ijazah yang bertumpuk, jika kepedulian, kepekaan dan pengalaman tidak di pupuk', 14),
(547, 192010007, 'Asep Sudarman', 'ASEP.JPG', 'Motivasi tanpa aksi hanyalah halusinasi', 14),
(548, 192010008, 'Cahyo Ramadhan', 'CAHYO.JPG', 'jadilah pribadi yang menantang masa depan, bukan pengecut yang aman di zona nyaman', 14),
(549, 192010010, 'Feri Ramdani', 'FERI.jpg', 'Lakukan apa yang membuat mu bahagia', 14),
(550, 192010011, 'Frans Pranata Simanjuntak', 'FRANS.JPG', 'Standar bahagia manusia itu beda beda ga semua nya bisa di sama ratakan', 14),
(551, 192010012, 'Gilang Ramadhan', 'GILANG.jpg', 'Kalau udah gede aku mau jadi exmud, hari-hari ngomong campur bahasa inggris', 14),
(552, 192010013, 'Hendi Pratama', 'HENDI .JPG', 'Hidup itu perlu bukti,bukan sekedar ucapan selamat pagi', 14),
(553, 192010014, 'Jamaludin', 'JAMALUDIN .JPG', 'Pengusaha itu bukan orang yang pintar tetapi mereka pintar mencari orang pintar', 14),
(554, 192010015, 'Januar Zein', 'JANUAR.JPG', 'Diam menjadi cupu bergerak menjadi mantu mama mu', 14),
(555, 192010016, 'Juni Arif Dwi Cahyo', 'JUNIARIF.JPG', 'Pergilah dengan percaya diri ke arah impianmu! Jalani kehidupan yang kamu bayangkan', 14),
(556, 192010017, 'Markus Benediktus Oki', 'MARKUS.JPG', 'Jangan pernah berhenti berbuat baik dan selalu bersyukur dengan apa yang kamu miliki saat ini', 14),
(557, 192010018, 'Masrup Hidayat', 'MASRUP.jpg', 'Tetaplah hidup walau tidak berguna', 14),
(558, 192010019, 'Maulana Ismail', 'MAULANA.JPG', 'Jangan memikat, jika kau tak berniat untuk mengikat', 14),
(559, 192010020, 'Mimim Mintarsih', 'MIMIN.JPG', 'Tidak ada kesenangan tanpa bersusah payah', 14),
(560, 192010021, 'Muhammad Gian Parhan', 'MUHAMAD_GIAN.JPG', 'Orang tidak bisa mengubah kebenaran, tapi kebenaran dapat mengubah orang.', 14),
(561, 192010022, 'Muhammad Adnan Nabil', 'MUHAMMAD_ADNAN.JPG', 'Banyak orang mengejar mimpi, padahal mimpi ga lari-lari', 14),
(562, 192010023, 'Muhammad Dhandy Ihsan', 'MUHAMMAD_DHANDY.JPG', 'Rambut yang gondrong tidak pernah mengganggu proses belajar mengajar', 14),
(563, 192010024, 'Naufal Muttaqin', 'NAUFAL.JPG', 'orang tidak bisa mengubah kebenaran, tapi kebenaran dapat mengubah orang.', 14),
(564, 192010025, 'Rafli Dwi Septiana', 'RAFLI.JPG', 'Kata mamah kalo makan itu sama nasi, kalo sama kamu itu yang ngerawat anak kita nanti.', 14),
(565, 192010026, 'Raihan Gibran Syarief', 'RAIHAN.JPG', 'Takut akan kegagalan seharusnya tidak menjadi alasan untuk tidak mencoba sesuatu', 14),
(566, 192010027, 'Rifky Ardiansyah', 'RIFKI.JPG', 'izin ke toilet bakal menjadi memorable saat kamu sukses. Toilet sekolah, I miss you', 14),
(567, 192010028, 'Rizky Ramadhan', 'RIZKY.JPG', 'Cara terbaik untuk memprediksi masa depanmu adalah dengan menciptakannya', 14),
(568, 192010029, 'Sanjaya', 'SANJAYA .JPG', 'menyerah ? oh tentu tidak aku,adalah anak laki laki terakhir.', 14),
(569, 192010030, 'Satryo Bagus Wibisono', 'SATRYO.JPG', 'Kesempatan itu seperti matahari terbit, kalau kau menunggu terlalu lama, kau bisa melewatkan nya', 14),
(570, 192010031, 'Sukma Wijaya Komari', 'SUKMA.JPG', 'Yakin lah dengan mimpimu, karna Allah menyertaimu', 14),
(571, 192010032, 'Syaian Yanis Sahid', 'SYAIAN.JPG', 'Nikmati dulu pahitnya, kamu bukan hancur kamu sedang proses.', 14),
(572, 192010033, 'Syairul Gunawan', 'SYAIRUL.JPG', 'sejauh apapun kamu menyesali ingat jarum jam tidak akan pernah berputar kekiri', 14),
(573, 192010034, 'Tito Kurniawan', 'TITO.JPG', 'angka dua tetaplah dua, karena yg pertama tetap kamu', 14),
(574, 192010035, 'Wahyu Rizky Ilahi', 'WAHYU.JPG', 'Setiap orang yang ingin berhasil,maka dia akan merelakan rasa lelah dan meninggalkan rasa malasnya', 14),
(575, 192010036, 'Wintansari', 'WINTANSARI.JPG', 'lebih baik diam seribu kata daripada banyak bicara tapi kosong', 14),
(576, 192010287, 'Adhiwira Sejati Haekal Muhammad', 'Adhiwira_Sejati_Haekal_Muhammad.jpg', 'Tindakan adalah kunci dasar untuk semua kesuksesan', 18),
(577, 192010288, 'Alfiansyah Putra', 'Alfiansyah_Putra.jpg', 'Pain you feel today, will make you strong tomorrow.', 18),
(578, 192010289, 'Anna Sri Lestari', 'Anna_Sri_Lestari.jpg', 'Lakukan yang terbaik di semua kesempatan yang kamu miliki', 18),
(579, 192010290, 'Ardiansyah', 'Ardiansyah.jpg', 'Selamat wisuda dan selamat berjuang kembali untuk meraih apa yang sudah kau impikan.', 18),
(580, 192010291, 'Argo Iriano Sumarno', 'Argo_Iriano_Sumarno.jpg', 'Never Give Up', 18),
(581, 192010292, 'Ayu Alissa Putri', 'Ayu_Alissa_Putri.jpg', 'Be yourself', 18),
(582, 192010293, 'Bella Ibrahim', 'Bella_Ibrahim.jpg', 'Nilai kecil? Zoom aja', 18),
(583, 192010294, 'Danang Waspandria', 'Danang_Waspandria.JPG', 'Monkey D Luffy said \'Jika Kau Lapar, Makanlah!\'', 18),
(584, 192010295, 'Dela Puspita Sari', 'Dela_Puspita_Sari.jpg', 'ini motto, kalo yang wangi namanya molto', 18),
(585, 192010297, 'Feby Valentina', 'Feby_Valentina.jpg', 'tujuan hidup saya menjadi orang kaya, bukan orang pintar', 18),
(586, 192010298, 'Femil Ananda Feoh', 'Femil_Ananda_Feoh.jpg', 'Jangan menyerah, Hal-hal besar membutuhkan waktu. Bersabarlah', 18),
(587, 192010299, 'Gilang Septian Saputra', 'Gilang_Septian_Saputra.jpg', '1000 perkataan dan pengetahuan tidak berarti tanpa adanya satu tindakan yang nyata.', 18),
(588, 192010300, 'HS Ismail Sucipto', 'HS_Ismail_Sucipto.jpg', 'JANGAN SENTUH AKU, AKU UDAH WUDHU', 18),
(589, 192010301, 'Ifan Avansa', 'Ifan_Avansa.jpg', 'sebagus apapun motivasi, tidak akan merubah apapun jika berdiam diri tanpa aksi', 18),
(590, 192010302, 'Jesica Amelia Putri', 'Jesica_Amelia_Putri.jpg', 'Barang siapa bersungguh-sungguh, maka dia akan mendapatkan kesuksesan.', 18),
(591, 192010303, 'Kelvin Putra Gabe Sinambela', 'Kelvin_Putra_Gabe_Sinambela.jpg', 'jadilah yang terhebat dari semua yang baik', 18),
(592, 192010304, 'M Panji Dwi Rizky Nur A', 'Panji.JPG', 'Perpisahan kini ialah bentuk nyata dari pamer di masa depan.', 18),
(593, 192010305, 'Maulana Efendi', 'Maulana_Efendi.jpg', 'THERE IS NO TURNING BACK', 18),
(594, 192010306, 'Muhamad Ricki Jaenal', 'Muhamad_Ricki_Jaenal.jpg', 'Tetap Sehat & Semangat', 18),
(595, 192010307, 'Muhamad Riski Apriansah', 'M. Riski.JPG', 'Hidup kita memang tidak sempurna. Tapi, kita bisa membuatnya lengkap dengan selalu berterima kasih', 18),
(596, 192010308, 'Natan Yudis Prasetyo', 'Natan_Yudis_Prasetyo.jpg', 'Ambil risiko atau kehilangan kesempatan', 18),
(597, 192010309, 'Nisyak Contesah', 'Nisyak.JPG', 'Hanya ada satu kesuksesan, yaitu menjadi mampu menghabiskan hidup anda menurut jalan anda sendiri', 18),
(598, 192010310, 'Nova Noviyanti', 'Nova_Noviyanti.jpg', 'tetap semangat mengejar masa depan walau sudah tak bersama lagi kawan', 18),
(599, 192010311, 'Nova Nurhalimah', 'Nova_Nurhalimah.jpg', 'Syukuri dan hargai hal-hal yang Anda miliki', 18),
(600, 192010312, 'Nurlaela Fitriani', 'Nurlaela_Fitriani.jpg', 'Kebiasaan kecil yang baik akan menghasilkan kualitas jiwa yang baik.', 18),
(601, 192010313, 'Putri Maelani', 'Putri_Maelani.jpg', 'Jangan takut menghadapi masa depan, hadapi dan perjuangkanlah', 18),
(602, 192010314, 'Riza Saputra', 'Riza_Saputra.jpg', 'Jika kamu bisa memimpikannya, kamu bisa melakukannya', 18),
(603, 192010316, 'Rizki Nur Padilah', 'Rizky_Nur_Padilah.jpg', 'Semoga SMKN 2 KOTA BEKASI Kedepannya Lebih baik lagi Dan jaya teruss.', 18),
(604, 192010317, 'Suhilman Riziq Nur Fikram', 'Suhilman_Riziq_Nur_Fikram.jpg', 'Hidup itu ibarat Sungai yang mengalir.', 18),
(605, 192010318, 'Susan Aprilia', 'Susan_Aprilia.jpg', 'Memories will never die, so this is not a goodbye', 18),
(606, 192010319, 'Syifa Sachna Yuliansyah', 'Syifa_Sachna_Yuliansyah.jpg', 'Lakukan sesuatu yang membuat dirimu di masa depan berterima kasih pada dirimu yang sekarang.', 18),
(607, 192010320, 'Uun Unayah', 'Uun_Unayah.jpg', 'Jangan takut salah, kan ada tipe-x', 18),
(608, 192010321, 'Wahyu Ramadani', 'Wahyu_Ramadani.jpg', 'Sahabat itu bak sebuah bintang, ia tak selalu terlihat, tapi akan selalu ada', 18),
(609, 192010322, 'Zhaki Nur Cahyanto', 'Zhaki.JPG', 'Jangan takut salah ketika menuntut ilmu karena banyak orang sukses belajar dari sebuah kesalahan', 18),
(610, 192010429, 'Abel Natanael Hutapea', 'Abel_Natanael_HUtapea.JPG', 'Cape boleh, nyerah? Jangan', 6),
(611, 192010430, 'Ade Rafif Hilmansyah', 'Ade_Rafif_Hilmansyah.jpg', 'The biggest problem at work is that no one tells you what to do', 6),
(612, 192010431, 'Adilla Marsya Sofhianti', 'Adilla_Marsya_Shofianti.JPG', 'Sometimes, the wrong train takes you to the right station.', 6),
(613, 192010432, 'Agnia Pinasti Aulia', 'Agnia_Pinasti_Aulia.jpg', 'just because you lived yesterday, it doesn\'t mean you know everything.. about today', 6),
(614, 192010433, 'Agustin Wulandari', 'Agustin_Wulandari.JPG', 'Hidup akan selalu berakhir dengan indah kawan. Bila belum indah maka belum berakhir. -Patrick Star', 6),
(615, 192010434, 'Ahmad Fadhilah', 'Ahmad_Fadilah.jpg', 'walaupun doa mu tidak di kabulkan tepat waktu, yakinlah bahwa akan dikabulkan diwaktu yang tepat', 6),
(616, 192010435, 'Amelia Adesti', 'Amelia_Adesti.JPG', 'ppl can be anything, n i can be everything; hjs', 6),
(617, 192010436, 'Andri Hartono', 'Andri_Hartono.jpg', 'Nol adalah awal dari segalanya. Tidak ada yang bisa dicapai jika kita tidak memulainya dari nol.', 6),
(618, 192010437, 'Angga Dwi Aditya', 'Angga_Dwi_Aditya.JPG', '- .. -- .   - ---   - .- -.- .   --- ..- -   - .... .   - .-. .- ... ....', 6),
(619, 192010438, 'Anisa Nur Fadila', 'Anisa_Nur_Fadillah.jpg', 'Don\'t compare yourself to others people if you want to be happy', 6),
(620, 192010439, 'Aripin', 'Aripin.JPG', 'segala sesuatu memiliki kesudahan,yang sudah berakhir biarlah berlalu', 6),
(621, 192010440, 'Ayum Adawiyah', 'Ayum_Adawiyah.jpg', 'About the expectations that exist during the endeavor never stops', 6),
(622, 192010441, 'Cut Setiawati', 'Cut_Setyawati.JPG', 'Kesuksesan mu itu bukan karena bakatmu, tapi karna rezeki allah', 6),
(623, 192010442, 'Damahyanti', 'Damah_Yanti.jpg', 'Sebaik baiknya gelar adalah gelar sajadah', 6),
(624, 192010443, 'Dhafin Mukti Al Farizi', 'Dhafin_Mukti_Alfarizi.JPG', 'Well....riddle me this, the more of than they have, the more dissatisfied they feel <?>', 6),
(625, 192010444, 'Dian Nurlaela', 'Dian_Nurlela.jpg', 'Only you can change your life. Nobody else can do it for you.', 6),
(626, 192010445, 'Edelweiss Harumi Jingga', 'Edelweiss_Harumi_Jingga.JPG', 'etc. end of thinking capacity', 6),
(627, 192010446, 'Elis Salleha', 'Elis_Saleha.jpg', 'It\'s okay to fall. Just dont fall apart.', 6),
(628, 192010447, 'Fajar Nur Hidayat', 'Fajar_Nur_Hidayat.JPG', 'Mistakes are proof that you are trying. Remember that anyone can be anything. Keep going!', 6),
(629, 192010448, 'Hisyam Daffa Rabbani', 'Hisyam_Daffa_Rabbani.jpg', 'Jadilah pribadi yang menantang masa depan, bukan pengecut yang aman di zona nyaman.', 6),
(630, 192010449, 'Luthfi Rafif Pradjoko', 'Luthfi_Rafif_Pradjoko.JPG', 'Selalu ikuti kata hatimu. Tapi jangan lupa bawa juga otakmu.', 6),
(631, 192010450, 'Muhammad Maghvi Fajar', 'Muhammad_Maghvi_Fajar.jpg', 'Yang paling pahit ialah berharap kepada manusia. Ali bin abi thalib', 6),
(632, 192010451, 'Putri Rahayu', 'Putri_Rahayu.JPG', 'Şaşkınlığıma bak, sen içimdeki kuruyu ıslatan ilk yağmursun', 6),
(633, 192010452, 'Raden Fatahillah Soendjoto', 'Raden_Fatahillah_Soendjoto.jpg', 'What can i say, Mamba out.', 6),
(634, 192010453, 'Rafly Hidayat', 'Rafly_Hidayat.JPG', 'science ? response.send(\'Learn it untill you die\') : response.send(\'The less you know it\'s better\');', 6),
(635, 192010454, 'Raka Santang Rabbani', 'Raka_Santang_Rabbani.jpg', 'one day we will reunited again. at all cost.', 6),
(636, 192010455, 'Rifqi Abdul Aziz Afifi', 'Rifqi_Abdul_Aziz_Afifi.JPG', 'if enemy jungler come mid, run away', 6),
(637, 192010456, 'Rosita', 'Rosita.jpg', 'No matter what they say, no matter what they do, yakin aja dulu.', 6),
(638, 192010457, 'Santi', 'Santi.JPG', 'istirahat itu sendiri seperti koma, bukan berarti berhenti. hwaiting!!', 6),
(639, 192010458, 'Siti Khumairoh', 'Siti_Khumairoh.jpg', 'don\'t be sad because everything will be, \'yaudahlah mau gimana lagi\'', 6),
(640, 192010459, 'Siti Nur Hositoh', 'Siti_Nur_Hositoh.JPG', 'gapailah mimpi setinggi langit,kalo jatuh berarti tidur nya kurang ketengah', 6),
(641, 192010460, 'Syafa Rani Zahira', 'Syafa_Rani.jpg', 'From now on i\'ll find a life to live.', 6),
(642, 192010461, 'Vania Andryani', 'Vania_Andriani.JPG', 'motivation without action is hallucination.', 6),
(643, 192010462, 'Varits Gorga', 'Varits_Gorga.jpg', 'we are not ugly, just broke', 6),
(644, 192010463, 'Yuni  Octaviani', 'Yuni_Oktaviani.jpg', 'Things good take time', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wisuda`
--

CREATE TABLE `wisuda` (
  `wisuda_id` int(11) NOT NULL,
  `wisuda_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisuda`
--

INSERT INTO `wisuda` (`wisuda_id`, `wisuda_gambar`) VALUES
(1, 'wisuda1.JPG'),
(2, 'wisuda2.JPG'),
(3, 'wisuda3.JPG'),
(4, 'wisuda4.JPG'),
(5, 'wisuda5.JPG'),
(6, 'wisuda6.JPG'),
(7, 'wisuda7.JPG'),
(8, 'wisuda8.JPG'),
(9, 'wisuda9.JPG'),
(10, 'wisuda10.JPG'),
(11, 'wisuda11.JPG'),
(12, 'wisuda12.JPG'),
(13, 'wisuda13.JPG'),
(14, 'wisuda14.JPG'),
(15, 'wisuda15.JPG'),
(16, 'wisuda16.JPG'),
(17, 'wisuda17.JPG'),
(18, 'wisuda18.JPG'),
(19, 'wisuda19.JPG'),
(20, 'wisuda20.JPG'),
(21, 'wisuda21.JPG'),
(22, 'wisuda22.JPG'),
(23, 'wisuda23.JPG'),
(24, 'wisuda24.JPG'),
(25, 'wisuda25.JPG'),
(26, 'wisuda26.JPG'),
(27, 'wisuda27.JPG'),
(28, 'wisuda28.JPG'),
(29, 'wisuda29.JPG'),
(30, 'wisuda30.JPG'),
(31, 'wisuda31.JPG'),
(32, 'wisuda32.JPG'),
(33, 'wisuda33.JPG'),
(34, 'wisuda34.JPG'),
(35, 'wisuda35.JPG'),
(36, 'wisuda36.JPG'),
(37, 'wisuda37.JPG'),
(38, 'wisuda38.JPG'),
(39, 'wisuda39.JPG'),
(40, 'wisuda40.JPG'),
(41, 'wisuda41.JPG'),
(42, 'wisuda42.JPG'),
(43, 'wisuda43.JPG'),
(44, 'wisuda44.JPG'),
(45, 'wisuda45.JPG'),
(46, 'wisuda46.JPG'),
(47, 'wisuda47.JPG'),
(48, 'wisuda48.JPG'),
(49, 'wisuda49.JPG'),
(50, 'wisuda50.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `d_kelas`
--
ALTER TABLE `d_kelas`
  ADD PRIMARY KEY (`d_kelas_id`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`gambar_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas_id`),
  ADD KEY `jurusan_id` (`jurusan_id`),
  ADD KEY `d_kelas_id` (`d_kelas_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`),
  ADD UNIQUE KEY `siswa_nis` (`siswa_nis`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `wisuda`
--
ALTER TABLE `wisuda`
  ADD PRIMARY KEY (`wisuda_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_kelas`
--
ALTER TABLE `d_kelas`
  MODIFY `d_kelas_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `gambar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `jurusan_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;

--
-- AUTO_INCREMENT for table `wisuda`
--
ALTER TABLE `wisuda`
  MODIFY `wisuda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`jurusan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`d_kelas_id`) REFERENCES `d_kelas` (`d_kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
