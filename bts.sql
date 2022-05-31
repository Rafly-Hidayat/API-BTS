-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2022 at 04:26 AM
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
(1, 'profile.png', 'wajib', 6),
(2, 'avatar1.png', 'bebas', 6),
(3, 'gambar_1.jpg', 'wajib', 18),
(5, 'gambar_1.jpg', 'wajib', 18),
(6, 'client-2.png', 'wajib', 7),
(7, 'client-1.png', 'bebas', 7);

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
(1, 'Andi', 'profile.png', 'Kaprog RPL'),
(2, 'Mety', 'avatar2.png', 'Walas RPL 3'),
(3, 'Retno', 'avatar2.png', 'Guru B.inggris'),
(4, 'siti', 'avatar2.png', 'guru PAPB'),
(6, 'Yuni', 'avatar2.png', 'guru MTK');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` int(4) NOT NULL,
  `jurusan_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`jurusan_id`, `jurusan_nama`) VALUES
(1, 'AK'),
(2, 'RPL'),
(3, 'TKJ'),
(4, 'TEI'),
(5, 'TBSM'),
(6, 'TET');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(50) NOT NULL,
  `jurusan_id` int(4) NOT NULL,
  `d_kelas_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `kelas_nama`, `jurusan_id`, `d_kelas_id`) VALUES
(1, 'Akuntansi 1', 1, 1),
(2, 'Akuntansi 2', 1, 2),
(3, 'Akuntansi 3', 1, 3),
(4, 'Rekayasa Perangkat Lunak 1', 2, 1),
(5, 'Rekayasa Perangkat Lunak 2', 2, 2),
(6, 'Rekayasa Perangkat Lunak 3', 2, 3),
(7, 'Teknik Komputer dan Jaringan 1', 3, 1),
(8, 'Teknik Komputer dan Jaringan 2', 3, 2),
(9, 'Teknik Komputer dan Jaringan 3', 3, 3),
(10, 'Teknik Elektronika Industri 1', 4, 1),
(11, 'Teknik Elektronika Industri 2', 4, 2),
(12, 'Teknik Elektronika Industri 3', 4, 3),
(13, 'Teknik Elektronika Industri 4', 4, 4),
(14, 'Teknik dan Bisnis Sepeda Motor 1', 5, 1),
(15, 'Teknik dan Bisnis Sepeda Motor 2', 5, 2),
(16, 'Teknik dan Bisnis Sepeda Motor 3', 5, 3),
(17, 'Teknik dan Bisnis Sepeda Motor 4', 5, 4),
(18, 'Teknik Energi Terbarukan 1', 6, 1),
(19, 'Teknik Energi Terbarukan 2', 6, 2);

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
(1, 192010642, 'Afrilia Herawati', 'afrilia_herawati.jpg', 'Trust your journey even if the road seems a little rough at times, you\'ll get there.', 3),
(2, 192010643, 'Alifah Wulandari', 'alifah_wulandari.jpg', 'Living only once is wrong. We live every day and die once.', 3),
(3, 192010644, 'Anggelita Febriyanti', 'anggelita_febriyanti.jpg', 'Hidup sesuai kemampuan, bukan kemauan.', 3),
(4, 192010645, 'Ariel Faqih Muzhaffar', 'ariel_faqih_muzhaffar.jpg', 'Kita adalah pernah, bukan punah, bukan menyerah, hanya sudah.', 3),
(5, 192010646, 'Ayestania Hedita', 'ayestania_hedita.jpg', 'You were born to be real, not be perfect.', 3),
(6, 192010647, 'Azalia Dalawir', 'azalia_dalawir.jpg', 'From zero to hero, from nothing to something.', 3),
(7, 192010648, 'Choirunnisa', 'choirunnisa.jpg', 'Jangan beri tahu orang-orang tentang rencanamu. Tapi, tunjukkan pada mereka hasilmu.', 3),
(8, 192010650, 'Diah Ayu Frimanda', 'diah_ayu_frismanda.jpg', 'Study now, be proud later.', 3),
(9, 192010651, 'Dini Al-Adawiah', 'dini_al-adawiah.jpg', 'Every day, Take a Step to Grow up.', 3),
(10, 192010652, 'Eliniawati', 'eliniawati.jpg', 'Be yourself because no one wants to be you.', 3),
(11, 192010653, 'Firda Arlina Hudoyo', 'firda_arlina_hudoyo.jpg', 'Mau + tapi = konflik', 3),
(12, 192010654, 'Ghina Nabilah Fauziyyah', 'ghina_nabilah_fauziyyah.jpg', 'Hardwork will never betray you.', 3),
(13, 192010655, 'Iin Indah Sari', 'iin_indah_sari.JPG', 'Waktu tidak dapat diputar, dijilat, apalagi dicelupin.', 3),
(14, 192010657, 'Lira Aulia Nurahman', 'lira_aulia_nurahman.jpg', 'People who laugh too hard and coughing are the people who, minum too much teajus.', 3),
(15, 192010658, 'Mariah', 'mariah.jpg', 'Don\'t just dream but make it happen.', 3),
(16, 192010659, 'Mirna Sartika', 'mirna_sartika.jpg', 'Loving yourself isn\'t vanity, it\'s sanity.', 3),
(17, 192010660, 'Munjiah Asliani', 'munjiah_asliani.jpg', 'Believe that everything in your life is God\'s beautiful plan for you.', 3),
(18, 192010661, 'Namira Putri Karpali', 'namira_putri_karpali.JPG', 'Sich selbst zu lieben ist keine eitelkeit, sondern vernunft.', 3),
(19, 192010662, 'Nilam Ayu Prasetya', 'nilam_ayu_prasetya.JPG', 'Perjuangan merupakan tanda perjalananmu menuju sukses.', 3),
(20, 192010663, 'Nisa Pebiyanti', 'nisa_pebiyanti.jpg', 'i\'m only smiling because this is all over.', 3),
(21, 192010664, 'Noklina', 'noklina.jpg', 'Jangan bandingkan proses mu dengan orang lain karna tidak semua bunga mekar secara bersamaan.', 3),
(22, 192010665, 'Putri Indiana Sari', 'putri_indiana_sari.jpeg', 'Hargai kedua orang tuamu, mereka berhasil lulus sekolah tanpa bantuan google.', 3),
(23, 192010666, 'Qurratu A\'ini', 'qurratu_a\'ini.jpg', 'Apapun yang terjadi, teruslah bernafas.', 3),
(24, 192010667, 'Rizka Habibah', 'rizka_habibah.JPG', 'Don’t be afraid to give up the good for the great.', 3),
(25, 192010668, 'Sabrina Karimah Putri', 'sabrina_karimah_putri.jpg', 'Human, half of water, half of mager.', 3),
(26, 192010669, 'Selly Septinur Rohmah', 'selly_septinur_romah.jpg', 'Do something today that your future self will thank you for.', 3),
(27, 192010670, 'Selpia', 'selpia.jpg', 'Life will always guide you to what\'s best for you.', 3),
(28, 192010671, 'Siti Fatimah', 'siti_fatimah.jpeg', 'Jangan membenci mereka yang ingin menjatuhkanmu, karena merekalah yang buatmu semakin kuat.', 3),
(29, 192010672, 'Siti Munaroh', 'siti_munaroh.jpg', 'Motivasi tanpa aksi adalah halusinasi.', 3),
(30, 192010673, 'Suryani Tirta Lestari', 'suryani_tirta_lestari.jpeg', 'The happiness we create, don\'t expect it from others because it will hurt.', 3),
(31, 192010674, 'Syarifah', 'syarifah.JPG', 'Kita dilahirkan untuk menjadi nyata bukan sempurna.', 3),
(32, 192010675, 'Trista Ananda', 'trista_ananda.jpg', 'Ikan hiu makan tomat, Alhamdulillah tamat.', 3),
(33, 192010676, 'Yunitsa Rakhmawati', 'yunitsa_rakhmawati.JPG', 'Kejarlah akhirat maka dunia akan mengikutimu.', 3);

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
  MODIFY `gambar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
