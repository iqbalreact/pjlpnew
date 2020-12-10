-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 04:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminrek_pjlp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `code`, `name`, `program_id`) VALUES
(29, '2019-11-24 07:55:55', '2019-11-24 07:55:55', '017.1.1', 'Operasional Harian StartupHub', 29),
(30, '2019-11-24 19:09:42', '2019-11-24 19:09:42', '017.2.1', 'Administrasi Kegiatan Pontive Center', 30),
(31, '2020-01-31 00:56:39', '2020-01-31 00:58:10', '2.10.2.10.01.00.16.1.005', 'Operasional Pontive Center Kota Pontianak', 31),
(32, '2020-02-25 18:03:42', '2020-02-25 18:03:42', '2.10.2.10.01.00.01.025', 'Penyediaan Jasa Kebersihan dan Pengamanan Kantor', 32),
(33, '2020-02-25 18:14:48', '2020-02-25 18:14:48', '2.10.2.10.01.00.01.018', 'Penyediaan Jasa Administrasi Keuangan', 32),
(34, '2020-02-25 18:22:55', '2020-02-25 18:22:55', '2.10.2.10.01.00.17.008', 'Pengolahan Data dan Informasi serta Produksi Konten Informasi Publik', 33),
(35, '2020-02-25 21:10:11', '2020-02-25 21:10:11', '2.10.2.10.01.00.18.004', 'Operasional dan Maintenance Perangkat Server', 34);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 1, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja Penanganan Prasarana dan Sarana Umum (PPSU)\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(2, 'default', 'created', 1, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja Operasional Kebersihan Kota\",\"position_category_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(3, 'default', 'created', 2, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja Operasional Taman Kota\",\"position_category_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(4, 'default', 'created', 3, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja Pemeliharaan Saluran Kota\",\"position_category_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(5, 'default', 'created', 4, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja Pemeliharaan Jalan Kota\",\"position_category_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(6, 'default', 'created', 2, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Tata Ruang\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(7, 'default', 'created', 5, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pengelola Izin Mendirikan Bangunan Gedung\\/Bangunan\",\"position_category_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(8, 'default', 'created', 6, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Teknologi Informasi Komputer (SIG)\",\"position_category_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(9, 'default', 'created', 7, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pembantu Pengawas Tata Bangunan dan Perumahan\",\"position_category_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(10, 'default', 'created', 8, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Survey, Pengukuran dan Pemetaan\",\"position_category_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(11, 'default', 'created', 3, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Keamanan\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(12, 'default', 'created', 9, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Satpam \\/Penjaga Malam\\/ Petugas Keamanan\",\"position_category_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(13, 'default', 'created', 10, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Perlindungan Masyarakat (Untuk Non Aparatur Sipil Negara Satuan Polisi Pamong Praja)\",\"position_category_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(14, 'default', 'created', 4, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Pramubakti dan Kebersihan Bangunan Pemerintah:\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(15, 'default', 'created', 11, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pramubakti\",\"position_category_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(16, 'default', 'created', 12, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Kebersihan\",\"position_category_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(17, 'default', 'created', 5, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pengemudi\\/Sopir\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(18, 'default', 'created', 13, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pengemudi\\/Sopir\",\"position_category_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(19, 'default', 'created', 6, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Pangan, Pertanian,Perikanan dan Peternakan\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(20, 'default', 'created', 14, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Tenaga Penyuluh Perikanan, Pertanian dan Pangan\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(21, 'default', 'created', 15, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pengawas Bibit Ternak\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(22, 'default', 'created', 16, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pengelolaan, Pengembangan dan Pemeliharaan Bibit Tanaman Pertanian\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(23, 'default', 'created', 17, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Medik Veteriner\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(24, 'default', 'created', 18, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Paramedik Veteriner\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(25, 'default', 'created', 19, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pengelola Rumah Potong Hewan\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(26, 'default', 'created', 20, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Laboratorium Pengolahan Hasil dan Kultur Jaringan\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(27, 'default', 'created', 21, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Pembenihan\\/Budidaya Ikan\",\"position_category_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(28, 'default', 'created', 7, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Sosial\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(29, 'default', 'created', 22, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pengasuh pada PLAT\\/UPRS\\/P2TP2A\",\"position_category_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(30, 'default', 'created', 23, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pendamping pada PLAT\\/UPRS\\/P2TP2A\",\"position_category_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(31, 'default', 'created', 8, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Kesehatan\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(32, 'default', 'created', 24, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Medis\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(33, 'default', 'created', 25, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Paramedis\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(34, 'default', 'created', 26, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Apoteker\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(35, 'default', 'created', 27, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Asisten Apoteker\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(36, 'default', 'created', 28, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Non Paramedis\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(37, 'default', 'created', 29, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Teknisi Medis\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(38, 'default', 'created', 30, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pengemudi Ambulan\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(39, 'default', 'created', 31, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Laboratorium\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(40, 'default', 'created', 32, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Sekretariat Komisi Penanggulangan AIDS\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(41, 'default', 'created', 33, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Terapist Anak Berkebutuhan Khusus\",\"position_category_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(42, 'default', 'created', 9, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Perhubungan dan lalu Lintas\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(43, 'default', 'created', 34, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Penguji Kendaraan Bermotor\",\"position_category_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(44, 'default', 'created', 35, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Sopir Bus Rapid Transport (BRT)\",\"position_category_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(45, 'default', 'created', 10, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Bidang Komunikasi, Informatika dan Statistik\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(46, 'default', 'created', 36, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Tenaga Teknologi Informasi\",\"position_category_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(47, 'default', 'created', 37, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Admin PONTIVE CENTER\",\"position_category_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(48, 'default', 'created', 38, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Tenaga Pengolah Informasi dan Multimedia\",\"position_category_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(49, 'default', 'created', 39, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Tenaga Pengolah Informasi dan Multimedia\",\"position_category_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(50, 'default', 'created', 11, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Administrasi\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(51, 'default', 'created', 40, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Administrasi Lulusan Prodi IP\",\"position_category_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(52, 'default', 'created', 41, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Layanan Operasional\",\"position_category_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(53, 'default', 'created', 12, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Tenaga Ahli Fraksi\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(54, 'default', 'created', 42, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Tenaga Ahli Fraksi\",\"position_category_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(55, 'default', 'created', 13, 'App\\Models\\PositionCategory', NULL, NULL, '{\"attributes\":{\"name\":\"Pekerja\\/Petugas Sarana dan Prasarana Milik Pemerintah\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(56, 'default', 'created', 43, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pengawas Kolam renang Ampera\",\"position_category_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(57, 'default', 'created', 44, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Teknisi\",\"position_category_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(58, 'default', 'created', 45, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Pengelola\\/Juru Parkir\",\"position_category_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(59, 'default', 'created', 46, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Petugas Loket\\/Karcis\",\"position_category_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(60, 'default', 'created', 47, 'App\\Models\\Position', NULL, NULL, '{\"attributes\":{\"name\":\"Juru Kelola Pontianak Convention Center\",\"position_category_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(61, 'default', 'created', 1, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"001\",\"name\":\"Sekretariat Daerah Kota Pontianak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(62, 'default', 'created', 2, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"002\",\"name\":\"Sekretariat DPRD Kota Pontianak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(63, 'default', 'created', 3, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"003\",\"name\":\"Inspektorat Daerah KotaPontianak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(64, 'default', 'created', 4, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"004\",\"name\":\"Dinas Pendidikan dan Kebudayaan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(65, 'default', 'created', 5, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"005\",\"name\":\"Dinas Pengendalian Penduduk, Keluarga Berencana, Pemberdayaan Perempuan dan Perlindungan Anak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(66, 'default', 'created', 6, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"006\",\"name\":\"Dinas Lingkungan Hidup\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(67, 'default', 'created', 7, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"007\",\"name\":\"Dinas Penanaman Modal, Tenaga Kerja dan Pelayanan Terpadu Satu Pintu\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(68, 'default', 'created', 8, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"008\",\"name\":\"Dinas Koperasi, Usaha Mikro dan Perdagangan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(69, 'default', 'created', 9, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"009\",\"name\":\"Dinas Perhubungan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(70, 'default', 'created', 10, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"010\",\"name\":\"Dinas Kepemudaan, Olahragadan Pariwisata\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(71, 'default', 'created', 11, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"011\",\"name\":\"Dinas Kesehatan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(72, 'default', 'created', 12, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"012\",\"name\":\"Dinas Kependudukan dan Pencatatan Sipil\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(73, 'default', 'created', 13, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"013\",\"name\":\"Dinas Sosial\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(74, 'default', 'created', 14, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"014\",\"name\":\"Dinas Pekerjaan Umum dan Penataan Ruang\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(75, 'default', 'created', 15, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"015\",\"name\":\"Dinas Perumahan Rakyat dan Kawasan Pemukiman\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(76, 'default', 'created', 16, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"016\",\"name\":\"Dinas Pangan, Pertanian, dan Perikanan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(77, 'default', 'created', 17, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"017\",\"name\":\"Dinas Komunikasi dan Informatika\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(78, 'default', 'created', 18, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"018\",\"name\":\"Satuan Polisi Pamong Praja\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(79, 'default', 'created', 19, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"019\",\"name\":\"Dinas Perpustakaan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(80, 'default', 'created', 20, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"020\",\"name\":\"Badan Keuangan Daerah\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(81, 'default', 'created', 21, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"021\",\"name\":\"Badan Perencanaan Pembangunan Daerah\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(82, 'default', 'created', 22, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"022\",\"name\":\"Badan Kepegawaian dan Pengembangan Sumber Daya Manusia\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(83, 'default', 'created', 23, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"023\",\"name\":\"Kecamatan Pontianak Utara\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(84, 'default', 'created', 24, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"024\",\"name\":\"Kecamatan Pontianak Selatan\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(85, 'default', 'created', 25, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"025\",\"name\":\"Kecamatan Pontianak Barat\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(86, 'default', 'created', 26, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"026\",\"name\":\"Kecamatan Pontianak Timur\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(87, 'default', 'created', 27, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"027\",\"name\":\"Kecamatan Pontianak Tenggara\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(88, 'default', 'created', 28, 'App\\Models\\Skpd', NULL, NULL, '{\"attributes\":{\"number\":\"028\",\"name\":\"Kecamatan Pontianak Kota\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(89, 'default', 'created', 1, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"odio\",\"name\":\"voluptas dolores quo\",\"skpd_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(90, 'default', 'created', 1, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"magni\",\"name\":\"incidunt hic enim\",\"program_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(91, 'default', 'created', 1, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"ut\",\"name\":\"quo suscipit ut\",\"activity_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(92, 'default', 'created', 2, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"cum\",\"name\":\"vel facilis voluptatum\",\"activity_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(93, 'default', 'created', 1, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Alfredofurt\",\"skpd_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(94, 'default', 'created', 2, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Gayland\",\"skpd_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(95, 'default', 'created', 3, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Rippinborough\",\"skpd_id\":\"1\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(96, 'default', 'created', 1, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8368570\",\"name\":\"Aylin Kunze\",\"phone_number\":\"+9598535572479\",\"address\":\"24470 Gislason Circles\\nNorth Annamariestad, DC 47552\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(97, 'default', 'created', 2, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7443684\",\"name\":\"Maeve Streich V\",\"phone_number\":\"+5002623485863\",\"address\":\"88761 Chelsey Village Apt. 374\\nPort Rickeyburgh, NV 75798-8237\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(98, 'default', 'created', 1, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"1\",\"skpd_id\":\"1\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(99, 'default', 'created', 2, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"2\",\"skpd_id\":\"1\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(100, 'default', 'created', 2, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"omnis\",\"name\":\"consequuntur qui qui\",\"skpd_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(101, 'default', 'created', 2, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"ipsa\",\"name\":\"debitis voluptatem nam\",\"program_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(102, 'default', 'created', 3, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"natus\",\"name\":\"debitis ipsam quia\",\"activity_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(103, 'default', 'created', 4, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"et\",\"name\":\"placeat facere quos\",\"activity_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(104, 'default', 'created', 4, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Huldaland\",\"skpd_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(105, 'default', 'created', 5, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Denisland\",\"skpd_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(106, 'default', 'created', 6, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Trantowmouth\",\"skpd_id\":\"2\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(107, 'default', 'created', 3, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"5307668\",\"name\":\"Ellis Schamberger\",\"phone_number\":\"+2752512510555\",\"address\":\"392 Isaac Radial\\nLake Revabury, OR 34299\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(108, 'default', 'created', 4, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8253402\",\"name\":\"Israel Stehr\",\"phone_number\":\"+7343080433880\",\"address\":\"556 Gutkowski Overpass Suite 999\\nEast Tatumville, TN 21026-2303\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(109, 'default', 'created', 3, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"3\",\"skpd_id\":\"2\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(110, 'default', 'created', 4, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"4\",\"skpd_id\":\"2\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(111, 'default', 'created', 3, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"earum\",\"name\":\"et et reiciendis\",\"skpd_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(112, 'default', 'created', 3, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"ad\",\"name\":\"temporibus et et\",\"program_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(113, 'default', 'created', 5, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"est\",\"name\":\"sapiente sint quaerat\",\"activity_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(114, 'default', 'created', 6, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"aut\",\"name\":\"enim dolorem optio\",\"activity_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(115, 'default', 'created', 7, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Hermannland\",\"skpd_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(116, 'default', 'created', 8, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Zboncakborough\",\"skpd_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(117, 'default', 'created', 9, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"South Kennediville\",\"skpd_id\":\"3\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(118, 'default', 'created', 5, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"506943\",\"name\":\"Fiona Lindgren\",\"phone_number\":\"+7700698740690\",\"address\":\"107 Cronin Avenue\\nWest Narciso, HI 15598-6790\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(119, 'default', 'created', 6, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2822326\",\"name\":\"Mr. Reece Wisozk DDS\",\"phone_number\":\"+1158335240486\",\"address\":\"254 Cortney Lodge Apt. 173\\nPort Tommiebury, OK 45463\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(120, 'default', 'created', 5, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"5\",\"skpd_id\":\"3\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(121, 'default', 'created', 6, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"6\",\"skpd_id\":\"3\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(122, 'default', 'created', 4, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"excepturi\",\"name\":\"minima perspiciatis et\",\"skpd_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(123, 'default', 'created', 4, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"dolor\",\"name\":\"quia doloremque quidem\",\"program_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(124, 'default', 'created', 7, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"laboriosam\",\"name\":\"ipsa quidem harum\",\"activity_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(125, 'default', 'created', 8, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"sit\",\"name\":\"libero ea odio\",\"activity_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(126, 'default', 'created', 10, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Eulalia\",\"skpd_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(127, 'default', 'created', 11, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Eltonshire\",\"skpd_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(128, 'default', 'created', 12, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Sallieshire\",\"skpd_id\":\"4\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(129, 'default', 'created', 7, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"4818774\",\"name\":\"Stuart Moen DVM\",\"phone_number\":\"+6272908233938\",\"address\":\"3781 Ferry Station\\nKarenville, NH 01869\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(130, 'default', 'created', 8, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"3450467\",\"name\":\"Brooks Nicolas\",\"phone_number\":\"+6842290250664\",\"address\":\"172 Koss Turnpike Suite 331\\nKunzeshire, DC 42839-8770\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(131, 'default', 'created', 7, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"7\",\"skpd_id\":\"4\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(132, 'default', 'created', 8, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"8\",\"skpd_id\":\"4\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(133, 'default', 'created', 5, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"molestias\",\"name\":\"et quaerat tempora\",\"skpd_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(134, 'default', 'created', 5, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"doloremque\",\"name\":\"aspernatur dolores doloremque\",\"program_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(135, 'default', 'created', 9, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"veniam\",\"name\":\"voluptates suscipit quaerat\",\"activity_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(136, 'default', 'created', 10, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"ullam\",\"name\":\"blanditiis sit repellendus\",\"activity_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(137, 'default', 'created', 13, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Rubyeview\",\"skpd_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(138, 'default', 'created', 14, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Ryannshire\",\"skpd_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(139, 'default', 'created', 15, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Port Candelario\",\"skpd_id\":\"5\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(140, 'default', 'created', 9, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"514636\",\"name\":\"Gilda Morar\",\"phone_number\":\"+9439793419573\",\"address\":\"462 Effertz Summit Apt. 430\\nLake Kadenville, HI 68013-1314\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(141, 'default', 'created', 10, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7753464\",\"name\":\"Isadore Padberg I\",\"phone_number\":\"+4824026329312\",\"address\":\"936 Stamm Ridge\\nGenesisbury, MO 12376\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(142, 'default', 'created', 9, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"9\",\"skpd_id\":\"5\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(143, 'default', 'created', 10, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"10\",\"skpd_id\":\"5\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(144, 'default', 'created', 6, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"molestiae\",\"name\":\"ut rerum aut\",\"skpd_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(145, 'default', 'created', 6, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"nam\",\"name\":\"harum quas delectus\",\"program_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(146, 'default', 'created', 11, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"dolores\",\"name\":\"tempora aut dolores\",\"activity_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(147, 'default', 'created', 12, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"consequatur\",\"name\":\"cum doloribus maxime\",\"activity_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(148, 'default', 'created', 16, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Alexandriashire\",\"skpd_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(149, 'default', 'created', 17, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Metzchester\",\"skpd_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(150, 'default', 'created', 18, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Bashirianhaven\",\"skpd_id\":\"6\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(151, 'default', 'created', 11, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8765037\",\"name\":\"Ms. Carolyn Deckow\",\"phone_number\":\"+1353628948991\",\"address\":\"262 Orval Springs Apt. 353\\nPort Ezekielfort, MT 30402-1336\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(152, 'default', 'created', 12, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"1749309\",\"name\":\"Juanita McDermott\",\"phone_number\":\"+9159711005192\",\"address\":\"226 Mayert Cove Suite 389\\nEast Lyda, NY 03200-5877\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(153, 'default', 'created', 11, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"11\",\"skpd_id\":\"6\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(154, 'default', 'created', 12, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"12\",\"skpd_id\":\"6\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(155, 'default', 'created', 7, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"iste\",\"name\":\"architecto eum quam\",\"skpd_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(156, 'default', 'created', 7, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"id\",\"name\":\"magnam pariatur velit\",\"program_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(157, 'default', 'created', 13, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"reprehenderit\",\"name\":\"deserunt et ut\",\"activity_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(158, 'default', 'created', 14, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"praesentium\",\"name\":\"reiciendis at velit\",\"activity_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(159, 'default', 'created', 19, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Aracelyville\",\"skpd_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(160, 'default', 'created', 20, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Lake Sylvan\",\"skpd_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(161, 'default', 'created', 21, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Edgar\",\"skpd_id\":\"7\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(162, 'default', 'created', 13, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2367239\",\"name\":\"Demarcus Johnston\",\"phone_number\":\"+1397722939410\",\"address\":\"964 Eldridge Square Apt. 350\\nTorranceville, NV 58991\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(163, 'default', 'created', 14, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7486579\",\"name\":\"Mohammed Rice\",\"phone_number\":\"+5225256452885\",\"address\":\"897 Schroeder Stream Suite 174\\nNorth Zoe, GA 60972\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(164, 'default', 'created', 13, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"13\",\"skpd_id\":\"7\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(165, 'default', 'created', 14, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"14\",\"skpd_id\":\"7\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(166, 'default', 'created', 8, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"itaque\",\"name\":\"aut molestias molestias\",\"skpd_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(167, 'default', 'created', 8, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"enim\",\"name\":\"ipsum quo esse\",\"program_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(168, 'default', 'created', 15, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"dolore\",\"name\":\"et minima quae\",\"activity_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(169, 'default', 'created', 16, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"vel\",\"name\":\"omnis in ut\",\"activity_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(170, 'default', 'created', 22, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Daijaburgh\",\"skpd_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(171, 'default', 'created', 23, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Percivalland\",\"skpd_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(172, 'default', 'created', 24, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Port Elvisside\",\"skpd_id\":\"8\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(173, 'default', 'created', 15, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"14624\",\"name\":\"Reynold Reilly\",\"phone_number\":\"+8756435313947\",\"address\":\"73284 Yost Extension Apt. 642\\nCarrollburgh, LA 17459\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(174, 'default', 'created', 16, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"5093179\",\"name\":\"Lavada Hamill\",\"phone_number\":\"+2550706802514\",\"address\":\"23364 Hegmann Circle Apt. 477\\nHattiemouth, ID 96324-2624\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(175, 'default', 'created', 15, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"15\",\"skpd_id\":\"8\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(176, 'default', 'created', 16, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"16\",\"skpd_id\":\"8\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(177, 'default', 'created', 9, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"ducimus\",\"name\":\"dolor explicabo impedit\",\"skpd_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(178, 'default', 'created', 9, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"error\",\"name\":\"tempore corporis et\",\"program_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(179, 'default', 'created', 17, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"quod\",\"name\":\"reiciendis cumque quo\",\"activity_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(180, 'default', 'created', 18, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"eius\",\"name\":\"autem alias est\",\"activity_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(181, 'default', 'created', 25, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Alfredchester\",\"skpd_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(182, 'default', 'created', 26, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"South Claudburgh\",\"skpd_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(183, 'default', 'created', 27, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Astridbury\",\"skpd_id\":\"9\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(184, 'default', 'created', 17, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"1222309\",\"name\":\"Glennie Turner\",\"phone_number\":\"+8911575277771\",\"address\":\"528 Caleigh Inlet\\nMullerfort, WA 36532-3410\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(185, 'default', 'created', 18, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"6453527\",\"name\":\"Ivy Corkery PhD\",\"phone_number\":\"+5685886942354\",\"address\":\"3979 Maggie Ferry\\nEast Idell, IA 24760\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(186, 'default', 'created', 17, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"17\",\"skpd_id\":\"9\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(187, 'default', 'created', 18, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"18\",\"skpd_id\":\"9\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(188, 'default', 'created', 10, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"eligendi\",\"name\":\"in vero quo\",\"skpd_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(189, 'default', 'created', 10, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"sequi\",\"name\":\"et qui velit\",\"program_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(190, 'default', 'created', 19, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"autem\",\"name\":\"quia sit velit\",\"activity_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(191, 'default', 'created', 20, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"non\",\"name\":\"error minus ducimus\",\"activity_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(192, 'default', 'created', 28, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"New Bradly\",\"skpd_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(193, 'default', 'created', 29, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Schmidtmouth\",\"skpd_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(194, 'default', 'created', 30, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Jimmiestad\",\"skpd_id\":\"10\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(195, 'default', 'created', 19, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8547930\",\"name\":\"Reymundo Tromp\",\"phone_number\":\"+5478270159799\",\"address\":\"45166 Beahan Mission Apt. 744\\nKutchfort, FL 82921-9391\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(196, 'default', 'created', 20, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"9450384\",\"name\":\"Salvatore Tromp\",\"phone_number\":\"+7411158170930\",\"address\":\"4993 Willie Loop\\nPort Margotport, CO 13440-5624\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(197, 'default', 'created', 19, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"19\",\"skpd_id\":\"10\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(198, 'default', 'created', 20, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"20\",\"skpd_id\":\"10\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(199, 'default', 'created', 11, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"sed\",\"name\":\"rerum non excepturi\",\"skpd_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(200, 'default', 'created', 11, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"veritatis\",\"name\":\"illo ipsum nobis\",\"program_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(201, 'default', 'created', 21, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"fugit\",\"name\":\"est corrupti omnis\",\"activity_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(202, 'default', 'created', 22, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"quasi\",\"name\":\"perferendis eligendi voluptas\",\"activity_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(203, 'default', 'created', 31, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"South Imogeneburgh\",\"skpd_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(204, 'default', 'created', 32, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Anachester\",\"skpd_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(205, 'default', 'created', 33, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Blickport\",\"skpd_id\":\"11\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(206, 'default', 'created', 21, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"9397691\",\"name\":\"Dr. Muhammad Greenfelder\",\"phone_number\":\"+4075711456654\",\"address\":\"5566 Kadin Ferry\\nNorth Cedrick, NY 37722\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(207, 'default', 'created', 22, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2237718\",\"name\":\"Tressa Borer\",\"phone_number\":\"+3271670281960\",\"address\":\"6064 Grant Drives Apt. 014\\nMurielmouth, OR 60450\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(208, 'default', 'created', 21, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"21\",\"skpd_id\":\"11\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(209, 'default', 'created', 22, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"22\",\"skpd_id\":\"11\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(210, 'default', 'created', 12, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"sint\",\"name\":\"beatae tempore laudantium\",\"skpd_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(211, 'default', 'created', 12, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"deleniti\",\"name\":\"voluptas eveniet provident\",\"program_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(212, 'default', 'created', 23, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"nobis\",\"name\":\"reiciendis dolor atque\",\"activity_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(213, 'default', 'created', 24, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"deserunt\",\"name\":\"unde consectetur et\",\"activity_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(214, 'default', 'created', 34, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Ewaldton\",\"skpd_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(215, 'default', 'created', 35, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Port Idelltown\",\"skpd_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(216, 'default', 'created', 36, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"New Citlalli\",\"skpd_id\":\"12\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(217, 'default', 'created', 23, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8348104\",\"name\":\"Ms. Virgie Willms\",\"phone_number\":\"+3280733600626\",\"address\":\"31001 O\'Kon Isle\\nBlandafurt, VA 26737\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(218, 'default', 'created', 24, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"718738\",\"name\":\"Raphaelle Schulist\",\"phone_number\":\"+7502111890381\",\"address\":\"2368 Blanca Well\\nDarefurt, DE 79033\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(219, 'default', 'created', 23, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"23\",\"skpd_id\":\"12\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(220, 'default', 'created', 24, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"24\",\"skpd_id\":\"12\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(221, 'default', 'created', 13, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"ratione\",\"name\":\"fugit ut sint\",\"skpd_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(222, 'default', 'created', 13, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"sapiente\",\"name\":\"unde nemo officia\",\"program_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(223, 'default', 'created', 25, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"voluptates\",\"name\":\"sint ut at\",\"activity_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(224, 'default', 'created', 26, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"quisquam\",\"name\":\"alias sed atque\",\"activity_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(225, 'default', 'created', 37, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Krajcikton\",\"skpd_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(226, 'default', 'created', 38, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Larsonland\",\"skpd_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(227, 'default', 'created', 39, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Jeramiestad\",\"skpd_id\":\"13\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(228, 'default', 'created', 25, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7467905\",\"name\":\"Prof. Annetta Toy\",\"phone_number\":\"+7750183242847\",\"address\":\"4385 Syble Place\\nMillerhaven, SD 78365\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(229, 'default', 'created', 26, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"3089448\",\"name\":\"Abdul Ryan\",\"phone_number\":\"+9139693731915\",\"address\":\"489 Grady Inlet Suite 098\\nGinafurt, TN 20898-4152\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(230, 'default', 'created', 25, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"25\",\"skpd_id\":\"13\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(231, 'default', 'created', 26, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"26\",\"skpd_id\":\"13\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(232, 'default', 'created', 14, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"quis\",\"name\":\"dolorum aut assumenda\",\"skpd_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(233, 'default', 'created', 14, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"magnam\",\"name\":\"fuga soluta voluptatem\",\"program_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(234, 'default', 'created', 27, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"aperiam\",\"name\":\"ab aliquam quo\",\"activity_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(235, 'default', 'created', 28, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"cumque\",\"name\":\"asperiores excepturi culpa\",\"activity_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(236, 'default', 'created', 40, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Krystinatown\",\"skpd_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(237, 'default', 'created', 41, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Klockoland\",\"skpd_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(238, 'default', 'created', 42, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Maggiestad\",\"skpd_id\":\"14\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(239, 'default', 'created', 27, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"6459173\",\"name\":\"Nigel Gutkowski\",\"phone_number\":\"+5962301177893\",\"address\":\"51996 Pacocha Neck Suite 461\\nNorth Evan, ID 97269-1662\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(240, 'default', 'created', 28, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7960078\",\"name\":\"Kacie Feest\",\"phone_number\":\"+6103139820746\",\"address\":\"301 Magdalena Plains Apt. 979\\nRueckerstad, CA 64549\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(241, 'default', 'created', 27, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"27\",\"skpd_id\":\"14\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(242, 'default', 'created', 28, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"28\",\"skpd_id\":\"14\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(243, 'default', 'created', 15, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"qui\",\"name\":\"qui veniam delectus\",\"skpd_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(244, 'default', 'created', 15, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"at\",\"name\":\"possimus laudantium quos\",\"program_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(245, 'default', 'created', 29, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"cupiditate\",\"name\":\"autem in et\",\"activity_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(246, 'default', 'created', 30, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"eum\",\"name\":\"perferendis velit repellat\",\"activity_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(247, 'default', 'created', 43, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Graham\",\"skpd_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(248, 'default', 'created', 44, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Davonteport\",\"skpd_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(249, 'default', 'created', 45, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Jadonstad\",\"skpd_id\":\"15\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(250, 'default', 'created', 29, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7889644\",\"name\":\"Clemens Lang\",\"phone_number\":\"+5083561519624\",\"address\":\"7346 Cormier Highway Apt. 480\\nFisherville, CO 45021-0224\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(251, 'default', 'created', 30, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2492524\",\"name\":\"Jerod Simonis\",\"phone_number\":\"+3423146613621\",\"address\":\"814 Batz Shores\\nNadertown, VT 84749-2109\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(252, 'default', 'created', 29, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"29\",\"skpd_id\":\"15\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(253, 'default', 'created', 30, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"30\",\"skpd_id\":\"15\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(254, 'default', 'created', 16, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"quia\",\"name\":\"ad sunt facilis\",\"skpd_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(255, 'default', 'created', 16, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"in\",\"name\":\"ex laborum expedita\",\"program_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(256, 'default', 'created', 31, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"corrupti\",\"name\":\"asperiores enim in\",\"activity_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(257, 'default', 'created', 32, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"ab\",\"name\":\"dolorum unde incidunt\",\"activity_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(258, 'default', 'created', 46, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"New Kaden\",\"skpd_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(259, 'default', 'created', 47, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Zulaufborough\",\"skpd_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(260, 'default', 'created', 48, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Smithbury\",\"skpd_id\":\"16\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(261, 'default', 'created', 31, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"1001967\",\"name\":\"Eusebio Denesik\",\"phone_number\":\"+4954290361019\",\"address\":\"10014 Charity Mews\\nVeronachester, NY 90722\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(262, 'default', 'created', 32, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7515721\",\"name\":\"Laurianne Heaney\",\"phone_number\":\"+1593670117553\",\"address\":\"80233 Kuhn Road Suite 692\\nPort Abigailfort, SD 27801\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(263, 'default', 'created', 31, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"31\",\"skpd_id\":\"16\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(264, 'default', 'created', 32, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"32\",\"skpd_id\":\"16\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(265, 'default', 'created', 17, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"harum\",\"name\":\"temporibus maiores quisquam\",\"skpd_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(266, 'default', 'created', 17, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"quaerat\",\"name\":\"praesentium veniam similique\",\"program_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(267, 'default', 'created', 33, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"quo\",\"name\":\"labore nulla sint\",\"activity_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(268, 'default', 'created', 34, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"beatae\",\"name\":\"provident magni nam\",\"activity_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(269, 'default', 'created', 49, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Port Simeon\",\"skpd_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(270, 'default', 'created', 50, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Minaland\",\"skpd_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(271, 'default', 'created', 51, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Freedaport\",\"skpd_id\":\"17\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(272, 'default', 'created', 33, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"730277\",\"name\":\"Fleta Toy IV\",\"phone_number\":\"+7575786684822\",\"address\":\"562 Rosetta Brooks Suite 008\\nPort Moshe, HI 97005-8757\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(273, 'default', 'created', 34, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"9536918\",\"name\":\"Richie Collier\",\"phone_number\":\"+1483076549575\",\"address\":\"849 Lockman Rue\\nDachstad, CA 71907-3153\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(274, 'default', 'created', 33, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"33\",\"skpd_id\":\"17\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(275, 'default', 'created', 34, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"34\",\"skpd_id\":\"17\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(276, 'default', 'created', 18, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"distinctio\",\"name\":\"sed occaecati iste\",\"skpd_id\":\"18\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(277, 'default', 'created', 18, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"voluptatem\",\"name\":\"excepturi deserunt voluptatum\",\"program_id\":\"18\"}}', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(278, 'default', 'created', 35, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"hic\",\"name\":\"ut in atque\",\"activity_id\":\"18\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(279, 'default', 'created', 36, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"incidunt\",\"name\":\"est error ex\",\"activity_id\":\"18\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(280, 'default', 'created', 52, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Emmanuelfurt\",\"skpd_id\":\"18\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(281, 'default', 'created', 53, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Aaronport\",\"skpd_id\":\"18\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(282, 'default', 'created', 54, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Sandrinemouth\",\"skpd_id\":\"18\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(283, 'default', 'created', 35, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"4149438\",\"name\":\"Ansley Bernier MD\",\"phone_number\":\"+4869402581050\",\"address\":\"79046 Odie Island\\nMacejkovicland, MA 36240\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(284, 'default', 'created', 36, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"1462358\",\"name\":\"Dr. Isaias Wiza PhD\",\"phone_number\":\"+9738059555644\",\"address\":\"3191 Nils Mission Apt. 799\\nNew Antoinettehaven, DE 66876\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(285, 'default', 'created', 35, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"35\",\"skpd_id\":\"18\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(286, 'default', 'created', 36, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"36\",\"skpd_id\":\"18\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(287, 'default', 'created', 19, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"neque\",\"name\":\"sequi hic alias\",\"skpd_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(288, 'default', 'created', 19, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"minus\",\"name\":\"ea ut libero\",\"program_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(289, 'default', 'created', 37, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"optio\",\"name\":\"libero eaque qui\",\"activity_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(290, 'default', 'created', 38, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"architecto\",\"name\":\"sequi eum culpa\",\"activity_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(291, 'default', 'created', 55, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Prosaccotown\",\"skpd_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(292, 'default', 'created', 56, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Hoegerside\",\"skpd_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(293, 'default', 'created', 57, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"South Roderick\",\"skpd_id\":\"19\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(294, 'default', 'created', 37, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2054891\",\"name\":\"Ms. Constance Kassulke DVM\",\"phone_number\":\"+2803388496963\",\"address\":\"77725 Jamir Lock\\nBodefurt, WA 49019-0272\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(295, 'default', 'created', 38, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"1055542\",\"name\":\"Adam Larkin\",\"phone_number\":\"+8241917531017\",\"address\":\"97602 Wyman Drive Apt. 682\\nJoannestad, PA 47213-4486\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(296, 'default', 'created', 37, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"37\",\"skpd_id\":\"19\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(297, 'default', 'created', 38, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"38\",\"skpd_id\":\"19\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(298, 'default', 'created', 20, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"saepe\",\"name\":\"quibusdam laborum qui\",\"skpd_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(299, 'default', 'created', 20, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"minima\",\"name\":\"tenetur autem sapiente\",\"program_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(300, 'default', 'created', 39, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"voluptate\",\"name\":\"est consequatur tenetur\",\"activity_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(301, 'default', 'created', 40, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"amet\",\"name\":\"in ratione voluptates\",\"activity_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(302, 'default', 'created', 58, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Schambergerville\",\"skpd_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(303, 'default', 'created', 59, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Deondreview\",\"skpd_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(304, 'default', 'created', 60, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Gottliebville\",\"skpd_id\":\"20\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(305, 'default', 'created', 39, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7322447\",\"name\":\"Mabel Bartell\",\"phone_number\":\"+7904800236022\",\"address\":\"7313 Green Stream\\nNorth Adellashire, MA 19172\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(306, 'default', 'created', 40, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"2705417\",\"name\":\"Mr. Kian Watsica DVM\",\"phone_number\":\"+2610454138130\",\"address\":\"392 Micheal Union\\nEast Alberto, OR 70143\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(307, 'default', 'created', 39, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"39\",\"skpd_id\":\"20\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(308, 'default', 'created', 40, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"40\",\"skpd_id\":\"20\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(309, 'default', 'created', 21, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"provident\",\"name\":\"quaerat nostrum asperiores\",\"skpd_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(310, 'default', 'created', 21, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"eos\",\"name\":\"facere ut provident\",\"program_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(311, 'default', 'created', 41, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"dignissimos\",\"name\":\"impedit eius inventore\",\"activity_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(312, 'default', 'created', 42, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"voluptas\",\"name\":\"molestiae dicta dolorum\",\"activity_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(313, 'default', 'created', 61, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Gaetanofurt\",\"skpd_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(314, 'default', 'created', 62, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Crooksside\",\"skpd_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(315, 'default', 'created', 63, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Port Donald\",\"skpd_id\":\"21\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(316, 'default', 'created', 41, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"6748871\",\"name\":\"Theodore Gaylord\",\"phone_number\":\"+6203496221763\",\"address\":\"6425 Emil Tunnel\\nNew Gabe, RI 89468\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(317, 'default', 'created', 42, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8683753\",\"name\":\"Judge Ziemann\",\"phone_number\":\"+5304473317453\",\"address\":\"3885 Gerard Burg\\nFeesttown, CT 63819\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(318, 'default', 'created', 41, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"41\",\"skpd_id\":\"21\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(319, 'default', 'created', 42, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"42\",\"skpd_id\":\"21\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(320, 'default', 'created', 22, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"ea\",\"name\":\"et aliquid perferendis\",\"skpd_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(321, 'default', 'created', 22, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"dicta\",\"name\":\"nulla quia est\",\"program_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(322, 'default', 'created', 43, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"nihil\",\"name\":\"molestias eum culpa\",\"activity_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(323, 'default', 'created', 44, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"impedit\",\"name\":\"nesciunt velit excepturi\",\"activity_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(324, 'default', 'created', 64, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Mathewmouth\",\"skpd_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(325, 'default', 'created', 65, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Jamesonview\",\"skpd_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(326, 'default', 'created', 66, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Caspermouth\",\"skpd_id\":\"22\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(327, 'default', 'created', 43, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"347779\",\"name\":\"Eula Johnston\",\"phone_number\":\"+2103958076915\",\"address\":\"3199 Bauch Knoll Suite 852\\nNorth Wilfridton, ME 54631-0986\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(328, 'default', 'created', 44, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8725078\",\"name\":\"Guiseppe Sporer\",\"phone_number\":\"+2429213468419\",\"address\":\"14958 Neha Village Suite 722\\nNew Darianamouth, PA 20410\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(329, 'default', 'created', 43, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"43\",\"skpd_id\":\"22\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(330, 'default', 'created', 44, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"44\",\"skpd_id\":\"22\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(331, 'default', 'created', 23, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"rerum\",\"name\":\"consequatur enim est\",\"skpd_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(332, 'default', 'created', 23, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"fugiat\",\"name\":\"maiores quo quidem\",\"program_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(333, 'default', 'created', 45, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"libero\",\"name\":\"sit explicabo est\",\"activity_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(334, 'default', 'created', 46, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"odit\",\"name\":\"dolor necessitatibus est\",\"activity_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(335, 'default', 'created', 67, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Vincent\",\"skpd_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(336, 'default', 'created', 68, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"New Alexandro\",\"skpd_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(337, 'default', 'created', 69, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Stoltenbergshire\",\"skpd_id\":\"23\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(338, 'default', 'created', 45, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"3533368\",\"name\":\"Dr. Odell Corkery DDS\",\"phone_number\":\"+3644898650355\",\"address\":\"1331 Griffin Trail\\nRolfsonburgh, TN 80915\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(339, 'default', 'created', 46, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8147995\",\"name\":\"Corine Hessel\",\"phone_number\":\"+8108742388229\",\"address\":\"48222 Hegmann Valley\\nNorth Hank, CO 51973\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(340, 'default', 'created', 45, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"45\",\"skpd_id\":\"23\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(341, 'default', 'created', 46, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"46\",\"skpd_id\":\"23\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(342, 'default', 'created', 24, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"assumenda\",\"name\":\"consequatur officia dignissimos\",\"skpd_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(343, 'default', 'created', 24, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"esse\",\"name\":\"quasi veritatis impedit\",\"program_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(344, 'default', 'created', 47, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"tenetur\",\"name\":\"et at ut\",\"activity_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(345, 'default', 'created', 48, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"soluta\",\"name\":\"id vel autem\",\"activity_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(346, 'default', 'created', 70, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Barrowsfurt\",\"skpd_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(347, 'default', 'created', 71, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"South Jamir\",\"skpd_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(348, 'default', 'created', 72, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Mozelleside\",\"skpd_id\":\"24\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(349, 'default', 'created', 47, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"8180528\",\"name\":\"Neva Beer\",\"phone_number\":\"+7649214765750\",\"address\":\"1735 O\'Kon Bypass\\nMillerport, MD 05712-0021\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(350, 'default', 'created', 48, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7802034\",\"name\":\"Rosina Towne\",\"phone_number\":\"+1956567596465\",\"address\":\"45596 Kuphal Heights\\nNew Aleneland, TN 96550\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(351, 'default', 'created', 47, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"47\",\"skpd_id\":\"24\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(352, 'default', 'created', 48, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"48\",\"skpd_id\":\"24\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(353, 'default', 'created', 25, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"a\",\"name\":\"nihil sequi corporis\",\"skpd_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(354, 'default', 'created', 25, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"necessitatibus\",\"name\":\"consequatur rerum ea\",\"program_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(355, 'default', 'created', 49, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"repellendus\",\"name\":\"et velit ut\",\"activity_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(356, 'default', 'created', 50, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"ipsum\",\"name\":\"dolores ut suscipit\",\"activity_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(357, 'default', 'created', 73, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Jeremy\",\"skpd_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(358, 'default', 'created', 74, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Bergnaumfurt\",\"skpd_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(359, 'default', 'created', 75, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"North Olafton\",\"skpd_id\":\"25\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(360, 'default', 'created', 49, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"4862995\",\"name\":\"Dr. Jameson Kunze\",\"phone_number\":\"+7159739600699\",\"address\":\"138 Reta Inlet Suite 343\\nHegmannport, OR 98609-3413\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(361, 'default', 'created', 50, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"9454902\",\"name\":\"Aron Gaylord\",\"phone_number\":\"+4148441889643\",\"address\":\"452 Hoppe Trail Apt. 155\\nEast Gust, ND 83897\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(362, 'default', 'created', 49, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"49\",\"skpd_id\":\"25\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(363, 'default', 'created', 50, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"50\",\"skpd_id\":\"25\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"bendahara\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(364, 'default', 'created', 26, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"fuga\",\"name\":\"quam recusandae unde\",\"skpd_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(365, 'default', 'created', 26, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"numquam\",\"name\":\"aspernatur non iusto\",\"program_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(366, 'default', 'created', 51, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"temporibus\",\"name\":\"asperiores est aspernatur\",\"activity_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(367, 'default', 'created', 52, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"nostrum\",\"name\":\"quo assumenda vel\",\"activity_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(368, 'default', 'created', 76, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Darien\",\"skpd_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(369, 'default', 'created', 77, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Christophebury\",\"skpd_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(370, 'default', 'created', 78, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Madalinefort\",\"skpd_id\":\"26\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(371, 'default', 'created', 51, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"7761508\",\"name\":\"Rhett Kirlin\",\"phone_number\":\"+9010607985920\",\"address\":\"9807 Hodkiewicz Cliffs\\nWest Adrielland, MO 83253-6866\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(372, 'default', 'created', 52, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"5747644\",\"name\":\"Dr. Elinor Blanda Sr.\",\"phone_number\":\"+5636741409358\",\"address\":\"9070 Schinner Trafficway\\nMayeland, SC 96998\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(373, 'default', 'created', 51, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"51\",\"skpd_id\":\"26\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(374, 'default', 'created', 52, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"52\",\"skpd_id\":\"26\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"kpa\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(375, 'default', 'created', 27, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"vitae\",\"name\":\"eaque voluptas aut\",\"skpd_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(376, 'default', 'created', 27, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"officia\",\"name\":\"consequatur est nobis\",\"program_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(377, 'default', 'created', 53, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"placeat\",\"name\":\"cum nostrum maiores\",\"activity_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(378, 'default', 'created', 54, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"totam\",\"name\":\"rerum odit dicta\",\"activity_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(379, 'default', 'created', 79, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Breitenbergchester\",\"skpd_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(380, 'default', 'created', 80, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"East Cora\",\"skpd_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(381, 'default', 'created', 81, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Aletha\",\"skpd_id\":\"27\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(382, 'default', 'created', 53, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"6817974\",\"name\":\"Noemy Nienow IV\",\"phone_number\":\"+1723647206105\",\"address\":\"71215 Cyrus Circles Suite 695\\nNew Shermanfurt, OR 46075-8216\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(383, 'default', 'created', 54, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"6770393\",\"name\":\"Edyth Hegmann\",\"phone_number\":\"+1696206787272\",\"address\":\"95966 Savannah Shore\\nEast Clarabelleshire, NC 66577-8204\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(384, 'default', 'created', 53, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"53\",\"skpd_id\":\"27\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(385, 'default', 'created', 54, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"54\",\"skpd_id\":\"27\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(386, 'default', 'created', 28, 'App\\Models\\Program', NULL, NULL, '{\"attributes\":{\"code\":\"alias\",\"name\":\"temporibus qui maiores\",\"skpd_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(387, 'default', 'created', 28, 'App\\Models\\Activity', NULL, NULL, '{\"attributes\":{\"code\":\"modi\",\"name\":\"maiores soluta ut\",\"program_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(388, 'default', 'created', 55, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"mollitia\",\"name\":\"unde ab ea\",\"activity_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(389, 'default', 'created', 56, 'App\\Models\\WorkPackage', NULL, NULL, '{\"attributes\":{\"code\":\"quam\",\"name\":\"et eveniet quod\",\"activity_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(390, 'default', 'created', 82, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Kiraberg\",\"skpd_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(391, 'default', 'created', 83, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"Leschburgh\",\"skpd_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(392, 'default', 'created', 84, 'App\\Models\\Location', NULL, NULL, '{\"attributes\":{\"name\":\"West Erna\",\"skpd_id\":\"28\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(393, 'default', 'created', 55, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"5978531\",\"name\":\"Mr. Lionel Mills\",\"phone_number\":\"+6373958693591\",\"address\":\"9541 Von Trail Apt. 197\\nLemuelchester, FL 36141\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(394, 'default', 'created', 56, 'App\\Models\\Functionary', NULL, NULL, '{\"attributes\":{\"nip\":\"9458797\",\"name\":\"Nasir Krajcik\",\"phone_number\":\"+1522594081816\",\"address\":\"395 Padberg Wall Suite 258\\nBradfordstad, GA 30390\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(395, 'default', 'created', 55, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"55\",\"skpd_id\":\"28\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(396, 'default', 'created', 56, 'App\\Models\\Occupation', NULL, NULL, '{\"attributes\":{\"functionary_id\":\"56\",\"skpd_id\":\"28\",\"start_date\":\"2019-11-24\",\"end_date\":\"2020-11-24\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 06:43:05', '2019-11-24 06:43:05'),
(397, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 06:53:18', '2019-11-24 06:53:18'),
(398, 'default', 'created', 1, 'App\\Models\\Employee', 1, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170012019\",\"skpd_id\":\"17\",\"name\":\"Harry Saputra\",\"ktp\":\"176119119442023\",\"npwp\":\"12346789\",\"gender\":\"laki-laki\",\"address\":\"jl. dr wahidin komp. sepakat asri D7\",\"religion\":\"islam\",\"phone_number\":\"08115741200\",\"bank_name\":\"kalbar\",\"account_number\":\"111000222\",\"bpjs_healthcare\":\"133223320\",\"bpjs_social_security\":\"133220233\"}}', '2019-11-24 06:55:02', '2019-11-24 06:55:02'),
(399, 'default', 'created', 1, 'App\\Models\\WorkDay', 1, 'App\\Models\\User', '{\"attributes\":{\"year\":\"2019\",\"january\":\"25\",\"february\":\"25\",\"march\":\"25\",\"april\":\"25\",\"may\":\"25\",\"june\":\"25\",\"july\":\"25\",\"august\":\"25\",\"september\":\"25\",\"october\":\"25\",\"november\":\"25\",\"december\":\"25\"}}', '2019-11-24 07:33:26', '2019-11-24 07:33:26'),
(400, 'default', 'created', 29, 'App\\Models\\Program', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.1\",\"name\":\"StartupHub untuk Masyarakat\",\"skpd_id\":\"17\"}}', '2019-11-24 07:55:21', '2019-11-24 07:55:21'),
(401, 'default', 'created', 29, 'App\\Models\\Activity', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.1.1\",\"name\":\"Operasional Harian StartupHub\",\"program_id\":\"29\"}}', '2019-11-24 07:55:55', '2019-11-24 07:55:55'),
(402, 'default', 'created', 57, 'App\\Models\\WorkPackage', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.1.1.1\",\"name\":\"Administrasi & Registrasi Penggunaan StartupHub\",\"activity_id\":\"29\"}}', '2019-11-24 07:56:44', '2019-11-24 07:56:44'),
(403, 'default', 'created', 2, 'App\\Models\\Employee', 1, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170022019\",\"skpd_id\":\"17\",\"name\":\"Miftah Rajunda, S.Kom\",\"ktp\":\"176119119442000\",\"npwp\":\"1331122331132\",\"gender\":\"laki-laki\",\"address\":\"Jl. Wonobaru Gg. Wonodadi III No.8 Pontianak\",\"religion\":\"islam\",\"phone_number\":\"08112213312\",\"bank_name\":\"kalbar\",\"account_number\":\"114413331812\",\"bpjs_healthcare\":\"133012\",\"bpjs_social_security\":\"103329\"}}', '2019-11-24 08:36:11', '2019-11-24 08:36:11'),
(404, 'default', 'created', 57, 'App\\Models\\Functionary', 1, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"197709012002121006\",\"name\":\"Syamsul Akbar, ST., M.Eng., M.Sc\",\"phone_number\":\"081331229312\",\"address\":\"Jl. Perdana Komp. Perdana Square No.1 Pontianak\"}}', '2019-11-24 08:39:18', '2019-11-24 08:39:18'),
(405, 'default', 'created', 58, 'App\\Models\\Functionary', 1, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"196103291989031004\",\"name\":\"Ir. H. Uray Indra Mulya, MM\",\"phone_number\":\"0811244232\",\"address\":\"Jl. Parit H. Husein 2 Komp. Bali Agung 3 No. 9 Pontianak\"}}', '2019-11-24 08:41:02', '2019-11-24 08:41:02'),
(406, 'default', 'created', 57, 'App\\Models\\Occupation', 1, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"57\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"ppk\",\"status\":\"active\"}}', '2019-11-24 08:42:31', '2019-11-24 08:42:31'),
(407, 'default', 'created', 58, 'App\\Models\\Occupation', 1, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"58\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pa\",\"status\":\"active\"}}', '2019-11-24 08:43:18', '2019-11-24 08:43:18'),
(408, 'default', 'created', 85, 'App\\Models\\Location', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan StartupHub Kantor Walikota Pontianak\",\"skpd_id\":\"17\"}}', '2019-11-24 08:47:08', '2019-11-24 08:47:08'),
(409, 'default', 'created', 1, 'App\\Models\\SalaryComponent', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Gaji Pokok\"}}', '2019-11-24 08:48:54', '2019-11-24 08:48:54'),
(410, 'default', 'created', 2, 'App\\Models\\SalaryComponent', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Bonus\"}}', '2019-11-24 08:49:36', '2019-11-24 08:49:36'),
(411, 'default', 'created', 3, 'App\\Models\\SalaryComponent', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Tunjangan Internet\"}}', '2019-11-24 08:50:25', '2019-11-24 08:50:25'),
(412, 'default', 'updated', 3, 'App\\Models\\SalaryComponent', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Tunjangan Komunikasi\"},\"old\":{\"name\":\"Tunjangan Internet\"}}', '2019-11-24 08:50:46', '2019-11-24 08:50:46'),
(413, 'default', 'created', 4, 'App\\Models\\SalaryComponent', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Tunjangan Pendidikan\"}}', '2019-11-24 08:51:08', '2019-11-24 08:51:08'),
(414, 'default', 'created', 1, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-24 08:52:01', '2019-11-24 08:52:01'),
(415, 'default', 'created', 1, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2019-11-24 08:52:01', '2019-11-24 08:52:01'),
(416, 'default', 'created', 2, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"2\",\"nominal\":\"3500000\"}}', '2019-11-24 08:52:01', '2019-11-24 08:52:01'),
(417, 'default', 'created', 3, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"3\",\"nominal\":\"250000\"}}', '2019-11-24 08:52:01', '2019-11-24 08:52:01'),
(418, 'default', 'created', 4, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"4\",\"nominal\":\"100000\"}}', '2019-11-24 08:52:01', '2019-11-24 08:52:01'),
(419, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 10:21:38', '2019-11-24 10:21:38'),
(420, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 16:49:21', '2019-11-24 16:49:21'),
(421, 'default', 'created', 1, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 16:49:48', '2019-11-24 16:49:48'),
(422, 'default', 'created', 2, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-01\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 16:51:14', '2019-11-24 16:51:14'),
(423, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 17:14:05', '2019-11-24 17:14:05');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(424, 'default', 'updated', 17, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017\",\"name\":\"Dinas Komunikasi dan Informatika\",\"address\":\"Jl. Rahadi Oesman No.3\",\"phone_number\":\"0561 733041\",\"fax\":\"0561 733041\",\"post_code\":\"78111\",\"website\":\"www.diskominfo.pontianakkota.go.id\",\"email\":\"diskominfo@pontianakkota.go.id\"},\"old\":{\"number\":\"017\",\"name\":\"Dinas Komunikasi dan Informatika\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-11-24 17:23:40', '2019-11-24 17:23:40'),
(425, 'default', 'created', 3, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-02\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:03', '2019-11-24 17:28:03'),
(426, 'default', 'created', 4, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:11', '2019-11-24 17:28:11'),
(427, 'default', 'created', 5, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-04\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:14', '2019-11-24 17:28:14'),
(428, 'default', 'created', 6, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-05\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:17', '2019-11-24 17:28:17'),
(429, 'default', 'created', 7, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:20', '2019-11-24 17:28:20'),
(430, 'default', 'created', 8, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-07\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:22', '2019-11-24 17:28:22'),
(431, 'default', 'created', 9, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-08\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:25', '2019-11-24 17:28:25'),
(432, 'default', 'created', 10, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-09\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:28', '2019-11-24 17:28:28'),
(433, 'default', 'created', 11, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-10\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:32', '2019-11-24 17:28:32'),
(434, 'default', 'created', 12, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-11\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:35', '2019-11-24 17:28:35'),
(435, 'default', 'created', 13, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-12\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:38', '2019-11-24 17:28:38'),
(436, 'default', 'created', 14, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:40', '2019-11-24 17:28:40'),
(437, 'default', 'created', 15, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:43', '2019-11-24 17:28:43'),
(438, 'default', 'created', 16, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:46', '2019-11-24 17:28:46'),
(439, 'default', 'created', 17, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-16\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:52', '2019-11-24 17:28:52'),
(440, 'default', 'created', 18, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:55', '2019-11-24 17:28:55'),
(441, 'default', 'created', 19, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-18\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:28:58', '2019-11-24 17:28:58'),
(442, 'default', 'created', 20, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-19\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:09', '2019-11-24 17:29:09'),
(443, 'default', 'created', 21, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:13', '2019-11-24 17:29:13'),
(444, 'default', 'created', 22, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:15', '2019-11-24 17:29:15'),
(445, 'default', 'created', 23, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:20', '2019-11-24 17:29:20'),
(446, 'default', 'created', 24, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-23\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:22', '2019-11-24 17:29:22'),
(447, 'default', 'created', 25, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-24\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:27', '2019-11-24 17:29:27'),
(448, 'default', 'created', 26, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:34', '2019-11-24 17:29:34'),
(449, 'default', 'created', 27, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:37', '2019-11-24 17:29:37'),
(450, 'default', 'created', 28, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-28\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:29:48', '2019-11-24 17:29:48'),
(451, 'default', 'created', 1, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-28\",\"end_date\":\"2019-11-28\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-24 17:29:48', '2019-11-24 17:29:48'),
(452, 'default', 'updated', 21, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-20\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:30:17', '2019-11-24 17:30:17'),
(453, 'default', 'created', 2, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-20\",\"end_date\":\"2019-11-20\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-24 17:30:17', '2019-11-24 17:30:17'),
(454, 'default', 'updated', 28, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-28\",\"attendance\":\"attend\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-28\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:31:01', '2019-11-24 17:31:01'),
(455, 'default', 'deleted', 1, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-28\",\"end_date\":\"2019-11-28\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-24 17:31:01', '2019-11-24 17:31:01'),
(456, 'default', 'created', 1, 'App\\Models\\Assessment', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2019-11-24 17:31:18', '2019-11-24 17:31:18'),
(457, 'default', 'updated', 4, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-03\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2019-11-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 17:33:49', '2019-11-24 17:33:49'),
(458, 'default', 'created', 3, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-03\",\"end_date\":\"2019-11-03\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-24 17:33:49', '2019-11-24 17:33:49'),
(459, 'login', 'login', 5, 'App\\Models\\User', 5, 'App\\Models\\User', '[]', '2019-11-24 17:37:48', '2019-11-24 17:37:48'),
(460, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 17:38:23', '2019-11-24 17:38:23'),
(461, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 17:39:24', '2019-11-24 17:39:24'),
(462, 'login', 'login', 7, 'App\\Models\\User', 7, 'App\\Models\\User', '[]', '2019-11-24 17:42:14', '2019-11-24 17:42:14'),
(463, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 17:44:15', '2019-11-24 17:44:15'),
(464, 'default', 'created', 1, 'App\\Models\\PaymentLetter', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"1\",\"number\":\"003.5.e\\/BAPEMP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2019\"}}', '2019-11-24 17:45:23', '2019-11-24 17:45:23'),
(465, 'default', 'created', 3, 'App\\Models\\Employee', 1, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170032019\",\"skpd_id\":\"17\",\"name\":\"Aditya Teguh Nugraha\",\"ktp\":\"10101010101\",\"npwp\":\"13312121\",\"gender\":\"laki-laki\",\"address\":\"jl. dr wahidin komp. sepakat asri D7\",\"religion\":\"islam\",\"phone_number\":\"08115741200\",\"bank_name\":\"kalbar\",\"account_number\":\"12444123\",\"bpjs_healthcare\":\"1442123\",\"bpjs_social_security\":\"412421321\"}}', '2019-11-24 19:07:41', '2019-11-24 19:07:41'),
(466, 'default', 'created', 30, 'App\\Models\\Program', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.2\",\"name\":\"Pengelolaan Pontive Center\",\"skpd_id\":\"17\"}}', '2019-11-24 19:09:26', '2019-11-24 19:09:26'),
(467, 'default', 'created', 30, 'App\\Models\\Activity', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.2.1\",\"name\":\"Administrasi Kegiatan Pontive Center\",\"program_id\":\"30\"}}', '2019-11-24 19:09:42', '2019-11-24 19:09:42'),
(468, 'default', 'created', 58, 'App\\Models\\WorkPackage', 1, 'App\\Models\\User', '{\"attributes\":{\"code\":\"017.2.1.1\",\"name\":\"Operasionan Harian Pontive Center\",\"activity_id\":\"30\"}}', '2019-11-24 19:09:59', '2019-11-24 19:09:59'),
(469, 'default', 'created', 86, 'App\\Models\\Location', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan Pontive Center Pontianak\",\"skpd_id\":\"17\"}}', '2019-11-24 19:12:56', '2019-11-24 19:12:56'),
(470, 'default', 'created', 2, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/DISKOMINFO\\/I\\/2019\",\"employee_id\":\"3\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"41\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-11-01\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-24 19:14:01', '2019-11-24 19:14:01'),
(471, 'default', 'created', 5, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"2\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2019-11-24 19:14:01', '2019-11-24 19:14:01'),
(472, 'default', 'created', 6, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"2\",\"salary_component_id\":\"3\",\"nominal\":\"250000\"}}', '2019-11-24 19:14:01', '2019-11-24 19:14:01'),
(473, 'default', 'created', 29, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-01\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:14:49', '2019-11-24 19:14:49'),
(474, 'default', 'created', 30, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-02\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:14:54', '2019-11-24 19:14:54'),
(475, 'default', 'created', 31, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:14:59', '2019-11-24 19:14:59'),
(476, 'default', 'created', 32, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-04\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2019-11-24 19:16:02', '2019-11-24 19:16:02'),
(477, 'default', 'created', 4, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-04\",\"end_date\":\"2019-11-04\",\"contract_id\":\"2\",\"employee_id\":\"3\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-24 19:16:02', '2019-11-24 19:16:02'),
(478, 'default', 'created', 5, 'App\\Models\\HistoryLeaveEmployee', 1, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-05\",\"end_date\":\"2019-11-08\",\"contract_id\":\"2\",\"employee_id\":\"3\",\"leave_type\":\"1\",\"total_day\":\"4\",\"dates\":\"[\\\"05-11-2019\\\",\\\"06-11-2019\\\",\\\"07-11-2019\\\",\\\"08-11-2019\\\"]\"}}', '2019-11-24 19:17:53', '2019-11-24 19:17:53'),
(479, 'default', 'created', 33, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-05\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"1\",\"cut_leave\":\"1\"}}', '2019-11-24 19:17:54', '2019-11-24 19:17:54'),
(480, 'default', 'created', 34, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-06\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"1\",\"cut_leave\":\"1\"}}', '2019-11-24 19:17:54', '2019-11-24 19:17:54'),
(481, 'default', 'created', 35, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-07\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"1\",\"cut_leave\":\"1\"}}', '2019-11-24 19:17:54', '2019-11-24 19:17:54'),
(482, 'default', 'created', 36, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-08\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"1\",\"cut_leave\":\"1\"}}', '2019-11-24 19:17:54', '2019-11-24 19:17:54'),
(483, 'default', 'created', 2, 'App\\Models\\Assessment', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"4\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2019-11-24 19:18:20', '2019-11-24 19:18:20'),
(484, 'default', 'created', 4, 'App\\Models\\Employee', 1, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170042019\",\"skpd_id\":\"17\",\"name\":\"Anastasha\",\"ktp\":\"1232123231231231\",\"npwp\":\"11232312312\",\"gender\":\"perempuan\",\"address\":\"jl. dr wahidin komp. sepakat asri D7\",\"religion\":\"protestan\",\"phone_number\":\"08115741200\",\"bank_name\":\"kalbar\",\"account_number\":\"1232133\",\"bpjs_healthcare\":\"12323123\",\"bpjs_social_security\":\"12332123\"}}', '2019-11-24 19:20:13', '2019-11-24 19:20:13'),
(485, 'default', 'created', 3, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-24 19:21:41', '2019-11-24 19:21:41'),
(486, 'default', 'created', 7, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"3\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2019-11-24 19:21:41', '2019-11-24 19:21:41'),
(487, 'default', 'updated', 3, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"non_active\",\"occupation_id\":\"57\"},\"old\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-24 19:22:11', '2019-11-24 19:22:11'),
(488, 'default', 'updated', 3, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"active\",\"occupation_id\":\"57\"},\"old\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"non_active\",\"occupation_id\":\"57\"}}', '2019-11-24 19:22:11', '2019-11-24 19:22:11'),
(489, 'default', 'created', 8, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"3\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2019-11-24 19:22:11', '2019-11-24 19:22:11'),
(490, 'default', 'created', 9, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"3\",\"salary_component_id\":\"3\",\"nominal\":\"100000\"}}', '2019-11-24 19:22:11', '2019-11-24 19:22:11'),
(491, 'default', 'created', 37, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-01\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:22:56', '2019-11-24 19:22:56'),
(492, 'default', 'updated', 1, 'App\\Models\\WorkDay', 1, 'App\\Models\\User', '{\"attributes\":{\"year\":\"2019\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"20\",\"december\":\"20\"},\"old\":{\"year\":\"2019\",\"january\":\"25\",\"february\":\"25\",\"march\":\"25\",\"april\":\"25\",\"may\":\"25\",\"june\":\"25\",\"july\":\"25\",\"august\":\"25\",\"september\":\"25\",\"october\":\"25\",\"november\":\"25\",\"december\":\"25\"}}', '2019-11-24 19:23:44', '2019-11-24 19:23:44'),
(493, 'default', 'created', 38, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-04\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:15', '2019-11-24 19:24:15'),
(494, 'default', 'created', 39, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-05\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:20', '2019-11-24 19:24:20'),
(495, 'default', 'created', 40, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:25', '2019-11-24 19:24:25'),
(496, 'default', 'created', 41, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-07\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:32', '2019-11-24 19:24:32'),
(497, 'default', 'created', 42, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-08\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:37', '2019-11-24 19:24:37'),
(498, 'default', 'created', 44, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-11\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:49', '2019-11-24 19:24:49'),
(499, 'default', 'created', 43, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-11\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:49', '2019-11-24 19:24:49'),
(500, 'default', 'created', 45, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-12\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:56', '2019-11-24 19:24:56'),
(501, 'default', 'created', 46, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-12\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:24:56', '2019-11-24 19:24:56'),
(502, 'default', 'created', 47, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:02', '2019-11-24 19:25:02'),
(503, 'default', 'created', 48, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:02', '2019-11-24 19:25:02'),
(504, 'default', 'created', 49, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:10', '2019-11-24 19:25:10'),
(505, 'default', 'created', 50, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:10', '2019-11-24 19:25:10'),
(506, 'default', 'created', 51, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:16', '2019-11-24 19:25:16'),
(507, 'default', 'created', 52, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:16', '2019-11-24 19:25:16'),
(508, 'default', 'created', 53, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-18\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:50', '2019-11-24 19:25:50'),
(509, 'default', 'created', 54, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-18\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:25:50', '2019-11-24 19:25:50'),
(510, 'default', 'created', 55, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-19\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:01', '2019-11-24 19:26:01'),
(511, 'default', 'created', 56, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-19\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:01', '2019-11-24 19:26:01'),
(512, 'default', 'created', 57, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:08', '2019-11-24 19:26:08'),
(513, 'default', 'created', 58, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:08', '2019-11-24 19:26:08'),
(514, 'default', 'created', 59, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:12', '2019-11-24 19:26:12'),
(515, 'default', 'created', 60, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:12', '2019-11-24 19:26:12'),
(516, 'default', 'created', 61, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:18', '2019-11-24 19:26:18'),
(517, 'default', 'created', 62, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:18', '2019-11-24 19:26:18'),
(518, 'default', 'created', 63, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:27', '2019-11-24 19:26:27'),
(519, 'default', 'created', 64, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:27', '2019-11-24 19:26:27'),
(520, 'default', 'created', 65, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:39', '2019-11-24 19:26:39'),
(521, 'default', 'created', 66, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:39', '2019-11-24 19:26:39'),
(522, 'default', 'created', 67, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:43', '2019-11-24 19:26:43'),
(523, 'default', 'created', 68, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:43', '2019-11-24 19:26:43'),
(524, 'default', 'created', 69, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:47', '2019-11-24 19:26:47'),
(525, 'default', 'created', 70, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:47', '2019-11-24 19:26:47'),
(526, 'default', 'created', 71, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"date\":\"2019-11-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:52', '2019-11-24 19:26:52'),
(527, 'default', 'created', 72, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"date\":\"2019-11-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-24 19:26:52', '2019-11-24 19:26:52'),
(528, 'default', 'created', 3, 'App\\Models\\Assessment', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"3\"}}', '2019-11-24 19:27:15', '2019-11-24 19:27:15'),
(529, 'default', 'updated', 1, 'App\\Models\\WorkDay', 1, 'App\\Models\\User', '{\"attributes\":{\"year\":\"2019\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"21\",\"december\":\"20\"},\"old\":{\"year\":\"2019\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"20\",\"december\":\"20\"}}', '2019-11-24 19:28:47', '2019-11-24 19:28:47'),
(530, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-24 19:30:01', '2019-11-24 19:30:01'),
(531, 'default', 'created', 1, 'App\\Models\\Payroll', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"attend\":\"26\",\"sick\":\"0\",\"leave\":\"0\",\"not_present\":\"2\",\"gross_salary\":\"6850000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"137000\",\"deduction_bpjs_social_security\":\"137000\",\"net_salary\":\"6576000\"}}', '2019-11-24 19:30:16', '2019-11-24 19:30:16'),
(532, 'default', 'created', 59, 'App\\Models\\Functionary', 1, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"200009012002121006\",\"name\":\"Sri Wulani Rezeki Elida, S.Si, MA, M.S.E\",\"phone_number\":\"1233213\",\"address\":\"jl. dr wahidin komp. sepakat asri D7\"}}', '2019-11-24 19:32:01', '2019-11-24 19:32:01'),
(533, 'default', 'created', 59, 'App\\Models\\Occupation', 1, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"59\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pptk\",\"status\":\"active\"}}', '2019-11-24 19:33:21', '2019-11-24 19:33:21'),
(534, 'default', 'created', 1, 'App\\Models\\WorkInspection', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"59\",\"contract_id\":\"3\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-24 19:34:31', '2019-11-24 19:34:31'),
(535, 'default', 'created', 1, 'App\\Models\\WorkHandover', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"3\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-24 19:54:40', '2019-11-24 19:54:40'),
(536, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-25 02:13:02', '2019-11-25 02:13:02'),
(537, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-25 06:03:36', '2019-11-25 06:03:36'),
(538, 'default', 'created', 2, 'App\\Models\\Payroll', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"4\",\"contract_id\":\"3\",\"work_package_id\":\"58\",\"attend\":\"21\",\"sick\":\"0\",\"leave\":\"0\",\"not_present\":\"0\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"}}', '2019-11-25 06:03:47', '2019-11-25 06:03:47'),
(539, 'default', 'created', 3, 'App\\Models\\Payroll', 1, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"3\",\"contract_id\":\"2\",\"work_package_id\":\"58\",\"attend\":\"18\",\"sick\":\"0\",\"leave\":\"4\",\"not_present\":\"1\",\"gross_salary\":\"3250000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"65000\",\"deduction_bpjs_social_security\":\"65000\",\"net_salary\":\"3120000\"}}', '2019-11-25 06:03:48', '2019-11-25 06:03:48'),
(540, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-25 07:03:22', '2019-11-25 07:03:22'),
(541, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 07:16:29', '2019-11-27 07:16:29'),
(542, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 07:54:14', '2019-11-27 07:54:14'),
(543, 'login', 'login', 2, 'App\\Models\\User', 2, 'App\\Models\\User', '[]', '2019-11-27 08:53:32', '2019-11-27 08:53:32'),
(544, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 19:25:58', '2019-11-27 19:25:58'),
(545, 'login', 'login', 2, 'App\\Models\\User', 2, 'App\\Models\\User', '[]', '2019-11-27 20:11:48', '2019-11-27 20:11:48'),
(546, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 22:02:16', '2019-11-27 22:02:16'),
(547, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-11-27 22:02:59', '2019-11-27 22:02:59'),
(548, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 22:04:30', '2019-11-27 22:04:30'),
(549, 'default', 'created', 60, 'App\\Models\\Functionary', 1, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"198303082010011003\",\"name\":\"Dovvi\",\"phone_number\":\"08115885523\",\"address\":\"Jl. Waru Gg. Beringin Pontianak Selatan\"}}', '2019-11-27 22:05:12', '2019-11-27 22:05:12'),
(550, 'default', 'created', 60, 'App\\Models\\Occupation', 6, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"60\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pphp\",\"status\":\"active\"}}', '2019-11-27 22:05:53', '2019-11-27 22:05:53');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(551, 'default', 'created', 5, 'App\\Models\\Employee', 6, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170052019\",\"skpd_id\":\"17\",\"name\":\"Joko Subianto\",\"ktp\":\"11441202291221\",\"npwp\":\"2442303923932\",\"gender\":\"laki-laki\",\"address\":\"Jl. Uray Bawadi Gg. Semangka No.3 pontianak Barat\",\"religion\":\"islam\",\"phone_number\":\"08114442324\",\"bank_name\":\"kalbar\",\"account_number\":\"221123321\",\"bpjs_healthcare\":\"1441232155\",\"bpjs_social_security\":\"1233214521\"}}', '2019-11-27 22:10:26', '2019-11-27 22:10:26'),
(552, 'default', 'created', 4, 'App\\Models\\Contract', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.005\\/SPK\\/PET\\/1\\/2019\",\"employee_id\":\"5\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2019-01-01\",\"end_date\":\"2019-12-31\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-27 22:15:01', '2019-11-27 22:15:01'),
(553, 'default', 'created', 10, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"4\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2019-11-27 22:15:01', '2019-11-27 22:15:01'),
(554, 'default', 'created', 11, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"4\",\"salary_component_id\":\"3\",\"nominal\":\"100000\"}}', '2019-11-27 22:15:01', '2019-11-27 22:15:01'),
(555, 'default', 'created', 12, 'App\\Models\\Salary', 1, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"4\",\"salary_component_id\":\"4\",\"nominal\":\"50000\"}}', '2019-11-27 22:15:01', '2019-11-27 22:15:01'),
(556, 'default', 'created', 73, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:15:20', '2019-11-27 22:15:20'),
(557, 'default', 'created', 74, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-01\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:36', '2019-11-27 22:16:36'),
(558, 'default', 'created', 75, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-04\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:41', '2019-11-27 22:16:41'),
(559, 'default', 'created', 76, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-05\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:44', '2019-11-27 22:16:44'),
(560, 'default', 'created', 77, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:48', '2019-11-27 22:16:48'),
(561, 'default', 'created', 78, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-07\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:51', '2019-11-27 22:16:51'),
(562, 'default', 'created', 79, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-08\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:54', '2019-11-27 22:16:54'),
(563, 'default', 'created', 80, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-11\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:16:58', '2019-11-27 22:16:58'),
(564, 'default', 'created', 81, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-12\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:01', '2019-11-27 22:17:01'),
(565, 'default', 'created', 82, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:04', '2019-11-27 22:17:04'),
(566, 'default', 'created', 83, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:07', '2019-11-27 22:17:07'),
(567, 'default', 'created', 84, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:12', '2019-11-27 22:17:12'),
(568, 'default', 'created', 85, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-18\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:15', '2019-11-27 22:17:15'),
(569, 'default', 'created', 86, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-19\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:18', '2019-11-27 22:17:18'),
(570, 'default', 'created', 87, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:22', '2019-11-27 22:17:22'),
(571, 'default', 'created', 88, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:25', '2019-11-27 22:17:25'),
(572, 'default', 'created', 89, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:28', '2019-11-27 22:17:28'),
(573, 'default', 'created', 90, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:34', '2019-11-27 22:17:34'),
(574, 'default', 'created', 91, 'App\\Models\\Attendance', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-27 22:17:38', '2019-11-27 22:17:38'),
(575, 'default', 'updated', 1, 'App\\Models\\WorkInspection', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"59\",\"contract_id\":\"3\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"},\"old\":{\"employee_id\":\"4\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"59\",\"contract_id\":\"3\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-27 22:21:44', '2019-11-27 22:21:44'),
(576, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 22:22:16', '2019-11-27 22:22:16'),
(577, 'default', 'created', 2, 'App\\Models\\WorkInspection', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"59\",\"contract_id\":\"4\",\"number\":\"003.3.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-28\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-27 22:28:15', '2019-11-27 22:28:15'),
(578, 'default', 'created', 3, 'App\\Models\\WorkInspection', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"4\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"3\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-15\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-27 22:42:07', '2019-11-27 22:42:07'),
(579, 'default', 'created', 4, 'App\\Models\\WorkInspection', 1, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"2\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-21\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-11-27 22:43:19', '2019-11-27 22:43:19'),
(580, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-27 23:22:30', '2019-11-27 23:22:30'),
(581, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-11-27 23:56:33', '2019-11-27 23:56:33'),
(582, 'default', 'created', 5, 'App\\Models\\Contract', 6, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003.4\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"employee_id\":\"1\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-11-01\",\"status\":\"active\",\"occupation_id\":\"57\"}}', '2019-11-28 00:10:24', '2019-11-28 00:10:24'),
(583, 'default', 'created', 13, 'App\\Models\\Salary', 6, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"5\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2019-11-28 00:10:24', '2019-11-28 00:10:24'),
(584, 'default', 'created', 14, 'App\\Models\\Salary', 6, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"5\",\"salary_component_id\":\"4\",\"nominal\":\"500000\"}}', '2019-11-28 00:10:24', '2019-11-28 00:10:24'),
(585, 'default', 'created', 92, 'App\\Models\\Attendance', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-28 00:11:10', '2019-11-28 00:11:10'),
(586, 'default', 'created', 4, 'App\\Models\\Assessment', 6, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"4\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2019-11-28 00:11:35', '2019-11-28 00:11:35'),
(587, 'default', 'updated', 1, 'App\\Models\\WorkDay', 1, 'App\\Models\\User', '{\"attributes\":{\"year\":\"2019\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"20\",\"december\":\"20\"},\"old\":{\"year\":\"2019\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"21\",\"december\":\"20\"}}', '2019-11-28 00:12:06', '2019-11-28 00:12:06'),
(588, 'default', 'created', 4, 'App\\Models\\Payroll', 6, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"attend\":\"20\",\"sick\":\"0\",\"leave\":\"0\",\"not_present\":\"0\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"}}', '2019-11-28 00:12:20', '2019-11-28 00:12:20'),
(589, 'default', 'created', 6, 'App\\Models\\HistoryLeaveEmployee', 6, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-15\",\"end_date\":\"2019-11-15\",\"contract_id\":\"4\",\"employee_id\":\"5\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"[\\\"15-11-2019\\\"]\"}}', '2019-11-28 00:13:28', '2019-11-28 00:13:28'),
(590, 'default', 'updated', 84, 'App\\Models\\Attendance', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-15\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-28 00:13:28', '2019-11-28 00:13:28'),
(591, 'default', 'updated', 4, 'App\\Models\\Payroll', 6, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"attend\":\"19\",\"sick\":\"0\",\"leave\":\"1\",\"not_present\":\"0\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"},\"old\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"attend\":\"20\",\"sick\":\"0\",\"leave\":\"0\",\"not_present\":\"0\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"}}', '2019-11-28 00:13:40', '2019-11-28 00:13:40'),
(592, 'default', 'updated', 88, 'App\\Models\\Attendance', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-21\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2019-11-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2019-11-28 00:14:16', '2019-11-28 00:14:16'),
(593, 'default', 'created', 7, 'App\\Models\\HistoryLeaveEmployee', 6, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-21\",\"end_date\":\"2019-11-21\",\"contract_id\":\"4\",\"employee_id\":\"5\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2019-11-28 00:14:16', '2019-11-28 00:14:16'),
(594, 'default', 'updated', 4, 'App\\Models\\Payroll', 6, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"attend\":\"18\",\"sick\":\"0\",\"leave\":\"1\",\"not_present\":\"1\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"},\"old\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"attend\":\"19\",\"sick\":\"0\",\"leave\":\"1\",\"not_present\":\"0\",\"gross_salary\":\"3150000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"63000\",\"deduction_bpjs_social_security\":\"63000\",\"net_salary\":\"3024000\"}}', '2019-11-28 00:14:30', '2019-11-28 00:14:30'),
(595, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-29 22:11:26', '2019-11-29 22:11:26'),
(596, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-11-30 11:30:10', '2019-11-30 11:30:10'),
(597, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-11-30 17:45:53', '2019-11-30 17:45:53'),
(598, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 00:38:56', '2019-12-01 00:38:56'),
(599, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 01:44:08', '2019-12-01 01:44:08'),
(600, 'login', 'login', 5, 'App\\Models\\User', 5, 'App\\Models\\User', '[]', '2019-12-01 01:44:58', '2019-12-01 01:44:58'),
(601, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 01:45:18', '2019-12-01 01:45:18'),
(602, 'login', 'login', 5, 'App\\Models\\User', 5, 'App\\Models\\User', '[]', '2019-12-01 01:46:02', '2019-12-01 01:46:02'),
(603, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 01:47:40', '2019-12-01 01:47:40'),
(604, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 04:14:26', '2019-12-01 04:14:26'),
(605, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 05:21:03', '2019-12-01 05:21:03'),
(606, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 05:30:01', '2019-12-01 05:30:01'),
(607, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 05:40:29', '2019-12-01 05:40:29'),
(608, 'login', 'login', 5, 'App\\Models\\User', 5, 'App\\Models\\User', '[]', '2019-12-01 05:43:36', '2019-12-01 05:43:36'),
(609, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 06:17:39', '2019-12-01 06:17:39'),
(610, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2019-12-01 06:18:54', '2019-12-01 06:18:54'),
(611, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-01 08:13:08', '2019-12-01 08:13:08'),
(612, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2019-12-01 08:32:52', '2019-12-01 08:32:52'),
(613, 'default', 'created', 5, 'App\\Models\\Assessment', 8, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"1\",\"contract_id\":\"5\",\"work_package_id\":\"57\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"4\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2019-12-01 08:33:05', '2019-12-01 08:33:05'),
(614, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 08:52:24', '2019-12-01 08:52:24'),
(615, 'login', 'login', 6, 'App\\Models\\User', 6, 'App\\Models\\User', '[]', '2019-12-01 15:22:19', '2019-12-01 15:22:19'),
(616, 'default', 'created', 5, 'App\\Models\\WorkInspection', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"1\",\"number\":\"003.2.5\\/BAPK-PPHP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-12-01\",\"spk_date\":\"2019-12-01\",\"spk_number\":\"003.2.5\\/BASPK-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-12-01 15:26:17', '2019-12-01 15:26:17'),
(617, 'default', 'created', 2, 'App\\Models\\WorkHandover', 6, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"3\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"2\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-12-01\",\"section_1\":\"section1\",\"section_2\":\"<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2019-12-01 15:46:10', '2019-12-01 15:46:10'),
(618, 'login', 'login', 5, 'App\\Models\\User', 5, 'App\\Models\\User', '[]', '2019-12-01 17:03:45', '2019-12-01 17:03:45'),
(619, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-03 18:30:39', '2019-12-03 18:30:39'),
(620, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-03 19:09:37', '2019-12-03 19:09:37'),
(621, 'default', 'updated', 3, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003\",\"name\":\"Inspektorat Daerah Kota Pontianak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null},\"old\":{\"number\":\"003\",\"name\":\"Inspektorat Daerah KotaPontianak\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-12-03 20:33:11', '2019-12-03 20:33:11'),
(622, 'default', 'updated', 10, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"010\",\"name\":\"Dinas Kepemudaan, Olahraga dan Pariwisata\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null},\"old\":{\"number\":\"010\",\"name\":\"Dinas Kepemudaan, Olahragadan Pariwisata\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-12-03 20:33:48', '2019-12-03 20:33:48'),
(623, 'default', 'created', 29, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"029\",\"name\":\"Badan Penanggulangan Bencana Daerah\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-12-03 20:34:37', '2019-12-03 20:34:37'),
(624, 'default', 'created', 30, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"039\",\"name\":\"Kantor Kesatuan Bangsa, Sosial, dan Politik\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-12-03 20:34:53', '2019-12-03 20:34:53'),
(625, 'default', 'updated', 30, 'App\\Models\\Skpd', 1, 'App\\Models\\User', '{\"attributes\":{\"number\":\"039\",\"name\":\"Kantor Kesatuan Bangsa, Sosial dan Politik\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null},\"old\":{\"number\":\"039\",\"name\":\"Kantor Kesatuan Bangsa, Sosial, dan Politik\",\"address\":null,\"phone_number\":null,\"fax\":null,\"post_code\":null,\"website\":null,\"email\":null}}', '2019-12-03 20:35:08', '2019-12-03 20:35:08'),
(626, 'login', 'login', 9, 'App\\Models\\User', 9, 'App\\Models\\User', '[]', '2019-12-03 20:39:24', '2019-12-03 20:39:24'),
(627, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2019-12-06 20:16:46', '2019-12-06 20:16:46'),
(628, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2020-01-13 19:24:36', '2020-01-13 19:24:36'),
(629, 'login', 'login', 38, 'App\\Models\\User', 38, 'App\\Models\\User', '[]', '2020-01-13 19:25:33', '2020-01-13 19:25:33'),
(630, 'login', 'login', 9, 'App\\Models\\User', 9, 'App\\Models\\User', '[]', '2020-01-14 19:11:50', '2020-01-14 19:11:50'),
(631, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2020-01-14 21:11:47', '2020-01-14 21:11:47'),
(632, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-14 21:13:27', '2020-01-14 21:13:27'),
(633, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-15 01:20:22', '2020-01-15 01:20:22'),
(634, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-15 17:47:48', '2020-01-15 17:47:48'),
(635, 'default', 'created', 6, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170012020\",\"skpd_id\":\"17\",\"name\":\"Nur Agus Pratiwi\",\"ktp\":\"6171016408940007\",\"npwp\":\"123\",\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116\",\"religion\":\"islam\",\"phone_number\":\"085654576564\",\"bank_name\":\"kalbar\",\"account_number\":\"123\",\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-01-15 20:48:21', '2020-01-15 20:48:21'),
(636, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-16 00:11:03', '2020-01-16 00:11:03'),
(637, 'default', 'created', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-01-16 00:27:09', '2020-01-16 00:27:09'),
(638, 'default', 'created', 15, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-01-16 00:27:09', '2020-01-16 00:27:09'),
(639, 'default', 'created', 16, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"3\",\"nominal\":\"200000\"}}', '2020-01-16 00:27:09', '2020-01-16 00:27:09'),
(640, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-16 00:37:39', '2020-01-16 00:37:39'),
(641, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-16 00:41:13', '2020-01-16 00:41:13'),
(642, 'default', 'updated', 1, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-01-16 00:42:11', '2020-01-16 00:42:11'),
(643, 'default', 'updated', 1, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-01-16 00:42:11', '2020-01-16 00:42:11'),
(644, 'default', 'created', 17, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-01-16 00:42:11', '2020-01-16 00:42:11'),
(645, 'default', 'created', 18, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"3\",\"nominal\":\"250000\"}}', '2020-01-16 00:42:11', '2020-01-16 00:42:11'),
(646, 'default', 'created', 19, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"4\",\"nominal\":\"100000\"}}', '2020-01-16 00:42:11', '2020-01-16 00:42:11'),
(647, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-16 07:23:41', '2020-01-16 07:23:41'),
(648, 'default', 'created', 8, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-14\",\"end_date\":\"2020-01-15\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"2\",\"dates\":\"[\\\"14-01-2020\\\",\\\"15-01-2020\\\"]\"}}', '2020-01-16 07:28:43', '2020-01-16 07:28:43'),
(649, 'default', 'created', 93, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2020-01-14\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-16 07:28:43', '2020-01-16 07:28:43'),
(650, 'default', 'created', 94, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2020-01-15\",\"attendance\":\"leave\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-16 07:28:43', '2020-01-16 07:28:43'),
(651, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-01-16 07:35:27', '2020-01-16 07:35:27'),
(652, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-01-16 07:35:27', '2020-01-16 07:35:27'),
(653, 'default', 'created', 20, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-01-16 07:35:27', '2020-01-16 07:35:27'),
(654, 'default', 'created', 21, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"3\",\"nominal\":\"200000\"}}', '2020-01-16 07:35:27', '2020-01-16 07:35:27'),
(655, 'default', 'created', 6, 'App\\Models\\Assessment', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"12\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"3\",\"obidence_on_rule\":\"4\"}}', '2020-01-16 07:37:15', '2020-01-16 07:37:15'),
(656, 'default', 'updated', 6, 'App\\Models\\Assessment', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"12\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"},\"old\":{\"month\":\"12\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"3\",\"obidence_on_rule\":\"4\"}}', '2020-01-16 07:37:30', '2020-01-16 07:37:30'),
(657, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-16 17:26:42', '2020-01-16 17:26:42'),
(658, 'default', 'created', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:27:24', '2020-01-16 17:27:24'),
(659, 'default', 'updated', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:27:32', '2020-01-16 17:27:32'),
(660, 'default', 'updated', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:27:35', '2020-01-16 17:27:35'),
(661, 'default', 'updated', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:27:41', '2020-01-16 17:27:41'),
(662, 'default', 'created', 9, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-17\",\"end_date\":\"2020-01-17\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-16 17:27:41', '2020-01-16 17:27:41'),
(663, 'default', 'updated', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:27:47', '2020-01-16 17:27:47'),
(664, 'default', 'deleted', 9, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-17\",\"end_date\":\"2020-01-17\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-16 17:27:47', '2020-01-16 17:27:47'),
(665, 'default', 'updated', 95, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:28:16', '2020-01-16 17:28:16'),
(666, 'default', 'created', 10, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-17\",\"end_date\":\"2020-01-17\",\"contract_id\":\"1\",\"employee_id\":\"2\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-16 17:28:16', '2020-01-16 17:28:16'),
(667, 'default', 'created', 7, 'App\\Models\\Assessment', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"57\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"4\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-01-16 17:28:31', '2020-01-16 17:28:31');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(668, 'default', 'updated', 1, 'App\\Models\\PaymentLetter', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"1\",\"number\":\"003.5.e\\/BAPEMP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"section1\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2019\"},\"old\":{\"employee_id\":\"2\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"1\",\"number\":\"003.5.e\\/BAPEMP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-01\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2019\"}}', '2020-01-16 17:29:33', '2020-01-16 17:29:33'),
(669, 'default', 'created', 96, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"5\",\"contract_id\":\"4\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:33:21', '2020-01-16 17:33:21'),
(670, 'default', 'created', 97, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"1\",\"contract_id\":\"5\",\"work_package_id\":\"57\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-16 17:34:15', '2020-01-16 17:34:15'),
(671, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 17:44:11', '2020-01-19 17:44:11'),
(672, 'default', 'created', 98, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-02\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:03', '2020-01-19 17:50:03'),
(673, 'default', 'created', 99, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:08', '2020-01-19 17:50:08'),
(674, 'default', 'created', 100, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-04\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:13', '2020-01-19 17:50:13'),
(675, 'default', 'created', 101, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-05\",\"attendance\":\"attend\",\"from\":\"07:10\",\"to\":\"15:35\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:35', '2020-01-19 17:50:35'),
(676, 'default', 'created', 102, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:40', '2020-01-19 17:50:40'),
(677, 'default', 'created', 103, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-09\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:47', '2020-01-19 17:50:47'),
(678, 'default', 'created', 104, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-10\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:52', '2020-01-19 17:50:52'),
(679, 'default', 'created', 105, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-11\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:50:57', '2020-01-19 17:50:57'),
(680, 'default', 'created', 106, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-12\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:51:05', '2020-01-19 17:51:05'),
(681, 'default', 'created', 107, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:51:10', '2020-01-19 17:51:10'),
(682, 'default', 'created', 108, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-16\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:51:23', '2020-01-19 17:51:23'),
(683, 'default', 'created', 109, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:52:03', '2020-01-19 17:52:03'),
(684, 'default', 'created', 110, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-18\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:52:09', '2020-01-19 17:52:09'),
(685, 'default', 'created', 111, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-19\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:52:33', '2020-01-19 17:52:33'),
(686, 'default', 'created', 112, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:52:38', '2020-01-19 17:52:38'),
(687, 'default', 'created', 113, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-23\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:12', '2020-01-19 17:53:12'),
(688, 'default', 'created', 114, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-24\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:17', '2020-01-19 17:53:17'),
(689, 'default', 'created', 115, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:23', '2020-01-19 17:53:23'),
(690, 'default', 'created', 116, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:28', '2020-01-19 17:53:28'),
(691, 'default', 'created', 117, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:38', '2020-01-19 17:53:38'),
(692, 'default', 'created', 118, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-30\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:44', '2020-01-19 17:53:44'),
(693, 'default', 'created', 119, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-12-31\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:53:53', '2020-01-19 17:53:53'),
(694, 'default', 'created', 5, 'App\\Models\\Payroll', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"12\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"attend\":\"22\",\"sick\":\"0\",\"leave\":\"0\",\"not_present\":\"0\",\"gross_salary\":\"3200000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"64000\",\"deduction_bpjs_social_security\":\"64000\",\"net_salary\":\"3072000\"}}', '2020-01-19 17:54:24', '2020-01-19 17:54:24'),
(695, 'default', 'created', 120, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-01\",\"attendance\":\"sick\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:55:43', '2020-01-19 17:55:43'),
(696, 'default', 'created', 11, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-01\",\"end_date\":\"2019-11-01\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:55:43', '2020-01-19 17:55:43'),
(697, 'default', 'created', 121, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-04\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:56:13', '2020-01-19 17:56:13'),
(698, 'default', 'created', 12, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-04\",\"end_date\":\"2019-11-04\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:56:13', '2020-01-19 17:56:13'),
(699, 'default', 'created', 122, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-05\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:56:34', '2020-01-19 17:56:34'),
(700, 'default', 'created', 13, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-05\",\"end_date\":\"2019-11-05\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:56:34', '2020-01-19 17:56:34'),
(701, 'default', 'created', 123, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-06\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:56:41', '2020-01-19 17:56:41'),
(702, 'default', 'created', 14, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-06\",\"end_date\":\"2019-11-06\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:56:41', '2020-01-19 17:56:41'),
(703, 'default', 'created', 124, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-07\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:56:48', '2020-01-19 17:56:48'),
(704, 'default', 'created', 15, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-07\",\"end_date\":\"2019-11-07\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:56:48', '2020-01-19 17:56:48'),
(705, 'default', 'created', 125, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-08\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:56:55', '2020-01-19 17:56:55'),
(706, 'default', 'created', 16, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-08\",\"end_date\":\"2019-11-08\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:56:55', '2020-01-19 17:56:55'),
(707, 'default', 'created', 126, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-11\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:02', '2020-01-19 17:57:02'),
(708, 'default', 'created', 17, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-11\",\"end_date\":\"2019-11-11\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:57:02', '2020-01-19 17:57:02'),
(709, 'default', 'created', 127, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-12\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:08', '2020-01-19 17:57:08'),
(710, 'default', 'created', 18, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-12\",\"end_date\":\"2019-11-12\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:57:08', '2020-01-19 17:57:08'),
(711, 'default', 'created', 128, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-13\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:16', '2020-01-19 17:57:16'),
(712, 'default', 'created', 19, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-13\",\"end_date\":\"2019-11-13\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:57:16', '2020-01-19 17:57:16'),
(713, 'default', 'created', 129, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-14\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:23', '2020-01-19 17:57:23'),
(714, 'default', 'created', 20, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-14\",\"end_date\":\"2019-11-14\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-01-19 17:57:23', '2020-01-19 17:57:23'),
(715, 'default', 'created', 130, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-15\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:31', '2020-01-19 17:57:31'),
(716, 'default', 'created', 131, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-18\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:43', '2020-01-19 17:57:43'),
(717, 'default', 'created', 132, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-19\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:57:50', '2020-01-19 17:57:50'),
(718, 'default', 'created', 133, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:57:57', '2020-01-19 17:57:57'),
(719, 'default', 'created', 134, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-21\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-01-19 17:58:06', '2020-01-19 17:58:06'),
(720, 'default', 'created', 135, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:12', '2020-01-19 17:58:12'),
(721, 'default', 'created', 136, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:18', '2020-01-19 17:58:18'),
(722, 'default', 'created', 137, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-26\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:24', '2020-01-19 17:58:24'),
(723, 'default', 'created', 138, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:30', '2020-01-19 17:58:30'),
(724, 'default', 'created', 139, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:36', '2020-01-19 17:58:36'),
(725, 'default', 'created', 140, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"date\":\"2019-11-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-01-19 17:58:41', '2020-01-19 17:58:41'),
(726, 'default', 'created', 8, 'App\\Models\\Assessment', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"work_completion_rate\":\"4\",\"work_completion_time\":\"4\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-01-19 17:59:16', '2020-01-19 17:59:16'),
(727, 'default', 'created', 6, 'App\\Models\\Payroll', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"11\",\"year\":\"2019\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"58\",\"attend\":\"7\",\"sick\":\"1\",\"leave\":\"0\",\"not_present\":\"13\",\"gross_salary\":\"3200000\",\"deduction_attendance\":\"0\",\"deduction_bpjs_healthcare\":\"64000\",\"deduction_bpjs_social_security\":\"64000\",\"net_salary\":\"3072000\"}}', '2020-01-19 17:59:35', '2020-01-19 17:59:35'),
(728, 'default', 'created', 6, 'App\\Models\\WorkInspection', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"6\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2020-01-01\",\"spk_date\":\"2019-01-14\",\"spk_number\":\"3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-01-19 18:03:07', '2020-01-19 18:03:07'),
(729, 'default', 'created', 3, 'App\\Models\\WorkHandover', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"6\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-12-01\",\"section_1\":\"section1\",\"section_2\":\"<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-01-19 18:14:47', '2020-01-19 18:14:47'),
(730, 'default', 'created', 1, 'App\\Models\\WorkAdministration', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"60\",\"contract_id\":\"6\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-20\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Satu<\\/strong> Bulan <strong>Februari<\\/strong> tahun <strong>Dua Ribu Sembilan Belas<\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 3.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-01-19 18:18:09', '2020-01-19 18:18:09'),
(731, 'default', 'created', 1, 'App\\Models\\WorkHandoverPpkom', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary2_id\":\"58\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"number\":\"003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-11-30\",\"section_2\":\"<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 03.2.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t\\t<li>SPK Nomor 03.3.5\\/SPK\\/Pontive\\/PET\\/DISKOMINFO\\/I\\/2019 tanggal 14 Januari 2019<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-01-19 18:20:28', '2020-01-19 18:20:28'),
(732, 'default', 'created', 2, 'App\\Models\\PaymentLetter', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"6\",\"number\":\"003.5.e\\/BAPEMP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019\",\"date\":\"2019-12-01\",\"section_1\":\"section1\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e\\/BAHPP\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e\\/BASTP-PPK\\/Pontive\\/PET\\/DISKOMINFO\\/II\\/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2019\"}}', '2020-01-19 18:23:08', '2020-01-19 18:23:08'),
(733, 'login', 'login', 9, 'App\\Models\\User', 9, 'App\\Models\\User', '[]', '2020-01-19 18:40:16', '2020-01-19 18:40:16'),
(734, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 18:43:37', '2020-01-19 18:43:37'),
(735, 'login', 'login', 10, 'App\\Models\\User', 10, 'App\\Models\\User', '[]', '2020-01-19 18:45:13', '2020-01-19 18:45:13'),
(736, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 18:45:52', '2020-01-19 18:45:52'),
(737, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-01-19 18:49:24', '2020-01-19 18:49:24'),
(738, 'default', 'created', 22, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-01-19 18:49:24', '2020-01-19 18:49:24'),
(739, 'default', 'created', 23, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"3\",\"nominal\":\"200000\"}}', '2020-01-19 18:49:24', '2020-01-19 18:49:24'),
(740, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-01-19 18:49:45', '2020-01-19 18:49:45'),
(741, 'default', 'created', 24, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-01-19 18:49:45', '2020-01-19 18:49:45'),
(742, 'default', 'created', 25, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"3\",\"nominal\":\"200000\"}}', '2020-01-19 18:49:45', '2020-01-19 18:49:45'),
(743, 'login', 'login', 11, 'App\\Models\\User', 11, 'App\\Models\\User', '[]', '2020-01-19 18:50:35', '2020-01-19 18:50:35'),
(744, 'login', 'login', 12, 'App\\Models\\User', 12, 'App\\Models\\User', '[]', '2020-01-19 18:51:19', '2020-01-19 18:51:19'),
(745, 'login', 'login', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '[]', '2020-01-19 18:51:44', '2020-01-19 18:51:44'),
(746, 'login', 'login', 14, 'App\\Models\\User', 14, 'App\\Models\\User', '[]', '2020-01-19 18:53:30', '2020-01-19 18:53:30'),
(747, 'login', 'login', 15, 'App\\Models\\User', 15, 'App\\Models\\User', '[]', '2020-01-19 18:54:21', '2020-01-19 18:54:21'),
(748, 'login', 'login', 37, 'App\\Models\\User', 37, 'App\\Models\\User', '[]', '2020-01-19 18:54:52', '2020-01-19 18:54:52'),
(749, 'login', 'login', 16, 'App\\Models\\User', 16, 'App\\Models\\User', '[]', '2020-01-19 18:55:10', '2020-01-19 18:55:10'),
(750, 'login', 'login', 17, 'App\\Models\\User', 17, 'App\\Models\\User', '[]', '2020-01-19 18:55:32', '2020-01-19 18:55:32'),
(751, 'login', 'login', 18, 'App\\Models\\User', 18, 'App\\Models\\User', '[]', '2020-01-19 18:55:53', '2020-01-19 18:55:53'),
(752, 'login', 'login', 19, 'App\\Models\\User', 19, 'App\\Models\\User', '[]', '2020-01-19 18:56:15', '2020-01-19 18:56:15'),
(753, 'login', 'login', 20, 'App\\Models\\User', 20, 'App\\Models\\User', '[]', '2020-01-19 18:56:38', '2020-01-19 18:56:38'),
(754, 'login', 'login', 21, 'App\\Models\\User', 21, 'App\\Models\\User', '[]', '2020-01-19 18:57:05', '2020-01-19 18:57:05'),
(755, 'login', 'login', 22, 'App\\Models\\User', 22, 'App\\Models\\User', '[]', '2020-01-19 18:57:26', '2020-01-19 18:57:26'),
(756, 'login', 'login', 23, 'App\\Models\\User', 23, 'App\\Models\\User', '[]', '2020-01-19 18:57:45', '2020-01-19 18:57:45'),
(757, 'login', 'login', 24, 'App\\Models\\User', 24, 'App\\Models\\User', '[]', '2020-01-19 18:58:12', '2020-01-19 18:58:12'),
(758, 'login', 'login', 24, 'App\\Models\\User', 24, 'App\\Models\\User', '[]', '2020-01-19 19:00:00', '2020-01-19 19:00:00'),
(759, 'login', 'login', 25, 'App\\Models\\User', 25, 'App\\Models\\User', '[]', '2020-01-19 19:00:20', '2020-01-19 19:00:20'),
(760, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-19 19:00:41', '2020-01-19 19:00:41'),
(761, 'login', 'login', 27, 'App\\Models\\User', 27, 'App\\Models\\User', '[]', '2020-01-19 19:02:44', '2020-01-19 19:02:44'),
(762, 'login', 'login', 28, 'App\\Models\\User', 28, 'App\\Models\\User', '[]', '2020-01-19 19:03:10', '2020-01-19 19:03:10'),
(763, 'login', 'login', 29, 'App\\Models\\User', 29, 'App\\Models\\User', '[]', '2020-01-19 19:03:31', '2020-01-19 19:03:31'),
(764, 'login', 'login', 30, 'App\\Models\\User', 30, 'App\\Models\\User', '[]', '2020-01-19 19:04:14', '2020-01-19 19:04:14'),
(765, 'login', 'login', 30, 'App\\Models\\User', 30, 'App\\Models\\User', '[]', '2020-01-19 19:06:26', '2020-01-19 19:06:26'),
(766, 'login', 'login', 38, 'App\\Models\\User', 38, 'App\\Models\\User', '[]', '2020-01-19 19:06:47', '2020-01-19 19:06:47'),
(767, 'login', 'login', 31, 'App\\Models\\User', 31, 'App\\Models\\User', '[]', '2020-01-19 19:07:11', '2020-01-19 19:07:11'),
(768, 'login', 'login', 32, 'App\\Models\\User', 32, 'App\\Models\\User', '[]', '2020-01-19 19:07:31', '2020-01-19 19:07:31'),
(769, 'login', 'login', 33, 'App\\Models\\User', 33, 'App\\Models\\User', '[]', '2020-01-19 19:07:48', '2020-01-19 19:07:48'),
(770, 'login', 'login', 34, 'App\\Models\\User', 34, 'App\\Models\\User', '[]', '2020-01-19 19:08:10', '2020-01-19 19:08:10'),
(771, 'login', 'login', 35, 'App\\Models\\User', 35, 'App\\Models\\User', '[]', '2020-01-19 19:08:29', '2020-01-19 19:08:29'),
(772, 'login', 'login', 36, 'App\\Models\\User', 36, 'App\\Models\\User', '[]', '2020-01-19 19:08:50', '2020-01-19 19:08:50'),
(773, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 19:14:30', '2020-01-19 19:14:30'),
(774, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 19:32:26', '2020-01-19 19:32:26'),
(775, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 19:35:29', '2020-01-19 19:35:29'),
(776, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-19 19:43:56', '2020-01-19 19:43:56'),
(777, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-19 20:31:43', '2020-01-19 20:31:43'),
(778, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-30 18:49:41', '2020-01-30 18:49:41'),
(779, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-30 20:10:02', '2020-01-30 20:10:02'),
(780, 'default', 'created', 7, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170022020\",\"skpd_id\":\"17\",\"name\":\"Reta Harviani, A.Md\",\"ktp\":\"611295003940005\",\"npwp\":\"80.024.568.0704.000\",\"gender\":\"perempuan\",\"address\":\"Jl. Karya, Komp. Karya Indah I Blok B No.8, Rt\\/Rw 005\\/009, Kel. Pal Sembilan, Kec. Sungai kakap, kabupaten kubu Raya, Provinsi Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"081251334424\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019665\",\"bpjs_healthcare\":\"0000050947773\",\"bpjs_social_security\":\"17017008214\"}}', '2020-01-30 20:17:59', '2020-01-30 20:17:59'),
(781, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-30 20:20:45', '2020-01-30 20:20:45'),
(782, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-30 20:22:00', '2020-01-30 20:22:00'),
(783, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-30 20:25:02', '2020-01-30 20:25:02'),
(784, 'login', 'login', 10, 'App\\Models\\User', 10, 'App\\Models\\User', '[]', '2020-01-30 20:27:29', '2020-01-30 20:27:29'),
(785, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-30 20:29:18', '2020-01-30 20:29:18'),
(786, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-30 23:41:17', '2020-01-30 23:41:17'),
(787, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-01-30 23:48:22', '2020-01-30 23:48:22'),
(788, 'default', 'created', 31, 'App\\Models\\Program', 26, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.16\",\"name\":\"Program Penguasaan Serta Pengembangan Aplikasi dan Teknologi Informasi dan Komunikasi\",\"skpd_id\":\"17\"}}', '2020-01-31 00:55:35', '2020-01-31 00:55:35'),
(789, 'default', 'created', 31, 'App\\Models\\Activity', 26, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.16.1.005\",\"name\":\"Operasional Pontive Center\",\"program_id\":\"31\"}}', '2020-01-31 00:56:39', '2020-01-31 00:56:39'),
(790, 'default', 'updated', 31, 'App\\Models\\Activity', 26, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.16.2\",\"name\":\"Operasional Pontive Center Kota Pontianak\",\"program_id\":\"31\"},\"old\":{\"code\":\"2.10.2.10.01.00.16.1.005\",\"name\":\"Operasional Pontive Center\",\"program_id\":\"31\"}}', '2020-01-31 00:57:42', '2020-01-31 00:57:42'),
(791, 'default', 'updated', 31, 'App\\Models\\Activity', 26, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.16.1.005\",\"name\":\"Operasional Pontive Center Kota Pontianak\",\"program_id\":\"31\"},\"old\":{\"code\":\"2.10.2.10.01.00.16.2\",\"name\":\"Operasional Pontive Center Kota Pontianak\",\"program_id\":\"31\"}}', '2020-01-31 00:58:10', '2020-01-31 00:58:10'),
(792, 'default', 'created', 59, 'App\\Models\\WorkPackage', 26, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.16.1.005.1\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistik\",\"activity_id\":\"31\"}}', '2020-01-31 00:58:46', '2020-01-31 00:58:46'),
(793, 'default', 'updated', 59, 'App\\Models\\Functionary', 26, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"200009012002121006\",\"name\":\"Sri Wulani Rezeki Elida, S.Si, MA, M.S.E\",\"phone_number\":\"081345463645\",\"address\":\"Komp. Untan, Jl. Sekadau No. P. 76, Pontianak\"},\"old\":{\"nip\":\"200009012002121006\",\"name\":\"Sri Wulani Rezeki Elida, S.Si, MA, M.S.E\",\"phone_number\":\"1233213\",\"address\":\"jl. dr wahidin komp. sepakat asri D7\"}}', '2020-01-31 00:59:22', '2020-01-31 00:59:22'),
(794, 'default', 'updated', 59, 'App\\Models\\Functionary', 26, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"197905282005012008\",\"name\":\"Sri Wulani Rezeki Elida, S.Si, MA, M.S.E\",\"phone_number\":\"081345463645\",\"address\":\"Komp. Untan, Jl. Sekadau No. P. 76, Pontianak\"},\"old\":{\"nip\":\"200009012002121006\",\"name\":\"Sri Wulani Rezeki Elida, S.Si, MA, M.S.E\",\"phone_number\":\"081345463645\",\"address\":\"Komp. Untan, Jl. Sekadau No. P. 76, Pontianak\"}}', '2020-01-31 00:59:41', '2020-01-31 00:59:41'),
(795, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-01-31 01:07:42', '2020-01-31 01:07:42'),
(796, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 18:07:35', '2020-02-02 18:07:35'),
(797, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 18:13:46', '2020-02-02 18:13:46'),
(798, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 18:14:29', '2020-02-02 18:14:29'),
(799, 'default', 'created', 7, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"001.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"7\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 18:17:08', '2020-02-02 18:17:08'),
(800, 'default', 'created', 26, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"7\",\"salary_component_id\":\"1\",\"nominal\":\"2950000\"}}', '2020-02-02 18:17:08', '2020-02-02 18:17:08'),
(801, 'default', 'updated', 6, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-02-02 18:19:45', '2020-02-02 18:19:45'),
(802, 'default', 'updated', 6, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"017.002\\/SPK\\/KOMINFO\\/2019\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"6\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"200000\"}}', '2020-02-02 18:19:45', '2020-02-02 18:19:45'),
(803, 'default', 'created', 27, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-02 18:19:45', '2020-02-02 18:19:45'),
(804, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 21:18:16', '2020-02-02 21:18:16'),
(805, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 21:21:15', '2020-02-02 21:21:15'),
(806, 'default', 'updated', 2, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170022019\",\"skpd_id\":\"17\",\"name\":\"Miftah Rajunda, S.Kom\",\"ktp\":\"6171020706890001\",\"npwp\":\"87.767.401.9-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jl. Wonobaru Gg. Wonodadi 3 No. 8, Kelurahan Kota Baru, kecamatan Pontianak Selatan\",\"religion\":\"islam\",\"phone_number\":\"0895607061989\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020018\",\"bpjs_healthcare\":\"0002436418337\",\"bpjs_social_security\":\"18017251218\"},\"old\":{\"nipj\":\"0170022019\",\"skpd_id\":\"17\",\"name\":\"Miftah Rajunda, S.Kom\",\"ktp\":\"176119119442000\",\"npwp\":\"1331122331132\",\"gender\":\"laki-laki\",\"address\":\"Jl. Wonobaru Gg. Wonodadi III No.8 Pontianak\",\"religion\":\"islam\",\"phone_number\":\"08112213312\",\"bank_name\":\"kalbar\",\"account_number\":\"114413331812\",\"bpjs_healthcare\":\"133012\",\"bpjs_social_security\":\"103329\"}}', '2020-02-02 21:36:22', '2020-02-02 21:36:22');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(807, 'default', 'updated', 1, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-02-02 21:41:23', '2020-02-02 21:41:23'),
(808, 'default', 'updated', 1, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"017.001\\/SPK\\/DISKOMINFO\\/XI\\/2019\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"29\",\"activity_id\":\"29\",\"work_package_id\":\"57\",\"location_id\":\"85\",\"position_id\":\"41\",\"start_date\":\"2018-12-10\",\"end_date\":\"2019-12-10\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-02-02 21:41:23', '2020-02-02 21:41:23'),
(809, 'default', 'created', 28, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-02 21:41:23', '2020-02-02 21:41:23'),
(810, 'default', 'deleted', 20, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-14\",\"end_date\":\"2019-11-14\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 21:42:12', '2020-02-02 21:42:12'),
(811, 'default', 'updated', 6, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170012020\",\"skpd_id\":\"17\",\"name\":\"Nur Agus Pratiwi, ST\",\"ktp\":\"6171016408940007\",\"npwp\":\"93.892.042.8-701.000\",\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116\",\"religion\":\"islam\",\"phone_number\":\"085654576564\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020804\",\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170012020\",\"skpd_id\":\"17\",\"name\":\"Nur Agus Pratiwi\",\"ktp\":\"6171016408940007\",\"npwp\":\"123\",\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116\",\"religion\":\"islam\",\"phone_number\":\"085654576564\",\"bank_name\":\"kalbar\",\"account_number\":\"123\",\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-02 21:48:32', '2020-02-02 21:48:32'),
(812, 'default', 'created', 8, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170032020\",\"skpd_id\":\"17\",\"name\":\"Rama Kadri, A.Md\",\"ktp\":\"6103130803940002\",\"npwp\":\"81.584.524.3-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jl. Adi Sucipto GG. Abadi RT\\/RW 002\\/012, Desa Limbung, Kecamatan Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"085651973220\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019667\",\"bpjs_healthcare\":\"0002237799712\",\"bpjs_social_security\":null}}', '2020-02-02 21:53:50', '2020-02-02 21:53:50'),
(813, 'default', 'created', 8, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"8\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 21:55:55', '2020-02-02 21:55:55'),
(814, 'default', 'created', 29, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"8\",\"salary_component_id\":\"2\",\"nominal\":\"2950000\"}}', '2020-02-02 21:55:55', '2020-02-02 21:55:55'),
(815, 'default', 'updated', 3, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"017.003\\/SPK\\/DISKOMINFO\\/1\\/2019\",\"employee_id\":\"4\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2019-01-01\",\"end_date\":\"2020-01-01\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-02-02 21:57:32', '2020-02-02 21:57:32'),
(816, 'default', 'created', 30, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"3\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-02 21:57:32', '2020-02-02 21:57:32'),
(817, 'default', 'created', 31, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"3\",\"salary_component_id\":\"3\",\"nominal\":\"100000\"}}', '2020-02-02 21:57:32', '2020-02-02 21:57:32'),
(818, 'default', 'updated', 2, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017.002\\/SPK\\/DISKOMINFO\\/I\\/2019\",\"employee_id\":\"3\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"41\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-11-01\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"017.002\\/SPK\\/DISKOMINFO\\/I\\/2019\",\"employee_id\":\"3\",\"skpd_id\":\"17\",\"program_id\":\"30\",\"activity_id\":\"30\",\"work_package_id\":\"58\",\"location_id\":\"86\",\"position_id\":\"41\",\"start_date\":\"2019-11-01\",\"end_date\":\"2020-11-01\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-02-02 21:57:49', '2020-02-02 21:57:49'),
(819, 'default', 'created', 32, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"2\",\"salary_component_id\":\"1\",\"nominal\":\"3000000\"}}', '2020-02-02 21:57:49', '2020-02-02 21:57:49'),
(820, 'default', 'created', 33, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"2\",\"salary_component_id\":\"3\",\"nominal\":\"250000\"}}', '2020-02-02 21:57:49', '2020-02-02 21:57:49'),
(821, 'default', 'created', 9, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170042020\",\"skpd_id\":\"17\",\"name\":\"Febi Resiana, ST\",\"ktp\":\"6171015802910005\",\"npwp\":\"74.209.689.4-701.000\",\"gender\":\"perempuan\",\"address\":\"Jl. Parit H. Husin 2, Komp. Pemda Jalur 1 Nomor 85, Kel. bansir darat, Kec. Pontianak Tenggara, Pontianak, Kalbar\",\"religion\":\"islam\",\"phone_number\":\"085245756464\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019668\",\"bpjs_healthcare\":\"0000050505592\",\"bpjs_social_security\":\"17017008206\"}}', '2020-02-02 22:01:30', '2020-02-02 22:01:30'),
(822, 'default', 'updated', 8, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170032020\",\"skpd_id\":\"17\",\"name\":\"Rama Kadri, A.Md\",\"ktp\":\"6103130803940002\",\"npwp\":\"81.584.524.3-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jl. Adi Sucipto GG. Abadi RT\\/RW 002\\/012, Desa Limbung, Kecamatan Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"085651973220\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019667\",\"bpjs_healthcare\":\"0002237799712\",\"bpjs_social_security\":\"17017008230\"},\"old\":{\"nipj\":\"0170032020\",\"skpd_id\":\"17\",\"name\":\"Rama Kadri, A.Md\",\"ktp\":\"6103130803940002\",\"npwp\":\"81.584.524.3-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jl. Adi Sucipto GG. Abadi RT\\/RW 002\\/012, Desa Limbung, Kecamatan Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"085651973220\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019667\",\"bpjs_healthcare\":\"0002237799712\",\"bpjs_social_security\":null}}', '2020-02-02 22:01:56', '2020-02-02 22:01:56'),
(823, 'default', 'created', 10, 'App\\Models\\Employee', 26, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170052020\",\"skpd_id\":\"17\",\"name\":\"Laili Safitri, S.Kom\",\"ktp\":\"6171035404930005\",\"npwp\":\"81.564.660.9-701.000\",\"gender\":\"perempuan\",\"address\":\"Jl. Husein Hamzah Gg. Warna Sari No. 12, Kel. Pal Lima, Kec. Pontianak Barat, Kota Pontianak, Kalbar\",\"religion\":\"islam\",\"phone_number\":\"085225991989\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019666\",\"bpjs_healthcare\":\"0000050998206\",\"bpjs_social_security\":\"17017008222\"}}', '2020-02-02 22:04:28', '2020-02-02 22:04:28'),
(824, 'default', 'created', 9, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"9\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:06:22', '2020-02-02 22:06:22'),
(825, 'default', 'created', 34, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"9\",\"salary_component_id\":\"2\",\"nominal\":\"3050000\"}}', '2020-02-02 22:06:22', '2020-02-02 22:06:22'),
(826, 'default', 'created', 10, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"002.2\\/SPK\\/OPCKP-P.MM\\/PET.DKI\\/2020\",\"employee_id\":\"10\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:08:01', '2020-02-02 22:08:01'),
(827, 'default', 'created', 35, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"10\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-02 22:08:01', '2020-02-02 22:08:01'),
(828, 'default', 'updated', 9, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"9\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"9\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:08:32', '2020-02-02 22:08:32'),
(829, 'default', 'updated', 9, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"9\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"employee_id\":\"9\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:08:32', '2020-02-02 22:08:32'),
(830, 'default', 'created', 36, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"9\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-02 22:08:32', '2020-02-02 22:08:32'),
(831, 'default', 'updated', 8, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"8\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"8\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:08:47', '2020-02-02 22:08:47'),
(832, 'default', 'updated', 8, 'App\\Models\\Contract', 26, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"8\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"8\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-02 22:08:47', '2020-02-02 22:08:47'),
(833, 'default', 'created', 37, 'App\\Models\\Salary', 26, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"8\",\"salary_component_id\":\"1\",\"nominal\":\"2950000\"}}', '2020-02-02 22:08:47', '2020-02-02 22:08:47'),
(834, 'default', 'created', 141, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:10:19', '2020-02-02 22:10:19'),
(835, 'default', 'created', 142, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:11:38', '2020-02-02 22:11:38'),
(836, 'default', 'created', 143, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:11:38', '2020-02-02 22:11:38'),
(837, 'default', 'created', 144, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:11:39', '2020-02-02 22:11:39'),
(838, 'default', 'created', 145, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:11:40', '2020-02-02 22:11:40'),
(839, 'default', 'created', 146, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:11:40', '2020-02-02 22:11:40'),
(840, 'default', 'deleted', 19, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-13\",\"end_date\":\"2019-11-13\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:02', '2020-02-02 22:12:02'),
(841, 'default', 'deleted', 18, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-12\",\"end_date\":\"2019-11-12\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:07', '2020-02-02 22:12:07'),
(842, 'default', 'deleted', 17, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-11\",\"end_date\":\"2019-11-11\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:14', '2020-02-02 22:12:14'),
(843, 'default', 'deleted', 16, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-08\",\"end_date\":\"2019-11-08\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:18', '2020-02-02 22:12:18'),
(844, 'default', 'deleted', 15, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-07\",\"end_date\":\"2019-11-07\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:23', '2020-02-02 22:12:23'),
(845, 'default', 'deleted', 14, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-06\",\"end_date\":\"2019-11-06\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:27', '2020-02-02 22:12:27'),
(846, 'default', 'deleted', 13, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-05\",\"end_date\":\"2019-11-05\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:12:32', '2020-02-02 22:12:32'),
(847, 'default', 'deleted', 12, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-04\",\"end_date\":\"2019-11-04\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:13:09', '2020-02-02 22:13:09'),
(848, 'default', 'deleted', 11, 'App\\Models\\HistoryLeaveEmployee', 26, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2019-11-01\",\"end_date\":\"2019-11-01\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-02 22:13:13', '2020-02-02 22:13:13'),
(849, 'default', 'created', 147, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(850, 'default', 'created', 148, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(851, 'default', 'created', 149, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(852, 'default', 'created', 150, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(853, 'default', 'created', 151, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(854, 'default', 'created', 152, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:30', '2020-02-02 22:14:30'),
(855, 'default', 'created', 153, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(856, 'default', 'created', 154, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(857, 'default', 'created', 155, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(858, 'default', 'created', 156, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(859, 'default', 'created', 158, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(860, 'default', 'created', 157, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:14:38', '2020-02-02 22:14:38'),
(861, 'default', 'created', 159, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(862, 'default', 'created', 160, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(863, 'default', 'created', 161, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(864, 'default', 'created', 162, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(865, 'default', 'created', 163, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(866, 'default', 'created', 164, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:15:04', '2020-02-02 22:15:04'),
(867, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 22:16:11', '2020-02-02 22:16:11'),
(868, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 22:16:46', '2020-02-02 22:16:46'),
(869, 'default', 'created', 165, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:36', '2020-02-02 22:21:36'),
(870, 'default', 'created', 166, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:37', '2020-02-02 22:21:37'),
(871, 'default', 'created', 167, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:38', '2020-02-02 22:21:38'),
(872, 'default', 'created', 168, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:39', '2020-02-02 22:21:39'),
(873, 'default', 'created', 169, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:40', '2020-02-02 22:21:40'),
(874, 'default', 'created', 170, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:21:41', '2020-02-02 22:21:41'),
(875, 'default', 'created', 171, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:54', '2020-02-02 22:23:54'),
(876, 'default', 'created', 172, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:55', '2020-02-02 22:23:55'),
(877, 'default', 'created', 173, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:55', '2020-02-02 22:23:55'),
(878, 'default', 'created', 174, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:56', '2020-02-02 22:23:56'),
(879, 'default', 'created', 175, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:57', '2020-02-02 22:23:57'),
(880, 'default', 'created', 176, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:23:57', '2020-02-02 22:23:57'),
(881, 'default', 'created', 177, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:18', '2020-02-02 22:31:18'),
(882, 'default', 'created', 178, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:18', '2020-02-02 22:31:18'),
(883, 'default', 'created', 179, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:19', '2020-02-02 22:31:19'),
(884, 'default', 'created', 180, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:19', '2020-02-02 22:31:19'),
(885, 'default', 'created', 181, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:20', '2020-02-02 22:31:20'),
(886, 'default', 'created', 182, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:31:21', '2020-02-02 22:31:21'),
(887, 'default', 'created', 183, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:05', '2020-02-02 22:32:05'),
(888, 'default', 'created', 184, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:05', '2020-02-02 22:32:05'),
(889, 'default', 'created', 185, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:06', '2020-02-02 22:32:06'),
(890, 'default', 'created', 186, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:06', '2020-02-02 22:32:06'),
(891, 'default', 'created', 187, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:07', '2020-02-02 22:32:07'),
(892, 'default', 'created', 188, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:08', '2020-02-02 22:32:08'),
(893, 'default', 'created', 189, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:42', '2020-02-02 22:32:42'),
(894, 'default', 'created', 190, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:42', '2020-02-02 22:32:42'),
(895, 'default', 'created', 191, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:43', '2020-02-02 22:32:43'),
(896, 'default', 'created', 192, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:44', '2020-02-02 22:32:44'),
(897, 'default', 'created', 193, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:44', '2020-02-02 22:32:44'),
(898, 'default', 'created', 194, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:32:45', '2020-02-02 22:32:45'),
(899, 'default', 'created', 195, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:23', '2020-02-02 22:37:23'),
(900, 'default', 'created', 196, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:24', '2020-02-02 22:37:24'),
(901, 'default', 'created', 197, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:30', '2020-02-02 22:37:30'),
(902, 'default', 'created', 198, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:30', '2020-02-02 22:37:30'),
(903, 'default', 'created', 199, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:31', '2020-02-02 22:37:31'),
(904, 'default', 'created', 200, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:37:32', '2020-02-02 22:37:32'),
(905, 'default', 'created', 201, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:51', '2020-02-02 22:38:51'),
(906, 'default', 'created', 202, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:52', '2020-02-02 22:38:52'),
(907, 'default', 'created', 203, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:53', '2020-02-02 22:38:53'),
(908, 'default', 'created', 204, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:53', '2020-02-02 22:38:53'),
(909, 'default', 'created', 205, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:54', '2020-02-02 22:38:54'),
(910, 'default', 'created', 206, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:38:54', '2020-02-02 22:38:54'),
(911, 'default', 'created', 207, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:09', '2020-02-02 22:40:09'),
(912, 'default', 'created', 208, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:09', '2020-02-02 22:40:09'),
(913, 'default', 'created', 209, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:10', '2020-02-02 22:40:10'),
(914, 'default', 'created', 210, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:11', '2020-02-02 22:40:11'),
(915, 'default', 'created', 211, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:11', '2020-02-02 22:40:11'),
(916, 'default', 'created', 212, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:12', '2020-02-02 22:40:12'),
(917, 'default', 'created', 213, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:49', '2020-02-02 22:40:49'),
(918, 'default', 'created', 214, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:50', '2020-02-02 22:40:50'),
(919, 'default', 'created', 215, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:50', '2020-02-02 22:40:50'),
(920, 'default', 'created', 216, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:51', '2020-02-02 22:40:51'),
(921, 'default', 'created', 217, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:51', '2020-02-02 22:40:51'),
(922, 'default', 'created', 218, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:40:52', '2020-02-02 22:40:52'),
(923, 'default', 'created', 219, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:26', '2020-02-02 22:41:26'),
(924, 'default', 'created', 220, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:27', '2020-02-02 22:41:27'),
(925, 'default', 'created', 221, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:27', '2020-02-02 22:41:27'),
(926, 'default', 'created', 222, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:28', '2020-02-02 22:41:28');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(927, 'default', 'created', 223, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:28', '2020-02-02 22:41:28'),
(928, 'default', 'created', 224, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:41:29', '2020-02-02 22:41:29'),
(929, 'default', 'created', 225, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:45', '2020-02-02 22:43:45'),
(930, 'default', 'created', 226, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:45', '2020-02-02 22:43:45'),
(931, 'default', 'created', 227, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:46', '2020-02-02 22:43:46'),
(932, 'default', 'created', 228, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:46', '2020-02-02 22:43:46'),
(933, 'default', 'created', 229, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:47', '2020-02-02 22:43:47'),
(934, 'default', 'created', 230, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:43:47', '2020-02-02 22:43:47'),
(935, 'default', 'created', 231, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:26', '2020-02-02 22:44:26'),
(936, 'default', 'created', 232, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:26', '2020-02-02 22:44:26'),
(937, 'default', 'created', 233, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:27', '2020-02-02 22:44:27'),
(938, 'default', 'created', 234, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:27', '2020-02-02 22:44:27'),
(939, 'default', 'created', 235, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:28', '2020-02-02 22:44:28'),
(940, 'default', 'created', 236, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:28', '2020-02-02 22:44:28'),
(941, 'default', 'created', 237, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:56', '2020-02-02 22:44:56'),
(942, 'default', 'created', 238, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:57', '2020-02-02 22:44:57'),
(943, 'default', 'created', 239, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:58', '2020-02-02 22:44:58'),
(944, 'default', 'created', 240, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:58', '2020-02-02 22:44:58'),
(945, 'default', 'created', 241, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:59', '2020-02-02 22:44:59'),
(946, 'default', 'created', 242, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:44:59', '2020-02-02 22:44:59'),
(947, 'default', 'created', 243, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:04', '2020-02-02 22:52:04'),
(948, 'default', 'created', 244, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:05', '2020-02-02 22:52:05'),
(949, 'default', 'created', 245, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:06', '2020-02-02 22:52:06'),
(950, 'default', 'created', 246, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:06', '2020-02-02 22:52:06'),
(951, 'default', 'created', 247, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:07', '2020-02-02 22:52:07'),
(952, 'default', 'created', 248, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:52:07', '2020-02-02 22:52:07'),
(953, 'default', 'created', 249, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:01', '2020-02-02 22:53:01'),
(954, 'default', 'created', 250, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:02', '2020-02-02 22:53:02'),
(955, 'default', 'created', 251, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:02', '2020-02-02 22:53:02'),
(956, 'default', 'created', 252, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:03', '2020-02-02 22:53:03'),
(957, 'default', 'created', 253, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:03', '2020-02-02 22:53:03'),
(958, 'default', 'created', 254, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:53:04', '2020-02-02 22:53:04'),
(959, 'default', 'created', 255, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:22', '2020-02-02 22:54:22'),
(960, 'default', 'created', 256, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:23', '2020-02-02 22:54:23'),
(961, 'default', 'created', 257, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:23', '2020-02-02 22:54:23'),
(962, 'default', 'created', 258, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:24', '2020-02-02 22:54:24'),
(963, 'default', 'created', 259, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:25', '2020-02-02 22:54:25'),
(964, 'default', 'created', 260, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:25', '2020-02-02 22:54:25'),
(965, 'default', 'created', 261, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:54:59', '2020-02-02 22:54:59'),
(966, 'default', 'created', 262, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:55:00', '2020-02-02 22:55:00'),
(967, 'default', 'created', 263, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:55:01', '2020-02-02 22:55:01'),
(968, 'default', 'created', 264, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:55:01', '2020-02-02 22:55:01'),
(969, 'default', 'created', 265, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:55:02', '2020-02-02 22:55:02'),
(970, 'default', 'created', 266, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-02 22:55:02', '2020-02-02 22:55:02'),
(971, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 22:56:20', '2020-02-02 22:56:20'),
(972, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 22:57:41', '2020-02-02 22:57:41'),
(973, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 22:58:27', '2020-02-02 22:58:27'),
(974, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 23:13:05', '2020-02-02 23:13:05'),
(975, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 23:13:16', '2020-02-02 23:13:16'),
(976, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 23:14:28', '2020-02-02 23:14:28'),
(977, 'login', 'login', 40, 'App\\Models\\User', 40, 'App\\Models\\User', '[]', '2020-02-02 23:19:26', '2020-02-02 23:19:26'),
(978, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-02 23:19:55', '2020-02-02 23:19:55'),
(979, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-02 23:24:01', '2020-02-02 23:24:01'),
(980, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-03 01:16:49', '2020-02-03 01:16:49'),
(981, 'login', 'login', 40, 'App\\Models\\User', 40, 'App\\Models\\User', '[]', '2020-02-03 01:17:15', '2020-02-03 01:17:15'),
(982, 'default', 'created', 9, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"4\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:17:53', '2020-02-03 01:17:53'),
(983, 'default', 'created', 10, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:18:39', '2020-02-03 01:18:39'),
(984, 'default', 'created', 11, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:18:53', '2020-02-03 01:18:53'),
(985, 'default', 'created', 12, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:19:16', '2020-02-03 01:19:16'),
(986, 'default', 'created', 13, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:19:39', '2020-02-03 01:19:39'),
(987, 'default', 'created', 14, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"1\",\"year\":\"2020\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-03 01:19:50', '2020-02-03 01:19:50'),
(988, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-03 01:26:48', '2020-02-03 01:26:48'),
(989, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-03 23:17:27', '2020-02-03 23:17:27'),
(990, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-03 23:28:04', '2020-02-03 23:28:04'),
(991, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-04 00:09:48', '2020-02-04 00:09:48'),
(992, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-04 23:48:53', '2020-02-04 23:48:53'),
(993, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-05 21:42:58', '2020-02-05 21:42:58'),
(994, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-06 00:37:19', '2020-02-06 00:37:19'),
(995, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-16 19:48:18', '2020-02-16 19:48:18'),
(996, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-17 00:45:02', '2020-02-17 00:45:02'),
(997, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-18 00:07:51', '2020-02-18 00:07:51'),
(998, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-18 00:30:17', '2020-02-18 00:30:17'),
(999, 'default', 'created', 7, 'App\\Models\\WorkInspection', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"6\",\"number\":\"001.1.d\\/BAHPP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-18 01:01:54', '2020-02-18 01:01:54'),
(1000, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-18 18:11:55', '2020-02-18 18:11:55'),
(1001, 'default', 'created', 267, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-01\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-02-18 18:13:41', '2020-02-18 18:13:41'),
(1002, 'default', 'created', 21, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-01\",\"end_date\":\"2020-01-01\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-18 18:13:41', '2020-02-18 18:13:41'),
(1003, 'default', 'created', 268, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-15\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:14:43', '2020-02-18 18:14:43'),
(1004, 'default', 'created', 269, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-22\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:15:21', '2020-02-18 18:15:21'),
(1005, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-18 18:20:33', '2020-02-18 18:20:33'),
(1006, 'default', 'updated', 147, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:39:24', '2020-02-18 18:39:24'),
(1007, 'default', 'updated', 153, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:39:36', '2020-02-18 18:39:36'),
(1008, 'default', 'updated', 162, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:39:59', '2020-02-18 18:39:59'),
(1009, 'default', 'updated', 166, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:40:14', '2020-02-18 18:40:14'),
(1010, 'default', 'updated', 172, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:40:28', '2020-02-18 18:40:28'),
(1011, 'default', 'updated', 178, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:40:49', '2020-02-18 18:40:49'),
(1012, 'default', 'updated', 184, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:41:05', '2020-02-18 18:41:05'),
(1013, 'default', 'updated', 190, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:42:05', '2020-02-18 18:42:05'),
(1014, 'default', 'updated', 196, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:42:18', '2020-02-18 18:42:18'),
(1015, 'default', 'updated', 268, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-15\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:42:35', '2020-02-18 18:42:35'),
(1016, 'default', 'updated', 202, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:42:48', '2020-02-18 18:42:48'),
(1017, 'default', 'updated', 208, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:43:03', '2020-02-18 18:43:03'),
(1018, 'default', 'updated', 214, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:43:15', '2020-02-18 18:43:15'),
(1019, 'default', 'updated', 220, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:43:28', '2020-02-18 18:43:28'),
(1020, 'default', 'updated', 269, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-22\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:43:40', '2020-02-18 18:43:40'),
(1021, 'default', 'updated', 226, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:43:51', '2020-02-18 18:43:51'),
(1022, 'default', 'updated', 232, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:44:25', '2020-02-18 18:44:25'),
(1023, 'default', 'updated', 238, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:44:39', '2020-02-18 18:44:39'),
(1024, 'default', 'updated', 244, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:44:52', '2020-02-18 18:44:52'),
(1025, 'default', 'updated', 250, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:45:03', '2020-02-18 18:45:03'),
(1026, 'default', 'updated', 256, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:45:18', '2020-02-18 18:45:18'),
(1027, 'default', 'updated', 262, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 18:45:29', '2020-02-18 18:45:29'),
(1028, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-18 18:50:44', '2020-02-18 18:50:44'),
(1029, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-18 18:50:44', '2020-02-18 18:50:44'),
(1030, 'default', 'created', 38, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-18 18:50:44', '2020-02-18 18:50:44'),
(1031, 'default', 'created', 2, 'App\\Models\\WorkDay', 39, 'App\\Models\\User', '{\"attributes\":{\"year\":\"2020\",\"january\":\"20\",\"february\":\"20\",\"march\":\"20\",\"april\":\"20\",\"may\":\"20\",\"june\":\"20\",\"july\":\"20\",\"august\":\"20\",\"september\":\"20\",\"october\":\"20\",\"november\":\"20\",\"december\":\"20\"}}', '2020-02-18 19:09:55', '2020-02-18 19:09:55'),
(1032, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-18 19:21:12', '2020-02-18 19:21:12'),
(1033, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-18 19:21:12', '2020-02-18 19:21:12'),
(1034, 'default', 'created', 39, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-18 19:21:12', '2020-02-18 19:21:12'),
(1035, 'default', 'updated', 147, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:21:42', '2020-02-18 19:21:42'),
(1036, 'default', 'updated', 153, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:22:01', '2020-02-18 19:22:01'),
(1037, 'default', 'updated', 162, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:22:18', '2020-02-18 19:22:18'),
(1038, 'default', 'updated', 166, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:22:36', '2020-02-18 19:22:36'),
(1039, 'default', 'updated', 172, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:22:47', '2020-02-18 19:22:47'),
(1040, 'default', 'updated', 178, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:23:14', '2020-02-18 19:23:14'),
(1041, 'default', 'updated', 184, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:23:26', '2020-02-18 19:23:26'),
(1042, 'default', 'updated', 190, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:23:41', '2020-02-18 19:23:41'),
(1043, 'default', 'updated', 196, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-14\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:23:52', '2020-02-18 19:23:52'),
(1044, 'default', 'updated', 268, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-15\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-15\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:24:05', '2020-02-18 19:24:05');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1045, 'default', 'updated', 202, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-16\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:24:16', '2020-02-18 19:24:16'),
(1046, 'default', 'updated', 208, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-17\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:24:27', '2020-02-18 19:24:27'),
(1047, 'default', 'updated', 214, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-20\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:24:39', '2020-02-18 19:24:39'),
(1048, 'default', 'updated', 220, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-21\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:24:52', '2020-02-18 19:24:52'),
(1049, 'default', 'updated', 269, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-22\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-22\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:03', '2020-02-18 19:25:03'),
(1050, 'default', 'updated', 226, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-23\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:16', '2020-02-18 19:25:16'),
(1051, 'default', 'updated', 232, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-24\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:28', '2020-02-18 19:25:28'),
(1052, 'default', 'updated', 238, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-27\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:38', '2020-02-18 19:25:38'),
(1053, 'default', 'updated', 244, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-28\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:48', '2020-02-18 19:25:48'),
(1054, 'default', 'updated', 250, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-29\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:25:58', '2020-02-18 19:25:58'),
(1055, 'default', 'updated', 256, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-30\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:26:09', '2020-02-18 19:26:09'),
(1056, 'default', 'updated', 262, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-31\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-18 19:26:21', '2020-02-18 19:26:21'),
(1057, 'default', 'updated', 267, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-01\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-01\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-02-18 19:35:53', '2020-02-18 19:35:53'),
(1058, 'default', 'deleted', 21, 'App\\Models\\HistoryLeaveEmployee', 39, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-01-01\",\"end_date\":\"2020-01-01\",\"contract_id\":\"6\",\"employee_id\":\"6\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-18 19:35:53', '2020-02-18 19:35:53'),
(1059, 'default', 'created', 4, 'App\\Models\\WorkHandover', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"6\",\"number\":\"001.2.d\\/BASTP-PPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_1\":\"section1\",\"section_2\":\"<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 001.1.d\\/BAHPP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020 tanggal 31 Januari 2020 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t\\t<li><span style=\\\"font-size:10.0pt\\\">SPMK Nomor 006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020<\\/span> <span style=\\\"font-size:10.0pt\\\">tanggal 2 Januari 2020<\\/span><\\/li>\\r\\n\\t\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t\\t<li>SPK Nomor 006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) selama 1 (satu) bulan (Januari) dengan rincian pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hasil Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-18 19:52:05', '2020-02-18 19:52:05'),
(1060, 'default', 'created', 2, 'App\\Models\\WorkAdministration', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"60\",\"contract_id\":\"6\",\"number\":\"001.3.d\\/BAHPA\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_1\":\"<p>Pada Hari ini <strong>Jumat<\\/strong> tanggal <strong>Tiga Puluh Satu&nbsp;<\\/strong>Bulan <strong>Januari&nbsp;<\\/strong>tahun <strong><span style=\\\"font-size:10.0pt\\\">Dua Ribu Dua Puluh<\\/span><\\/strong>, kami yang bertanda tangan dibawah ini:<\\/p>\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 Tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Administrasi ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-18 20:04:01', '2020-02-18 20:04:01'),
(1061, 'default', 'created', 2, 'App\\Models\\WorkHandoverPpkom', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary2_id\":\"58\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"number\":\"001.4.d\\/BASTP-PA\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_2\":\"<p>Berdasarkan Berita Acara Serah Terima Hasil Pekerjaan Nomor 001.2.d\\/BASTP-PPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020 tanggal 31 Januari 2020 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:<\\/p>\",\"section_3\":\"<p>Pasal 1<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t\\t<li><span style=\\\"font-size:11pt\\\"><span style=\\\"font-size:10.0pt\\\">SPMK Nomor <\\/span><span style=\\\"font-size:10.0pt\\\">006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020<\\/span> <span style=\\\"font-size:10.0pt\\\">tanggal 2 Januari 2020<\\/span><\\/span><\\/li>\\r\\n\\t\\t<li><span style=\\\"font-size:10.0pt\\\">Amandemen \\/ Addendum <\\/span><span style=\\\"font-size:10.0pt\\\">Pertama <\\/span><span style=\\\"font-size:10.0pt\\\">Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/span><\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n\\t<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\\r\\n\\t<ul>\\r\\n\\t\\t<li>SPK Nomor 006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t\\t<li><span style=\\\"font-size:11pt\\\"><span style=\\\"font-size:10.0pt\\\">SPMK Nomor <\\/span><span style=\\\"font-size:10.0pt\\\">006.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020<\\/span> <span style=\\\"font-size:10.0pt\\\">tanggal 2 Januari 2020<\\/span><\\/span><\\/li>\\r\\n\\t\\t<li><span style=\\\"font-size:10.0pt\\\">Amandemen \\/ Addendum <\\/span><span style=\\\"font-size:10.0pt\\\">Pertama <\\/span><span style=\\\"font-size:10.0pt\\\">Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/span><\\/li>\\r\\n\\t<\\/ul>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Pasal 2<\\/p>\\r\\n\\r\\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Lainnya Orang Perorangan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam Syarat Umum Surat Perintah Kerja<\\/p>\",\"section_4\":\"<p>Demikian Berita Acara Serah Terima Hasil Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-18 20:17:48', '2020-02-18 20:17:48'),
(1062, 'default', 'created', 3, 'App\\Models\\PaymentLetter', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"6\",\"number\":\"001.5.d\\/BAPEMP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_1\":\"section1\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.d\\/BAHPP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020, Tanggal 31 Februari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.d\\/BASTP-PPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/I\\/2020 Tanggal 31 Februari 2020 bahwa untuk Kegiatan Operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020804 Atas Nama Nur Agus Pratiwi.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2020\"}}', '2020-02-18 20:25:23', '2020-02-18 20:25:23'),
(1063, 'login', 'login', 40, 'App\\Models\\User', 40, 'App\\Models\\User', '[]', '2020-02-18 21:15:47', '2020-02-18 21:15:47'),
(1064, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-20 00:46:09', '2020-02-20 00:46:09'),
(1065, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-20 18:31:40', '2020-02-20 18:31:40'),
(1066, 'default', 'created', 4, 'App\\Models\\PaymentLetter', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"9\",\"number\":\"001.5.a\\/BAPEMP\\/OPCKP-P.Operator\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_1\":\"section1\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.a\\/BAHPP\\/OPCKP-P.Operator\\/TKPBET.DKI\\/I\\/2020, Tanggal 31 Januari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.a\\/BASTP-PPK\\/OPCKP-P.Operator\\/TKPBET.DKI\\/I\\/2020 Tanggal 31 Januari 2020 bahwa untuk Kegiatan Operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah Rp.3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.019668 Atas Nama Febi Resiana.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2020\"}}', '2020-02-20 19:06:23', '2020-02-20 19:06:23'),
(1067, 'default', 'created', 5, 'App\\Models\\PaymentLetter', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"skpd_id\":\"17\",\"functionary_id\":\"57\",\"contract_id\":\"10\",\"number\":\"001.5.b\\/BAPEMP\\/OPCKP-P.MM\\/TKPBET.DKI\\/I\\/2020\",\"date\":\"2020-01-31\",\"section_1\":\"section1\",\"body_letter\":\"<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.b\\/BAHPP\\/OPCKP-P.MM\\/TKPBET.DKI\\/I\\/2020, Tanggal 31 Januari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.b\\/BASTP-PPK\\/OPCKP-P.MM\\/TKPBET.DKI\\/I\\/2020 Tanggal 31 Januari 2020 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Desain Grafis dan Multimedia), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.019666 Atas Nama Laili Safitri.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.<\\/p>\",\"source_of_funds\":\"APBD Kota Pontianak Tahun Anggaran 2020\"}}', '2020-02-20 21:29:57', '2020-02-20 21:29:57'),
(1068, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-21 00:08:09', '2020-02-21 00:08:09'),
(1069, 'default', 'created', 61, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"196504031991031018\",\"name\":\"Drs. Aries Susiawanto\",\"phone_number\":null,\"address\":null}}', '2020-02-21 00:12:50', '2020-02-21 00:12:50'),
(1070, 'default', 'created', 61, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"61\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-21 00:14:17', '2020-02-21 00:14:17'),
(1071, 'default', 'created', 62, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"196602281993031009\",\"name\":\"Rudhy Pirngadi, S.E.\",\"phone_number\":null,\"address\":null}}', '2020-02-21 00:15:37', '2020-02-21 00:15:37'),
(1072, 'default', 'created', 63, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"197902042002122008\",\"name\":\"Henny Herawati, S.Kom.\",\"phone_number\":null,\"address\":null}}', '2020-02-21 00:16:32', '2020-02-21 00:16:32'),
(1073, 'default', 'created', 64, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"196601271986031009\",\"name\":\"Drs. Zulkarnain, M.Si.\",\"phone_number\":null,\"address\":null}}', '2020-02-21 00:17:13', '2020-02-21 00:17:13'),
(1074, 'default', 'created', 62, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"62\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"ppkom\",\"status\":\"active\"}}', '2020-02-21 00:17:55', '2020-02-21 00:17:55'),
(1075, 'default', 'created', 63, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"63\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-21 00:20:11', '2020-02-21 00:20:11'),
(1076, 'default', 'created', 64, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"64\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"ppkom\",\"status\":\"active\"}}', '2020-02-21 00:20:52', '2020-02-21 00:20:52'),
(1077, 'default', 'updated', 6, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170012020\",\"skpd_id\":\"17\",\"name\":\"Nur Agus Pratiwi, S.T.\",\"ktp\":\"6171016408940007\",\"npwp\":\"93.892.042.8-701.000\",\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116\",\"religion\":\"islam\",\"phone_number\":\"085654576564\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020804\",\"bpjs_healthcare\":\"0002918485901\",\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170012020\",\"skpd_id\":\"17\",\"name\":\"Nur Agus Pratiwi, ST\",\"ktp\":\"6171016408940007\",\"npwp\":\"93.892.042.8-701.000\",\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116\",\"religion\":\"islam\",\"phone_number\":\"085654576564\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020804\",\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-21 00:22:35', '2020-02-21 00:22:35'),
(1078, 'default', 'updated', 9, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170042020\",\"skpd_id\":\"17\",\"name\":\"Febi Resiana, S.T.\",\"ktp\":\"6171015802910005\",\"npwp\":\"74.209.689.4-701.000\",\"gender\":\"perempuan\",\"address\":\"Jl. Parit H. Husin 2, Komp. Pemda Jalur 1 Nomor 85, Kel. bansir darat, Kec. Pontianak Tenggara, Pontianak, Kalbar\",\"religion\":\"islam\",\"phone_number\":\"085245756464\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019668\",\"bpjs_healthcare\":\"0000050505592\",\"bpjs_social_security\":\"17017008206\"},\"old\":{\"nipj\":\"0170042020\",\"skpd_id\":\"17\",\"name\":\"Febi Resiana, ST\",\"ktp\":\"6171015802910005\",\"npwp\":\"74.209.689.4-701.000\",\"gender\":\"perempuan\",\"address\":\"Jl. Parit H. Husin 2, Komp. Pemda Jalur 1 Nomor 85, Kel. bansir darat, Kec. Pontianak Tenggara, Pontianak, Kalbar\",\"religion\":\"islam\",\"phone_number\":\"085245756464\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.019668\",\"bpjs_healthcare\":\"0000050505592\",\"bpjs_social_security\":\"17017008206\"}}', '2020-02-21 00:22:52', '2020-02-21 00:22:52'),
(1079, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-23 19:26:25', '2020-02-23 19:26:25'),
(1080, 'default', 'created', 65, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"196806191993071001\",\"name\":\"Iswandi, S.Sos.\",\"phone_number\":null,\"address\":null}}', '2020-02-23 21:00:44', '2020-02-23 21:00:44'),
(1081, 'default', 'created', 65, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"65\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-23 21:02:12', '2020-02-23 21:02:12'),
(1082, 'default', 'updated', 61, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"61\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"pptk\",\"status\":\"active\"},\"old\":{\"functionary_id\":\"61\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-23 21:02:54', '2020-02-23 21:02:54'),
(1083, 'default', 'created', 66, 'App\\Models\\Functionary', 39, 'App\\Models\\User', '{\"attributes\":{\"nip\":\"198207162008021001\",\"name\":\"I Wayan Nugroho PS, S.T.\",\"phone_number\":null,\"address\":null}}', '2020-02-23 21:03:31', '2020-02-23 21:03:31'),
(1084, 'default', 'created', 66, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"66\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-23 21:04:02', '2020-02-23 21:04:02'),
(1085, 'default', 'updated', 63, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"63\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"pptk\",\"status\":\"active\"},\"old\":{\"functionary_id\":\"63\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"pptk\",\"status\":\"active\"}}', '2020-02-23 21:05:39', '2020-02-23 21:05:39'),
(1086, 'default', 'updated', 64, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"64\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"ppkom\",\"status\":\"active\"},\"old\":{\"functionary_id\":\"64\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"ppkom\",\"status\":\"active\"}}', '2020-02-23 21:06:55', '2020-02-23 21:06:55'),
(1087, 'default', 'updated', 62, 'App\\Models\\Occupation', 39, 'App\\Models\\User', '{\"attributes\":{\"functionary_id\":\"62\",\"skpd_id\":\"17\",\"start_date\":\"2020-01-01\",\"end_date\":\"2020-12-31\",\"position\":\"ppkom\",\"status\":\"active\"},\"old\":{\"functionary_id\":\"62\",\"skpd_id\":\"17\",\"start_date\":\"2019-01-01\",\"end_date\":\"2024-01-01\",\"position\":\"ppkom\",\"status\":\"active\"}}', '2020-02-23 21:07:43', '2020-02-23 21:07:43'),
(1088, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-23 23:47:35', '2020-02-23 23:47:35'),
(1089, 'default', 'updated', 148, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:54:50', '2020-02-23 23:54:50'),
(1090, 'default', 'updated', 149, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:55:08', '2020-02-23 23:55:08'),
(1091, 'default', 'updated', 148, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:55:28', '2020-02-23 23:55:28'),
(1092, 'default', 'updated', 147, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:55:50', '2020-02-23 23:55:50'),
(1093, 'default', 'updated', 151, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:56:06', '2020-02-23 23:56:06'),
(1094, 'default', 'updated', 150, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:56:18', '2020-02-23 23:56:18'),
(1095, 'default', 'updated', 152, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-02\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:56:29', '2020-02-23 23:56:29'),
(1096, 'default', 'updated', 157, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:58:04', '2020-02-23 23:58:04'),
(1097, 'default', 'updated', 154, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:58:04', '2020-02-23 23:58:04'),
(1098, 'default', 'updated', 155, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:58:35', '2020-02-23 23:58:35'),
(1099, 'default', 'updated', 156, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:58:35', '2020-02-23 23:58:35'),
(1100, 'default', 'updated', 158, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:58:35', '2020-02-23 23:58:35'),
(1101, 'default', 'updated', 157, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:59:07', '2020-02-23 23:59:07'),
(1102, 'default', 'updated', 156, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-23 23:59:07', '2020-02-23 23:59:07'),
(1103, 'default', 'updated', 160, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:16', '2020-02-24 00:00:16'),
(1104, 'default', 'updated', 163, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:16', '2020-02-24 00:00:16'),
(1105, 'default', 'updated', 159, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:16', '2020-02-24 00:00:16'),
(1106, 'default', 'updated', 161, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:16', '2020-02-24 00:00:16'),
(1107, 'default', 'updated', 164, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:16', '2020-02-24 00:00:16'),
(1108, 'default', 'updated', 159, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:56', '2020-02-24 00:00:56'),
(1109, 'default', 'updated', 162, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:56', '2020-02-24 00:00:56'),
(1110, 'default', 'updated', 163, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:56', '2020-02-24 00:00:56'),
(1111, 'default', 'updated', 161, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:00:56', '2020-02-24 00:00:56'),
(1112, 'default', 'updated', 167, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:01:47', '2020-02-24 00:01:47'),
(1113, 'default', 'updated', 165, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:01:47', '2020-02-24 00:01:47'),
(1114, 'default', 'updated', 170, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:01:47', '2020-02-24 00:01:47'),
(1115, 'default', 'updated', 169, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:01:47', '2020-02-24 00:01:47'),
(1116, 'default', 'updated', 168, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:01:47', '2020-02-24 00:01:47'),
(1117, 'default', 'updated', 166, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:02:40', '2020-02-24 00:02:40'),
(1118, 'default', 'updated', 167, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:02:40', '2020-02-24 00:02:40'),
(1119, 'default', 'updated', 169, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:02:42', '2020-02-24 00:02:42'),
(1120, 'default', 'updated', 173, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:03:26', '2020-02-24 00:03:26'),
(1121, 'default', 'updated', 174, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:03:26', '2020-02-24 00:03:26'),
(1122, 'default', 'updated', 171, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:03:26', '2020-02-24 00:03:26');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1123, 'default', 'updated', 176, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:03:26', '2020-02-24 00:03:26'),
(1124, 'default', 'updated', 175, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:03:26', '2020-02-24 00:03:26'),
(1125, 'default', 'updated', 172, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:07', '2020-02-24 00:04:07'),
(1126, 'default', 'updated', 171, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:07', '2020-02-24 00:04:07'),
(1127, 'default', 'updated', 175, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-08\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:07', '2020-02-24 00:04:07'),
(1128, 'default', 'updated', 180, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:49', '2020-02-24 00:04:49'),
(1129, 'default', 'updated', 181, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:49', '2020-02-24 00:04:49'),
(1130, 'default', 'updated', 179, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:49', '2020-02-24 00:04:49'),
(1131, 'default', 'updated', 182, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:49', '2020-02-24 00:04:49'),
(1132, 'default', 'updated', 177, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:04:49', '2020-02-24 00:04:49'),
(1133, 'default', 'updated', 177, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:33', '2020-02-24 00:05:33'),
(1134, 'default', 'updated', 179, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:33', '2020-02-24 00:05:33'),
(1135, 'default', 'updated', 181, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-09\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:33', '2020-02-24 00:05:33'),
(1136, 'default', 'updated', 187, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:57', '2020-02-24 00:05:57'),
(1137, 'default', 'updated', 185, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:57', '2020-02-24 00:05:57'),
(1138, 'default', 'updated', 188, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:57', '2020-02-24 00:05:57'),
(1139, 'default', 'updated', 183, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:57', '2020-02-24 00:05:57'),
(1140, 'default', 'updated', 186, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:05:57', '2020-02-24 00:05:57'),
(1141, 'default', 'updated', 183, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:06:47', '2020-02-24 00:06:47'),
(1142, 'default', 'updated', 185, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:06:47', '2020-02-24 00:06:47'),
(1143, 'default', 'updated', 188, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 00:06:47', '2020-02-24 00:06:47'),
(1144, 'default', 'created', 11, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170062020\",\"skpd_id\":\"17\",\"name\":\"Yogi, S.Kom.\",\"ktp\":\"6171021212960012\",\"npwp\":\"84.842.786.0-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan Tanjung Raya 2, Gang Kurnia Ilahi, No 18, Kel. Saigon, Kec. Pontianak Timur, Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"085822333891\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020623\",\"bpjs_healthcare\":\"0001169560135\",\"bpjs_social_security\":\"19049967771\"}}', '2020-02-24 00:10:32', '2020-02-24 00:10:32'),
(1145, 'default', 'created', 12, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170072020\",\"skpd_id\":\"17\",\"name\":\"Eli Oskar\",\"ktp\":\"6112052404900008\",\"npwp\":\"81.178.700.1-704.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan H. Rais A Rahman, Gang Gunung Jati, RT\\/RW 002\\/010, Kel. Sungai Jawi, Kecamatan Pontianak Kota, Kalimantan Barat\",\"religion\":\"islam\",\"phone_number\":\"085249783624\",\"bank_name\":\"pasar\",\"account_number\":\"102.54.56331\",\"bpjs_healthcare\":\"0002224128104\",\"bpjs_social_security\":\"17008043899\"}}', '2020-02-24 00:11:58', '2020-02-24 00:11:58'),
(1146, 'default', 'created', 13, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170082020\",\"skpd_id\":\"17\",\"name\":\"Afriansyah Akbar,  A.Md.\",\"ktp\":\"6171012204950005\",\"npwp\":\"91.401.844.5-707.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan Parit H. Husin 2, Komp. Wanabhakti 4, No. A9\",\"religion\":\"islam\",\"phone_number\":\"089693950514\",\"bank_name\":\"pasar\",\"account_number\":\"21.002.020.844\",\"bpjs_healthcare\":\"0000050409167\",\"bpjs_social_security\":null}}', '2020-02-24 00:13:22', '2020-02-24 00:13:22'),
(1147, 'default', 'created', 14, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170092020\",\"skpd_id\":\"17\",\"name\":\"Muhammad Fadhil Putra, A.Md.\",\"ktp\":\"6171062911970001\",\"npwp\":\"86.780.191.2-707.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan Adi Sucipto, Gang H. Mansyur, No.101\",\"religion\":\"islam\",\"phone_number\":\"089675436852\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020624\",\"bpjs_healthcare\":\"0002921876559\",\"bpjs_social_security\":\"19049967763\"}}', '2020-02-24 00:15:21', '2020-02-24 00:15:21'),
(1148, 'default', 'created', 15, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170102020\",\"skpd_id\":\"17\",\"name\":\"Roisul Umam, A.Md\",\"ktp\":\"6171042104950007\",\"npwp\":\"83.767.488.6-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan Parwasal, Gg.Persada 3, RT 004 \\/ RW 006, Kelurahan Siantan Tengah, Kecamatan Pontianak Utara, 78242\",\"religion\":\"islam\",\"phone_number\":\"089693209029\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020019\",\"bpjs_healthcare\":\"0000884039163\",\"bpjs_social_security\":\"18017251226\"}}', '2020-02-24 00:17:16', '2020-02-24 00:17:16'),
(1149, 'default', 'created', 16, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170112020\",\"skpd_id\":\"17\",\"name\":\"Kadarusman, A.Md\",\"ktp\":\"0\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-24 00:18:36', '2020-02-24 00:18:36'),
(1150, 'default', 'created', 17, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170122020\",\"skpd_id\":\"17\",\"name\":\"Iwan Dika, A.Md\",\"ktp\":\"00\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-24 00:19:51', '2020-02-24 00:19:51'),
(1151, 'default', 'created', 18, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170132020\",\"skpd_id\":\"17\",\"name\":\"Nevya Adysti, S.Kom.\",\"ktp\":\"000\",\"npwp\":null,\"gender\":\"perempuan\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-24 00:20:33', '2020-02-24 00:20:33'),
(1152, 'default', 'updated', 191, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:21', '2020-02-24 01:29:21'),
(1153, 'default', 'updated', 189, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:21', '2020-02-24 01:29:21'),
(1154, 'default', 'updated', 192, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:21', '2020-02-24 01:29:21'),
(1155, 'default', 'updated', 193, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:21', '2020-02-24 01:29:21'),
(1156, 'default', 'updated', 194, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:21', '2020-02-24 01:29:21'),
(1157, 'default', 'updated', 191, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:54', '2020-02-24 01:29:54'),
(1158, 'default', 'updated', 194, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:54', '2020-02-24 01:29:54'),
(1159, 'default', 'updated', 190, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:54', '2020-02-24 01:29:54'),
(1160, 'default', 'updated', 192, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:54', '2020-02-24 01:29:54'),
(1161, 'default', 'updated', 193, 'App\\Models\\Attendance', 39, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-01-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 01:29:54', '2020-02-24 01:29:54'),
(1162, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-24 17:40:31', '2020-02-24 17:40:31'),
(1163, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-24 17:57:22', '2020-02-24 17:57:22'),
(1164, 'default', 'created', 270, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1165, 'default', 'created', 271, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1166, 'default', 'created', 272, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1167, 'default', 'created', 273, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1168, 'default', 'created', 275, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1169, 'default', 'created', 274, 'App\\Models\\Attendance', 26, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-24 17:59:35', '2020-02-24 17:59:35'),
(1170, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-24 18:13:53', '2020-02-24 18:13:53'),
(1171, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-24 18:14:07', '2020-02-24 18:14:07'),
(1172, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-24 21:22:48', '2020-02-24 21:22:48'),
(1173, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-24 23:05:38', '2020-02-24 23:05:38'),
(1174, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-02-24 23:06:44', '2020-02-24 23:06:44'),
(1175, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-24 23:16:30', '2020-02-24 23:16:30'),
(1176, 'default', 'created', 32, 'App\\Models\\Program', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01\",\"name\":\"Program Pelayanan Administrasi Perkantoran\",\"skpd_id\":\"17\"}}', '2020-02-25 01:05:37', '2020-02-25 01:05:37'),
(1177, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-25 17:32:44', '2020-02-25 17:32:44'),
(1178, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-25 18:00:17', '2020-02-25 18:00:17'),
(1179, 'default', 'created', 32, 'App\\Models\\Activity', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01.025\",\"name\":\"Penyediaan Jasa Kebersihan dan Pengamanan Kantor\",\"program_id\":\"32\"}}', '2020-02-25 18:03:42', '2020-02-25 18:03:42'),
(1180, 'default', 'created', 60, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01.025.1\",\"name\":\"Belanja Jasa Petugas Pramubakti dan Kebersihan Bangunan Pemerintah\",\"activity_id\":\"32\"}}', '2020-02-25 18:12:06', '2020-02-25 18:12:06'),
(1181, 'default', 'created', 33, 'App\\Models\\Activity', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01.018\",\"name\":\"Penyediaan Jasa Administrasi Keuangan\",\"program_id\":\"32\"}}', '2020-02-25 18:14:48', '2020-02-25 18:14:48'),
(1182, 'default', 'created', 61, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01.018.1\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika\",\"activity_id\":\"33\"}}', '2020-02-25 18:18:00', '2020-02-25 18:18:00'),
(1183, 'default', 'updated', 61, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.01.018.2\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi\",\"activity_id\":\"33\"},\"old\":{\"code\":\"2.10.2.10.01.00.01.018.1\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika\",\"activity_id\":\"33\"}}', '2020-02-25 18:18:38', '2020-02-25 18:18:38'),
(1184, 'default', 'created', 33, 'App\\Models\\Program', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.17\",\"name\":\"Program Peningkatan Kualitas Pelayanan Informasi Publik\",\"skpd_id\":\"17\"}}', '2020-02-25 18:21:06', '2020-02-25 18:21:06'),
(1185, 'default', 'created', 34, 'App\\Models\\Activity', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.17.008\",\"name\":\"Pengolahan Data dan Informasi serta Produksi Konten Informasi Publik\",\"program_id\":\"33\"}}', '2020-02-25 18:22:55', '2020-02-25 18:22:55'),
(1186, 'default', 'created', 62, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.17.008.1\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Pengolah Informasi dan Multimedia\",\"activity_id\":\"34\"}}', '2020-02-25 18:25:52', '2020-02-25 18:25:52'),
(1187, 'default', 'created', 19, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170142020\",\"skpd_id\":\"17\",\"name\":\"Didi Ferdiansyah\",\"ktp\":\"6172022309790003\",\"npwp\":\"93.915.858.0-701.000\",\"gender\":\"laki-laki\",\"address\":\"Jalan Dr. Wahidin S., Komp. PU Jalur 1, No. 09, RT 003 \\/ RW 020, Kel. Sungai Jawi, Kec. Pontianak Kota\",\"religion\":\"islam\",\"phone_number\":\"081251130005\",\"bank_name\":\"pasar\",\"account_number\":\"210.02.020839\",\"bpjs_healthcare\":\"0002210218053\",\"bpjs_social_security\":null}}', '2020-02-25 18:58:02', '2020-02-25 18:58:02'),
(1188, 'default', 'created', 87, 'App\\Models\\Location', 39, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan Tata Usaha Dinas Komunikasi dan Informatika Pontianak\",\"skpd_id\":\"17\"}}', '2020-02-25 19:12:50', '2020-02-25 19:12:50'),
(1189, 'default', 'created', 88, 'App\\Models\\Location', 39, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan Data Center\",\"skpd_id\":\"17\"}}', '2020-02-25 19:13:23', '2020-02-25 19:13:23'),
(1190, 'default', 'created', 11, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"001.2\\/SPK\\/PJKPK-CS\\/TU.DKI\\/2020\",\"employee_id\":\"12\",\"skpd_id\":\"17\",\"program_id\":\"32\",\"activity_id\":\"32\",\"work_package_id\":\"60\",\"location_id\":\"87\",\"position_id\":\"12\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"64\",\"bonus\":\"2750000\"}}', '2020-02-25 19:22:57', '2020-02-25 19:22:57'),
(1191, 'default', 'created', 40, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"11\",\"salary_component_id\":\"1\",\"nominal\":\"2750000\"}}', '2020-02-25 19:22:57', '2020-02-25 19:22:57'),
(1192, 'default', 'created', 12, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"002.2\\/SPK\\/PJKPK-CS\\/TU.DKI\\/2020\",\"employee_id\":\"19\",\"skpd_id\":\"17\",\"program_id\":\"32\",\"activity_id\":\"32\",\"work_package_id\":\"60\",\"location_id\":\"87\",\"position_id\":\"12\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"64\",\"bonus\":\"2750000\"}}', '2020-02-25 19:26:56', '2020-02-25 19:26:56'),
(1193, 'default', 'created', 41, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"12\",\"salary_component_id\":\"1\",\"nominal\":\"2750000\"}}', '2020-02-25 19:26:56', '2020-02-25 19:26:56'),
(1194, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 19:32:32', '2020-02-25 19:32:32'),
(1195, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 19:32:32', '2020-02-25 19:32:32'),
(1196, 'default', 'created', 42, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-25 19:32:32', '2020-02-25 19:32:32'),
(1197, 'default', 'created', 43, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"2\",\"nominal\":\"2750000\"}}', '2020-02-25 19:32:32', '2020-02-25 19:32:32'),
(1198, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 19:34:35', '2020-02-25 19:34:35'),
(1199, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 19:34:35', '2020-02-25 19:34:35'),
(1200, 'default', 'created', 44, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-25 19:34:35', '2020-02-25 19:34:35'),
(1201, 'default', 'created', 89, 'App\\Models\\Location', 39, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan Bidang Informasi Komunikasi Publik (IKP)\",\"skpd_id\":\"17\"}}', '2020-02-25 19:37:08', '2020-02-25 19:37:08'),
(1202, 'default', 'created', 13, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/PDIPKIP-DGM\\/IKP.DKI\\/2020\",\"employee_id\":\"18\",\"skpd_id\":\"17\",\"program_id\":\"33\",\"activity_id\":\"34\",\"work_package_id\":\"62\",\"location_id\":\"89\",\"position_id\":\"38\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"62\",\"bonus\":\"2750000\"}}', '2020-02-25 20:00:30', '2020-02-25 20:00:30'),
(1203, 'default', 'created', 45, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"13\",\"salary_component_id\":\"1\",\"nominal\":\"2750000\"}}', '2020-02-25 20:00:31', '2020-02-25 20:00:31'),
(1204, 'default', 'created', 14, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"004.2\\/SPK\\/PDIPKIP-F.E\\/IKP.DKI\\/2020\",\"employee_id\":\"17\",\"skpd_id\":\"17\",\"program_id\":\"33\",\"activity_id\":\"34\",\"work_package_id\":\"62\",\"location_id\":\"89\",\"position_id\":\"38\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"62\",\"bonus\":\"2750000\"}}', '2020-02-25 20:05:47', '2020-02-25 20:05:47'),
(1205, 'default', 'created', 46, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"14\",\"salary_component_id\":\"1\",\"nominal\":\"2750000\"}}', '2020-02-25 20:05:47', '2020-02-25 20:05:47'),
(1206, 'default', 'created', 15, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"005.2\\/SPK\\/PDIPKIP-V.E\\/IKP.DKI\\/2020\",\"employee_id\":\"13\",\"skpd_id\":\"17\",\"program_id\":\"33\",\"activity_id\":\"34\",\"work_package_id\":\"62\",\"location_id\":\"89\",\"position_id\":\"38\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"62\",\"bonus\":\"2750000\"}}', '2020-02-25 20:13:23', '2020-02-25 20:13:23'),
(1207, 'default', 'created', 47, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"15\",\"salary_component_id\":\"1\",\"nominal\":\"2750000\"}}', '2020-02-25 20:13:23', '2020-02-25 20:13:23'),
(1208, 'default', 'updated', 17, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170122020\",\"skpd_id\":\"17\",\"name\":\"Iwan Dika, A.Md. A.B\",\"ktp\":\"6111010110950003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":\"Jalan Transkalimantan Ambawang Kuala, Kubu Raya\",\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170122020\",\"skpd_id\":\"17\",\"name\":\"Iwan Dika, A.Md\",\"ktp\":\"00\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:17:35', '2020-02-25 20:17:35'),
(1209, 'default', 'updated', 18, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170132020\",\"skpd_id\":\"17\",\"name\":\"Nevya Adysti, S.Kom.\",\"ktp\":\"6171055610910001\",\"npwp\":null,\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Komp. Danau Asri, No. 28 A, Pontianak\",\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170132020\",\"skpd_id\":\"17\",\"name\":\"Nevya Adysti, S.Kom.\",\"ktp\":\"000\",\"npwp\":null,\"gender\":\"perempuan\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:19:50', '2020-02-25 20:19:50'),
(1210, 'default', 'updated', 18, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170132020\",\"skpd_id\":\"17\",\"name\":\"Nevya Adysti, S.Kom.\",\"ktp\":\"6171055610910001\",\"npwp\":null,\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Komp. Danau Asri, No. 28 A, Pontianak\",\"religion\":\"islam\",\"phone_number\":\"081385193079\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170132020\",\"skpd_id\":\"17\",\"name\":\"Nevya Adysti, S.Kom.\",\"ktp\":\"6171055610910001\",\"npwp\":null,\"gender\":\"perempuan\",\"address\":\"Jalan Danau Sentarum, Komp. Danau Asri, No. 28 A, Pontianak\",\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:21:26', '2020-02-25 20:21:26'),
(1211, 'default', 'updated', 17, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170122020\",\"skpd_id\":\"17\",\"name\":\"Iwan Dika, A.Md. A.B\",\"ktp\":\"6111010110950003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":\"Jalan Transkalimantan Ambawang Kuala, Kubu Raya\",\"religion\":\"islam\",\"phone_number\":\"085750484274\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170122020\",\"skpd_id\":\"17\",\"name\":\"Iwan Dika, A.Md. A.B\",\"ktp\":\"6111010110950003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":\"Jalan Transkalimantan Ambawang Kuala, Kubu Raya\",\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:22:08', '2020-02-25 20:22:08'),
(1212, 'default', 'updated', 16, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170112020\",\"skpd_id\":\"17\",\"name\":\"Kadarusman, A.Md\",\"ktp\":\"6112060502930003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170112020\",\"skpd_id\":\"17\",\"name\":\"Kadarusman, A.Md\",\"ktp\":\"0\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:24:52', '2020-02-25 20:24:52'),
(1213, 'default', 'created', 16, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"003.2\\/SPK\\/PJAK-Keu\\/TU.DKI\\/2020\",\"employee_id\":\"11\",\"skpd_id\":\"17\",\"program_id\":\"32\",\"activity_id\":\"33\",\"work_package_id\":\"61\",\"location_id\":\"87\",\"position_id\":\"36\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"64\",\"bonus\":\"2970000\"}}', '2020-02-25 20:30:26', '2020-02-25 20:30:26'),
(1214, 'default', 'created', 48, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"16\",\"salary_component_id\":\"1\",\"nominal\":\"2970000\"}}', '2020-02-25 20:30:26', '2020-02-25 20:30:26'),
(1215, 'default', 'updated', 16, 'App\\Models\\Employee', 39, 'App\\Models\\User', '{\"attributes\":{\"nipj\":\"0170112020\",\"skpd_id\":\"17\",\"name\":\"Kadarusman, A.Md\",\"ktp\":\"6112060502930003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"089693542644\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null},\"old\":{\"nipj\":\"0170112020\",\"skpd_id\":\"17\",\"name\":\"Kadarusman, A.Md\",\"ktp\":\"6112060502930003\",\"npwp\":null,\"gender\":\"laki-laki\",\"address\":null,\"religion\":\"islam\",\"phone_number\":\"0\",\"bank_name\":\"pasar\",\"account_number\":null,\"bpjs_healthcare\":null,\"bpjs_social_security\":null}}', '2020-02-25 20:40:36', '2020-02-25 20:40:36'),
(1216, 'default', 'created', 34, 'App\\Models\\Program', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.18\",\"name\":\"Program Pengembangan Pengelolaan Tata Pemerintahan berbasis E-Government\",\"skpd_id\":\"17\"}}', '2020-02-25 21:08:39', '2020-02-25 21:08:39'),
(1217, 'default', 'created', 35, 'App\\Models\\Activity', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.18.004\",\"name\":\"Operasional dan Maintenance Perangkat Server\",\"program_id\":\"34\"}}', '2020-02-25 21:10:11', '2020-02-25 21:10:11'),
(1218, 'default', 'created', 63, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.18.004.1\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi (Operator Server)\",\"activity_id\":\"35\"}}', '2020-02-25 21:22:25', '2020-02-25 21:22:25'),
(1219, 'default', 'created', 64, 'App\\Models\\WorkPackage', 39, 'App\\Models\\User', '{\"attributes\":{\"code\":\"2.10.2.10.01.00.18.004.2\",\"name\":\"Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi (Operator Jaringan)\",\"activity_id\":\"35\"}}', '2020-02-25 21:31:32', '2020-02-25 21:31:32'),
(1220, 'default', 'created', 17, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"007.2\\/SPK\\/OMPS-TTI\\/PET.DKI\\/2020\",\"employee_id\":\"16\",\"skpd_id\":\"17\",\"program_id\":\"34\",\"activity_id\":\"35\",\"work_package_id\":\"64\",\"location_id\":\"88\",\"position_id\":\"36\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2970000\"}}', '2020-02-25 21:42:30', '2020-02-25 21:42:30'),
(1221, 'default', 'created', 49, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"17\",\"salary_component_id\":\"1\",\"nominal\":\"2970000\"}}', '2020-02-25 21:42:30', '2020-02-25 21:42:30'),
(1222, 'default', 'created', 18, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"008.2\\/SPK\\/OMPS-TTI\\/PET.DKI\\/2020\",\"employee_id\":\"15\",\"skpd_id\":\"17\",\"program_id\":\"34\",\"activity_id\":\"35\",\"work_package_id\":\"63\",\"location_id\":\"88\",\"position_id\":\"36\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 21:49:03', '2020-02-25 21:49:03'),
(1223, 'default', 'created', 50, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"18\",\"salary_component_id\":\"1\",\"nominal\":\"2950000\"}}', '2020-02-25 21:49:03', '2020-02-25 21:49:03'),
(1224, 'default', 'created', 19, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"009.2\\/SPK\\/OMPS-TTI\\/PET.DKI\\/2020\",\"employee_id\":\"14\",\"skpd_id\":\"17\",\"program_id\":\"34\",\"activity_id\":\"35\",\"work_package_id\":\"63\",\"location_id\":\"88\",\"position_id\":\"36\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 21:51:18', '2020-02-25 21:51:18'),
(1225, 'default', 'created', 51, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"19\",\"salary_component_id\":\"1\",\"nominal\":\"2950000\"}}', '2020-02-25 21:51:18', '2020-02-25 21:51:18'),
(1226, 'default', 'updated', 89, 'App\\Models\\Location', 39, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Ruangan Bidang Informasi Komunikasi Publik (IKP) Dinas Komunikasi dan Informatika Pontianak\",\"skpd_id\":\"17\"},\"old\":{\"name\":\"Ruangan Bidang Informasi Komunikasi Publik (IKP)\",\"skpd_id\":\"17\"}}', '2020-02-25 21:54:04', '2020-02-25 21:54:04'),
(1227, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 22:41:16', '2020-02-25 22:41:16');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1228, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 22:41:16', '2020-02-25 22:41:16'),
(1229, 'default', 'created', 52, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-25 22:41:16', '2020-02-25 22:41:16'),
(1230, 'default', 'created', 53, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"2\",\"nominal\":\"2750000\"}}', '2020-02-25 22:41:16', '2020-02-25 22:41:16'),
(1231, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-25 23:25:14', '2020-02-25 23:25:14'),
(1232, 'default', 'updated', 1, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 23:38:47', '2020-02-25 23:38:47'),
(1233, 'default', 'updated', 1, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"2\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-25 23:38:47', '2020-02-25 23:38:47'),
(1234, 'default', 'created', 54, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"1\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-25 23:38:47', '2020-02-25 23:38:47'),
(1235, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-26 00:09:01', '2020-02-26 00:09:01'),
(1236, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-26 00:09:01', '2020-02-26 00:09:01'),
(1237, 'default', 'created', 55, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-26 00:09:01', '2020-02-26 00:09:01'),
(1238, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-26 00:33:39', '2020-02-26 00:33:39'),
(1239, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"}}', '2020-02-26 00:33:39', '2020-02-26 00:33:39'),
(1240, 'default', 'created', 56, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-02-26 00:33:39', '2020-02-26 00:33:39'),
(1241, 'default', 'created', 57, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"2\",\"nominal\":\"2750000\"}}', '2020-02-26 00:33:39', '2020-02-26 00:33:39'),
(1242, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-02-26 00:51:33', '2020-02-26 00:51:33'),
(1243, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 17:54:16', '2020-02-26 17:54:16'),
(1244, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 18:57:43', '2020-02-26 18:57:43'),
(1245, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 21:33:04', '2020-02-26 21:33:04'),
(1246, 'login', 'login', 41, 'App\\Models\\User', 41, 'App\\Models\\User', '[]', '2020-02-26 21:36:32', '2020-02-26 21:36:32'),
(1247, 'login', 'login', 42, 'App\\Models\\User', 42, 'App\\Models\\User', '[]', '2020-02-26 21:37:34', '2020-02-26 21:37:34'),
(1248, 'login', 'login', 41, 'App\\Models\\User', 41, 'App\\Models\\User', '[]', '2020-02-26 21:43:40', '2020-02-26 21:43:40'),
(1249, 'login', 'login', 42, 'App\\Models\\User', 42, 'App\\Models\\User', '[]', '2020-02-26 21:44:56', '2020-02-26 21:44:56'),
(1250, 'login', 'login', 41, 'App\\Models\\User', 41, 'App\\Models\\User', '[]', '2020-02-26 21:46:02', '2020-02-26 21:46:02'),
(1251, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 21:46:43', '2020-02-26 21:46:43'),
(1252, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 21:47:03', '2020-02-26 21:47:03'),
(1253, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-02-26 21:47:41', '2020-02-26 21:47:41'),
(1254, 'login', 'login', 41, 'App\\Models\\User', 41, 'App\\Models\\User', '[]', '2020-02-26 21:48:32', '2020-02-26 21:48:32'),
(1255, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 21:48:49', '2020-02-26 21:48:49'),
(1256, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-02-26 21:49:11', '2020-02-26 21:49:11'),
(1257, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-26 21:49:38', '2020-02-26 21:49:38'),
(1258, 'login', 'login', 40, 'App\\Models\\User', 40, 'App\\Models\\User', '[]', '2020-02-26 21:49:53', '2020-02-26 21:49:53'),
(1259, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-27 00:19:28', '2020-02-27 00:19:28'),
(1260, 'login', 'login', 26, 'App\\Models\\User', 26, 'App\\Models\\User', '[]', '2020-02-27 17:57:04', '2020-02-27 17:57:04'),
(1261, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-27 17:57:51', '2020-02-27 17:57:51'),
(1262, 'default', 'created', 15, 'App\\Models\\Assessment', 39, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"4\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:00:55', '2020-02-27 18:00:55'),
(1263, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-02-27 18:08:44', '2020-02-27 18:08:44'),
(1264, 'login', 'login', 40, 'App\\Models\\User', 40, 'App\\Models\\User', '[]', '2020-02-27 18:09:07', '2020-02-27 18:09:07'),
(1265, 'default', 'updated', 143, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1266, 'default', 'updated', 141, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1267, 'default', 'updated', 144, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1268, 'default', 'updated', 146, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1269, 'default', 'updated', 142, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1270, 'default', 'updated', 145, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:15\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:11:34', '2020-02-27 18:11:34'),
(1271, 'default', 'updated', 146, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-03\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:12:03', '2020-02-27 18:12:03'),
(1272, 'default', 'created', 276, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1273, 'default', 'created', 277, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1274, 'default', 'created', 278, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1275, 'default', 'created', 279, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1276, 'default', 'created', 280, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1277, 'default', 'created', 281, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-04\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:09', '2020-02-27 18:13:09'),
(1278, 'default', 'created', 282, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1279, 'default', 'created', 283, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1280, 'default', 'created', 284, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1281, 'default', 'created', 285, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1282, 'default', 'created', 286, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1283, 'default', 'created', 287, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-05\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:13:54', '2020-02-27 18:13:54'),
(1284, 'default', 'created', 288, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1285, 'default', 'created', 289, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1286, 'default', 'created', 290, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1287, 'default', 'created', 291, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1288, 'default', 'created', 292, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1289, 'default', 'created', 293, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-06\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:21', '2020-02-27 18:14:21'),
(1290, 'default', 'created', 294, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1291, 'default', 'created', 295, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1292, 'default', 'created', 297, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1293, 'default', 'created', 296, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1294, 'default', 'created', 298, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1295, 'default', 'created', 299, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-07\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:14:47', '2020-02-27 18:14:47'),
(1296, 'default', 'created', 301, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1297, 'default', 'created', 300, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1298, 'default', 'created', 302, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1299, 'default', 'created', 303, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1300, 'default', 'created', 304, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1301, 'default', 'created', 305, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-10\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1302, 'default', 'created', 22, 'App\\Models\\HistoryLeaveEmployee', 40, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-02-10\",\"end_date\":\"2020-02-10\",\"contract_id\":\"9\",\"employee_id\":\"9\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-27 18:16:27', '2020-02-27 18:16:27'),
(1303, 'default', 'created', 306, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1304, 'default', 'created', 307, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1305, 'default', 'created', 308, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1306, 'default', 'created', 310, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1307, 'default', 'created', 309, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1308, 'default', 'created', 311, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-11\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:16:52', '2020-02-27 18:16:52'),
(1309, 'default', 'created', 312, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1310, 'default', 'created', 313, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1311, 'default', 'created', 314, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1312, 'default', 'created', 315, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1313, 'default', 'created', 316, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1314, 'default', 'created', 317, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-12\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:21', '2020-02-27 18:17:21'),
(1315, 'default', 'created', 318, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1316, 'default', 'created', 319, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1317, 'default', 'created', 320, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1318, 'default', 'created', 321, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1319, 'default', 'created', 323, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1320, 'default', 'created', 322, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-13\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:17:47', '2020-02-27 18:17:47'),
(1321, 'default', 'created', 324, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1322, 'default', 'created', 325, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1323, 'default', 'created', 326, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1324, 'default', 'created', 327, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1325, 'default', 'created', 328, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1326, 'default', 'created', 329, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-14\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1327, 'default', 'created', 23, 'App\\Models\\HistoryLeaveEmployee', 40, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-02-14\",\"end_date\":\"2020-02-14\",\"contract_id\":\"8\",\"employee_id\":\"8\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-27 18:18:31', '2020-02-27 18:18:31'),
(1328, 'default', 'created', 331, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1329, 'default', 'created', 330, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1330, 'default', 'created', 332, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1331, 'default', 'created', 333, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1332, 'default', 'created', 334, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1333, 'default', 'created', 335, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-17\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:02', '2020-02-27 18:19:02'),
(1334, 'default', 'created', 336, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1335, 'default', 'created', 337, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1336, 'default', 'created', 338, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1337, 'default', 'created', 339, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1338, 'default', 'created', 340, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1339, 'default', 'created', 341, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-18\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:19:46', '2020-02-27 18:19:46'),
(1340, 'default', 'created', 342, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1341, 'default', 'created', 343, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1342, 'default', 'created', 345, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1343, 'default', 'created', 344, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1344, 'default', 'created', 346, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1345, 'default', 'created', 347, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-19\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:21', '2020-02-27 18:20:21'),
(1346, 'default', 'created', 348, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1347, 'default', 'created', 349, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1348, 'default', 'created', 351, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1349, 'default', 'created', 350, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1350, 'default', 'created', 352, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1351, 'default', 'created', 353, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-20\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:20:45', '2020-02-27 18:20:45'),
(1352, 'default', 'created', 354, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1353, 'default', 'created', 355, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1354, 'default', 'created', 356, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1355, 'default', 'created', 357, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1356, 'default', 'created', 359, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1357, 'default', 'created', 358, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-21\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:21:15', '2020-02-27 18:21:15'),
(1358, 'default', 'created', 360, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1359, 'default', 'created', 361, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1360, 'default', 'created', 362, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1361, 'default', 'created', 363, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1362, 'default', 'created', 364, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"not_present\",\"from\":\"00:00\",\"to\":\"00:00\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"1\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1363, 'default', 'created', 365, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-24\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1364, 'default', 'created', 24, 'App\\Models\\HistoryLeaveEmployee', 40, 'App\\Models\\User', '{\"attributes\":{\"start_date\":\"2020-02-24\",\"end_date\":\"2020-02-24\",\"contract_id\":\"8\",\"employee_id\":\"8\",\"leave_type\":\"0\",\"total_day\":\"1\",\"dates\":\"null\"}}', '2020-02-27 18:22:07', '2020-02-27 18:22:07'),
(1365, 'default', 'updated', 275, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1366, 'default', 'updated', 270, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1367, 'default', 'updated', 273, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1368, 'default', 'updated', 271, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1369, 'default', 'updated', 274, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1370, 'default', 'updated', 272, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"},\"old\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-25\",\"attendance\":\"attend\",\"from\":\"08:00\",\"to\":\"17:00\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:23:41', '2020-02-27 18:23:41'),
(1371, 'default', 'created', 366, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1372, 'default', 'created', 367, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1373, 'default', 'created', 368, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1374, 'default', 'created', 369, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1375, 'default', 'created', 370, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1376, 'default', 'created', 371, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-26\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:22', '2020-02-27 18:24:22'),
(1377, 'default', 'created', 372, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1378, 'default', 'created', 373, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1379, 'default', 'created', 374, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1380, 'default', 'created', 375, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"0\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1381, 'default', 'created', 376, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1382, 'default', 'created', 377, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-27\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:24:59', '2020-02-27 18:24:59'),
(1383, 'default', 'created', 378, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1384, 'default', 'created', 379, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1385, 'default', 'created', 380, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1386, 'default', 'created', 381, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"contract_id\":\"9\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1387, 'default', 'created', 382, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1388, 'default', 'created', 383, 'App\\Models\\Attendance', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"date\":\"2020-02-28\",\"attendance\":\"attend\",\"from\":\"07:15\",\"to\":\"15:30\",\"ceremony\":\"1\",\"late\":\"0\",\"leave_type\":\"0\",\"cut_leave\":\"0\"}}', '2020-02-27 18:25:22', '2020-02-27 18:25:22'),
(1389, 'default', 'created', 16, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"10\",\"contract_id\":\"10\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:26:13', '2020-02-27 18:26:13'),
(1390, 'default', 'created', 17, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"2\",\"contract_id\":\"1\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:26:31', '2020-02-27 18:26:31'),
(1391, 'default', 'created', 18, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"8\",\"contract_id\":\"8\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:26:54', '2020-02-27 18:26:54'),
(1392, 'default', 'created', 19, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"7\",\"contract_id\":\"7\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"4\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:27:16', '2020-02-27 18:27:16'),
(1393, 'default', 'created', 20, 'App\\Models\\Assessment', 40, 'App\\Models\\User', '{\"attributes\":{\"month\":\"2\",\"year\":\"2020\",\"employee_id\":\"6\",\"contract_id\":\"6\",\"work_package_id\":\"59\",\"work_completion_rate\":\"3\",\"work_completion_time\":\"3\",\"work_quality\":\"3\",\"obidence_on_obligation\":\"4\",\"obidence_on_rule\":\"4\"}}', '2020-02-27 18:27:34', '2020-02-27 18:27:34'),
(1394, 'default', 'created', 8, 'App\\Models\\WorkInspection', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"10\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"10\",\"number\":\"002.1.b\\/BAHPP\\/OPCKP-P.MM\\/TKPBET.DKI\\/II\\/2020\",\"date\":\"2020-02-28\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"002.2\\/SPK\\/OPCKP-P.MM\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Desain Grafis dan Multimedia) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 002.2\\/SPK\\/OPCKP-P.MM\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 002.3\\/SPMK\\/OPCKP-P.MM\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001\\/ADD\\/SPK\\/OPCKP-P.MM\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-27 18:38:37', '2020-02-27 18:38:37'),
(1395, 'default', 'created', 9, 'App\\Models\\WorkInspection', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"7\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"7\",\"number\":\"002.1.f\\/BAHPP\\/OPCKP-P.Operator\\/TKPBET.DKI\\/II\\/2020\",\"date\":\"2020-02-28\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"001.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan D3) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 001.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 001.3\\/SPMK\\/OPCKP-P.Operator\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.2\\/ADD\\/SPK\\/OPCKPP.Operator\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-27 18:48:58', '2020-02-27 18:48:58'),
(1396, 'default', 'created', 10, 'App\\Models\\WorkInspection', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"9\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"9\",\"number\":\"002.1.a\\/BAHPP\\/OPCKP-P.Operator\\/TKPBET.DKI\\/II\\/2020\",\"date\":\"2020-02-28\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan S1) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 004.2\\/SPK\\/OPCKP-P.Operator\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 004.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.1\\/ADD\\/SPK\\/OPCKPP.Operator\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-27 18:54:51', '2020-02-27 18:54:51'),
(1397, 'default', 'created', 11, 'App\\Models\\WorkInspection', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"8\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"8\",\"number\":\"002.1.e\\/BAHPP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/II\\/2020\",\"date\":\"2020-02-28\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi D3) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 003.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 003.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.3\\/ADD\\/SPK\\/OPCKPP.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-27 20:29:23', '2020-02-27 20:29:23'),
(1398, 'default', 'created', 12, 'App\\Models\\WorkInspection', 40, 'App\\Models\\User', '{\"attributes\":{\"employee_id\":\"2\",\"skpd_id\":\"17\",\"functionary_id\":\"59\",\"functionary_pptk_id\":\"57\",\"functionary_pptk2_id\":\"9999\",\"contract_id\":\"1\",\"number\":\"002.1.c\\/BAHPP\\/OPCKP-P.Prog\\/TKPBET.DKI\\/II\\/2020\",\"date\":\"2020-02-28\",\"spk_date\":\"2020-01-02\",\"spk_number\":\"005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"section_1\":\"section1\",\"section_2\":\"<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:<\\/p>\",\"section_3\":\"<p>Berdasarkan :<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Surat Perintah Kerja (SPK) Nomor 005.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Surat Perintah Mulai Kerja (SPMK) Nomor 005.3\\/SPMK\\/OPCKP-P.Prog\\/PET.DKI\\/2020 tanggal 2 Januari 2020<\\/li>\\r\\n\\t<li>Amandemen \\/ Addendum Pertama Surat Perintah Kerja Nomor 001.1\\/ADD\\/SPK\\/OPCKP-P.Prog\\/TKPBET.DKI\\/2020 tanggal 27 Januari 2020<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.<\\/p>\\r\\n\\r\\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.<\\/p>\"}}', '2020-02-27 20:37:54', '2020-02-27 20:37:54'),
(1399, 'login', 'login', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '[]', '2020-02-29 23:39:43', '2020-02-29 23:39:43'),
(1400, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-03 20:23:52', '2020-03-03 20:23:52'),
(1401, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-09 18:23:42', '2020-03-09 18:23:42'),
(1402, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-03-09 18:30:41', '2020-03-09 18:30:41'),
(1403, 'default', 'updated', 6, 'App\\Models\\Contract', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"active\",\"occupation_id\":\"57\",\"bonus\":\"2750000\"},\"old\":{\"number\":\"006.2\\/SPK\\/OPCKP-P.Prog\\/PET.DKI\\/2020\",\"employee_id\":\"6\",\"skpd_id\":\"17\",\"program_id\":\"31\",\"activity_id\":\"31\",\"work_package_id\":\"59\",\"location_id\":\"86\",\"position_id\":\"37\",\"start_date\":\"2020-01-02\",\"end_date\":\"2020-12-31\",\"status\":\"non_active\",\"occupation_id\":\"57\",\"bonus\":\"0\"}}', '2020-03-09 18:30:41', '2020-03-09 18:30:41'),
(1404, 'default', 'created', 58, 'App\\Models\\Salary', 39, 'App\\Models\\User', '{\"attributes\":{\"contract_id\":\"6\",\"salary_component_id\":\"1\",\"nominal\":\"3050000\"}}', '2020-03-09 18:30:41', '2020-03-09 18:30:41'),
(1405, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-09 18:48:50', '2020-03-09 18:48:50'),
(1406, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-03-09 18:49:21', '2020-03-09 18:49:21'),
(1407, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-09 18:49:57', '2020-03-09 18:49:57'),
(1408, 'login', 'login', 43, 'App\\Models\\User', 43, 'App\\Models\\User', '[]', '2020-03-09 18:52:15', '2020-03-09 18:52:15'),
(1409, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-10 17:59:33', '2020-03-10 17:59:33'),
(1410, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-15 21:29:06', '2020-03-15 21:29:06'),
(1411, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-16 00:11:32', '2020-03-16 00:11:32'),
(1412, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-16 18:03:36', '2020-03-16 18:03:36'),
(1413, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-03-16 18:08:22', '2020-03-16 18:08:22'),
(1414, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-16 19:48:22', '2020-03-16 19:48:22'),
(1415, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-17 18:00:38', '2020-03-17 18:00:38'),
(1416, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-17 20:56:57', '2020-03-17 20:56:57'),
(1417, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 00:52:42', '2020-03-18 00:52:42'),
(1418, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 18:39:53', '2020-03-18 18:39:53'),
(1419, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 18:51:12', '2020-03-18 18:51:12'),
(1420, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 18:55:51', '2020-03-18 18:55:51'),
(1421, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 21:12:23', '2020-03-18 21:12:23'),
(1422, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-18 23:36:41', '2020-03-18 23:36:41'),
(1423, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-19 21:54:04', '2020-03-19 21:54:04'),
(1424, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-03-19 21:55:34', '2020-03-19 21:55:34'),
(1425, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-21 02:42:49', '2020-03-21 02:42:49'),
(1426, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-21 03:23:03', '2020-03-21 03:23:03'),
(1427, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-21 06:24:19', '2020-03-21 06:24:19'),
(1428, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-22 19:03:17', '2020-03-22 19:03:17'),
(1429, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-22 19:16:08', '2020-03-22 19:16:08'),
(1430, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-22 19:20:50', '2020-03-22 19:20:50'),
(1431, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-22 19:51:13', '2020-03-22 19:51:13'),
(1432, 'login', 'login', 8, 'App\\Models\\User', 8, 'App\\Models\\User', '[]', '2020-03-22 19:58:05', '2020-03-22 19:58:05'),
(1433, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-23 19:11:42', '2020-03-23 19:11:42'),
(1434, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-23 22:03:30', '2020-03-23 22:03:30'),
(1435, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-24 00:08:17', '2020-03-24 00:08:17'),
(1436, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-24 23:48:31', '2020-03-24 23:48:31'),
(1437, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-25 03:02:43', '2020-03-25 03:02:43'),
(1438, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-25 03:03:25', '2020-03-25 03:03:25'),
(1439, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-25 23:32:08', '2020-03-25 23:32:08'),
(1440, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-26 21:31:48', '2020-03-26 21:31:48'),
(1441, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-29 08:12:23', '2020-03-29 08:12:23'),
(1442, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-29 09:20:59', '2020-03-29 09:20:59'),
(1443, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-03-31 19:20:25', '2020-03-31 19:20:25'),
(1444, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-01 17:46:34', '2020-04-01 17:46:34'),
(1445, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-01 18:49:25', '2020-04-01 18:49:25'),
(1446, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-01 23:52:47', '2020-04-01 23:52:47'),
(1447, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-02 19:13:23', '2020-04-02 19:13:23'),
(1448, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-02 19:13:45', '2020-04-02 19:13:45'),
(1449, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-02 23:50:40', '2020-04-02 23:50:40'),
(1450, 'default', 'updated', 17, 'App\\Models\\Skpd', 39, 'App\\Models\\User', '{\"attributes\":{\"number\":\"017\",\"name\":\"Dinas Komunikasi dan Informatika\",\"address\":\"Jalan Rahadi Oesman No.3\",\"phone_number\":\"0561 - 733041\",\"fax\":\"0561 - 733041\",\"post_code\":\"78111\",\"website\":\"www.diskominfo.pontianakkota.go.id\",\"email\":\"diskominfo@pontianakkota.go.id\"},\"old\":{\"number\":\"017\",\"name\":\"Dinas Komunikasi dan Informatika\",\"address\":\"Jl. Rahadi Oesman No.3\",\"phone_number\":\"0561 733041\",\"fax\":\"0561 733041\",\"post_code\":\"78111\",\"website\":\"www.diskominfo.pontianakkota.go.id\",\"email\":\"diskominfo@pontianakkota.go.id\"}}', '2020-04-03 00:06:10', '2020-04-03 00:06:10'),
(1451, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-05 20:01:24', '2020-04-05 20:01:24'),
(1452, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-05 20:01:39', '2020-04-05 20:01:39'),
(1453, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-05 23:44:33', '2020-04-05 23:44:33'),
(1454, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-06 18:21:11', '2020-04-06 18:21:11'),
(1455, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-06 18:22:19', '2020-04-06 18:22:19'),
(1456, 'login', 'login', 39, 'App\\Models\\User', 39, 'App\\Models\\User', '[]', '2020-04-07 18:29:23', '2020-04-07 18:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `work_package_id` int(11) NOT NULL,
  `work_completion_rate` int(11) NOT NULL,
  `work_completion_time` int(11) NOT NULL,
  `work_quality` int(11) NOT NULL,
  `obidence_on_obligation` int(11) NOT NULL,
  `obidence_on_rule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `created_at`, `updated_at`, `month`, `year`, `employee_id`, `contract_id`, `work_package_id`, `work_completion_rate`, `work_completion_time`, `work_quality`, `obidence_on_obligation`, `obidence_on_rule`) VALUES
(1, '2019-11-24 17:31:18', '2019-11-24 17:31:18', 11, 2019, 2, 1, 57, 3, 3, 4, 4, 4),
(2, '2019-11-24 19:18:20', '2019-11-24 19:18:20', 11, 2019, 3, 2, 58, 4, 4, 4, 4, 4),
(3, '2019-11-24 19:27:15', '2019-11-24 19:27:15', 11, 2019, 4, 3, 58, 4, 3, 4, 4, 3),
(4, '2019-11-28 00:11:35', '2019-11-28 00:11:35', 11, 2019, 5, 4, 57, 4, 4, 3, 4, 4),
(5, '2019-12-01 08:33:05', '2019-12-01 08:33:05', 11, 2019, 1, 5, 57, 3, 4, 4, 4, 4),
(7, '2020-01-16 17:28:31', '2020-01-16 17:28:31', 1, 2020, 2, 1, 57, 4, 4, 4, 4, 4),
(9, '2020-02-03 01:17:53', '2020-02-03 01:17:53', 1, 2020, 9, 9, 59, 3, 4, 3, 4, 4),
(10, '2020-02-03 01:18:39', '2020-02-03 01:18:39', 1, 2020, 10, 10, 59, 3, 3, 4, 4, 4),
(11, '2020-02-03 01:18:53', '2020-02-03 01:18:53', 1, 2020, 8, 8, 59, 3, 3, 3, 4, 4),
(12, '2020-02-03 01:19:16', '2020-02-03 01:19:16', 1, 2020, 7, 7, 59, 3, 3, 4, 4, 4),
(13, '2020-02-03 01:19:39', '2020-02-03 01:19:39', 1, 2020, 2, 1, 59, 3, 3, 4, 4, 4),
(14, '2020-02-03 01:19:50', '2020-02-03 01:19:50', 1, 2020, 6, 6, 59, 3, 3, 3, 4, 4),
(15, '2020-02-27 18:00:55', '2020-02-27 18:00:55', 2, 2020, 9, 9, 59, 3, 4, 3, 4, 4),
(16, '2020-02-27 18:26:13', '2020-02-27 18:26:13', 2, 2020, 10, 10, 59, 3, 3, 4, 4, 4),
(17, '2020-02-27 18:26:31', '2020-02-27 18:26:31', 2, 2020, 2, 1, 59, 3, 3, 4, 4, 4),
(18, '2020-02-27 18:26:54', '2020-02-27 18:26:54', 2, 2020, 8, 8, 59, 3, 3, 3, 4, 4),
(19, '2020-02-27 18:27:16', '2020-02-27 18:27:16', 2, 2020, 7, 7, 59, 3, 3, 4, 4, 4),
(20, '2020-02-27 18:27:34', '2020-02-27 18:27:34', 2, 2020, 6, 6, 59, 3, 3, 3, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `work_package_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ceremony` tinyint(1) NOT NULL,
  `late` tinyint(1) NOT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_type` int(11) NOT NULL DEFAULT 0,
  `cut_leave` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `created_at`, `updated_at`, `employee_id`, `contract_id`, `work_package_id`, `date`, `from`, `to`, `ceremony`, `late`, `attendance`, `leave_type`, `cut_leave`) VALUES
(1, '2019-11-24 16:49:48', '2019-11-24 16:49:48', 2, 1, 57, '2019-11-25', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(2, '2019-11-24 16:51:14', '2019-11-24 16:51:14', 2, 1, 57, '2019-11-01', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(3, '2019-11-24 17:28:03', '2019-11-24 17:28:03', 2, 1, 57, '2019-11-02', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(4, '2019-11-24 17:28:11', '2019-11-24 17:33:49', 2, 1, 57, '2019-11-03', '00:00', '00:00', 0, 0, 'not_present', 0, 0),
(5, '2019-11-24 17:28:14', '2019-11-24 17:28:14', 2, 1, 57, '2019-11-04', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(6, '2019-11-24 17:28:17', '2019-11-24 17:28:17', 2, 1, 57, '2019-11-05', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(7, '2019-11-24 17:28:20', '2019-11-24 17:28:20', 2, 1, 57, '2019-11-06', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(8, '2019-11-24 17:28:22', '2019-11-24 17:28:22', 2, 1, 57, '2019-11-07', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(9, '2019-11-24 17:28:25', '2019-11-24 17:28:25', 2, 1, 57, '2019-11-08', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(10, '2019-11-24 17:28:28', '2019-11-24 17:28:28', 2, 1, 57, '2019-11-09', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(11, '2019-11-24 17:28:32', '2019-11-24 17:28:32', 2, 1, 57, '2019-11-10', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(12, '2019-11-24 17:28:35', '2019-11-24 17:28:35', 2, 1, 57, '2019-11-11', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(13, '2019-11-24 17:28:38', '2019-11-24 17:28:38', 2, 1, 57, '2019-11-12', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(14, '2019-11-24 17:28:40', '2019-11-24 17:28:40', 2, 1, 57, '2019-11-13', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(15, '2019-11-24 17:28:43', '2019-11-24 17:28:43', 2, 1, 57, '2019-11-14', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(16, '2019-11-24 17:28:46', '2019-11-24 17:28:46', 2, 1, 57, '2019-11-15', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(17, '2019-11-24 17:28:52', '2019-11-24 17:28:52', 2, 1, 57, '2019-11-16', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(18, '2019-11-24 17:28:55', '2019-11-24 17:28:55', 2, 1, 57, '2019-11-17', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(19, '2019-11-24 17:28:58', '2019-11-24 17:28:58', 2, 1, 57, '2019-11-18', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(20, '2019-11-24 17:29:09', '2019-11-24 17:29:09', 2, 1, 57, '2019-11-19', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(21, '2019-11-24 17:29:13', '2019-11-24 17:30:17', 2, 1, 57, '2019-11-20', '00:00', '00:00', 0, 0, 'not_present', 0, 0),
(22, '2019-11-24 17:29:15', '2019-11-24 17:29:15', 2, 1, 57, '2019-11-21', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(23, '2019-11-24 17:29:20', '2019-11-24 17:29:20', 2, 1, 57, '2019-11-22', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(24, '2019-11-24 17:29:22', '2019-11-24 17:29:22', 2, 1, 57, '2019-11-23', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(25, '2019-11-24 17:29:27', '2019-11-24 17:29:27', 2, 1, 57, '2019-11-24', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(26, '2019-11-24 17:29:34', '2019-11-24 17:29:34', 2, 1, 57, '2019-11-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(27, '2019-11-24 17:29:37', '2019-11-24 17:29:37', 2, 1, 57, '2019-11-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(28, '2019-11-24 17:29:48', '2019-11-24 17:31:01', 2, 1, 57, '2019-11-28', '00:00', '00:00', 0, 0, 'attend', 0, 0),
(29, '2019-11-24 19:14:49', '2019-11-24 19:14:49', 3, 2, 58, '2019-11-01', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(30, '2019-11-24 19:14:54', '2019-11-24 19:14:54', 3, 2, 58, '2019-11-02', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(31, '2019-11-24 19:14:59', '2019-11-24 19:14:59', 3, 2, 58, '2019-11-03', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(32, '2019-11-24 19:16:02', '2019-11-24 19:16:02', 3, 2, 58, '2019-11-04', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(33, '2019-11-24 19:17:54', '2019-11-24 19:17:54', 3, 2, 58, '2019-11-05', '00:00', '00:00', 0, 0, 'leave', 1, 1),
(34, '2019-11-24 19:17:54', '2019-11-24 19:17:54', 3, 2, 58, '2019-11-06', '00:00', '00:00', 0, 0, 'leave', 1, 1),
(35, '2019-11-24 19:17:54', '2019-11-24 19:17:54', 3, 2, 58, '2019-11-07', '00:00', '00:00', 0, 0, 'leave', 1, 1),
(36, '2019-11-24 19:17:54', '2019-11-24 19:17:54', 3, 2, 58, '2019-11-08', '00:00', '00:00', 0, 0, 'leave', 1, 1),
(37, '2019-11-24 19:22:56', '2019-11-24 19:22:56', 4, 3, 58, '2019-11-01', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(38, '2019-11-24 19:24:15', '2019-11-24 19:24:15', 4, 3, 58, '2019-11-04', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(39, '2019-11-24 19:24:20', '2019-11-24 19:24:20', 4, 3, 58, '2019-11-05', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(40, '2019-11-24 19:24:25', '2019-11-24 19:24:25', 4, 3, 58, '2019-11-06', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(41, '2019-11-24 19:24:32', '2019-11-24 19:24:32', 4, 3, 58, '2019-11-07', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(42, '2019-11-24 19:24:37', '2019-11-24 19:24:37', 4, 3, 58, '2019-11-08', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(43, '2019-11-24 19:24:49', '2019-11-24 19:24:49', 4, 3, 58, '2019-11-11', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(44, '2019-11-24 19:24:49', '2019-11-24 19:24:49', 3, 2, 58, '2019-11-11', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(45, '2019-11-24 19:24:56', '2019-11-24 19:24:56', 3, 2, 58, '2019-11-12', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(46, '2019-11-24 19:24:56', '2019-11-24 19:24:56', 4, 3, 58, '2019-11-12', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(47, '2019-11-24 19:25:02', '2019-11-24 19:25:02', 4, 3, 58, '2019-11-13', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(48, '2019-11-24 19:25:02', '2019-11-24 19:25:02', 3, 2, 58, '2019-11-13', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(49, '2019-11-24 19:25:10', '2019-11-24 19:25:10', 4, 3, 58, '2019-11-14', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(50, '2019-11-24 19:25:10', '2019-11-24 19:25:10', 3, 2, 58, '2019-11-14', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(51, '2019-11-24 19:25:16', '2019-11-24 19:25:16', 4, 3, 58, '2019-11-15', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(52, '2019-11-24 19:25:16', '2019-11-24 19:25:16', 3, 2, 58, '2019-11-15', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(53, '2019-11-24 19:25:50', '2019-11-24 19:25:50', 4, 3, 58, '2019-11-18', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(54, '2019-11-24 19:25:50', '2019-11-24 19:25:50', 3, 2, 58, '2019-11-18', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(55, '2019-11-24 19:26:01', '2019-11-24 19:26:01', 3, 2, 58, '2019-11-19', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(56, '2019-11-24 19:26:01', '2019-11-24 19:26:01', 4, 3, 58, '2019-11-19', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(57, '2019-11-24 19:26:08', '2019-11-24 19:26:08', 3, 2, 58, '2019-11-20', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(58, '2019-11-24 19:26:08', '2019-11-24 19:26:08', 4, 3, 58, '2019-11-20', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(59, '2019-11-24 19:26:12', '2019-11-24 19:26:12', 4, 3, 58, '2019-11-21', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(60, '2019-11-24 19:26:12', '2019-11-24 19:26:12', 3, 2, 58, '2019-11-21', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(61, '2019-11-24 19:26:18', '2019-11-24 19:26:18', 3, 2, 58, '2019-11-22', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(62, '2019-11-24 19:26:18', '2019-11-24 19:26:18', 4, 3, 58, '2019-11-22', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(63, '2019-11-24 19:26:27', '2019-11-24 19:26:27', 4, 3, 58, '2019-11-25', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(64, '2019-11-24 19:26:27', '2019-11-24 19:26:27', 3, 2, 58, '2019-11-25', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(65, '2019-11-24 19:26:39', '2019-11-24 19:26:39', 3, 2, 58, '2019-11-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(66, '2019-11-24 19:26:39', '2019-11-24 19:26:39', 4, 3, 58, '2019-11-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(67, '2019-11-24 19:26:43', '2019-11-24 19:26:43', 3, 2, 58, '2019-11-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(68, '2019-11-24 19:26:43', '2019-11-24 19:26:43', 4, 3, 58, '2019-11-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(69, '2019-11-24 19:26:47', '2019-11-24 19:26:47', 4, 3, 58, '2019-11-28', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(70, '2019-11-24 19:26:47', '2019-11-24 19:26:47', 3, 2, 58, '2019-11-28', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(71, '2019-11-24 19:26:52', '2019-11-24 19:26:52', 4, 3, 58, '2019-11-29', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(72, '2019-11-24 19:26:52', '2019-11-24 19:26:52', 3, 2, 58, '2019-11-29', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(73, '2019-11-27 22:15:20', '2019-11-27 22:15:20', 5, 4, 57, '2019-11-28', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(74, '2019-11-27 22:16:36', '2019-11-27 22:16:36', 5, 4, 57, '2019-11-01', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(75, '2019-11-27 22:16:41', '2019-11-27 22:16:41', 5, 4, 57, '2019-11-04', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(76, '2019-11-27 22:16:44', '2019-11-27 22:16:44', 5, 4, 57, '2019-11-05', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(77, '2019-11-27 22:16:48', '2019-11-27 22:16:48', 5, 4, 57, '2019-11-06', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(78, '2019-11-27 22:16:51', '2019-11-27 22:16:51', 5, 4, 57, '2019-11-07', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(79, '2019-11-27 22:16:54', '2019-11-27 22:16:54', 5, 4, 57, '2019-11-08', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(80, '2019-11-27 22:16:58', '2019-11-27 22:16:58', 5, 4, 57, '2019-11-11', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(81, '2019-11-27 22:17:01', '2019-11-27 22:17:01', 5, 4, 57, '2019-11-12', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(82, '2019-11-27 22:17:04', '2019-11-27 22:17:04', 5, 4, 57, '2019-11-13', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(83, '2019-11-27 22:17:07', '2019-11-27 22:17:07', 5, 4, 57, '2019-11-14', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(84, '2019-11-27 22:17:12', '2019-11-28 00:13:28', 5, 4, 57, '2019-11-15', '00:00', '00:00', 0, 0, 'leave', 0, 0),
(85, '2019-11-27 22:17:15', '2019-11-27 22:17:15', 5, 4, 57, '2019-11-18', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(86, '2019-11-27 22:17:18', '2019-11-27 22:17:18', 5, 4, 57, '2019-11-19', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(87, '2019-11-27 22:17:22', '2019-11-27 22:17:22', 5, 4, 57, '2019-11-20', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(88, '2019-11-27 22:17:25', '2019-11-28 00:14:16', 5, 4, 57, '2019-11-21', '00:00', '00:00', 0, 0, 'not_present', 0, 0),
(89, '2019-11-27 22:17:28', '2019-11-27 22:17:28', 5, 4, 57, '2019-11-22', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(90, '2019-11-27 22:17:34', '2019-11-27 22:17:34', 5, 4, 57, '2019-11-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(91, '2019-11-27 22:17:38', '2019-11-27 22:17:38', 5, 4, 57, '2019-11-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(92, '2019-11-28 00:11:10', '2019-11-28 00:11:10', 5, 4, 57, '2019-11-29', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(95, '2020-01-16 17:27:24', '2020-01-16 17:28:16', 2, 1, 57, '2020-01-17', '00:00', '00:00', 0, 0, 'not_present', 0, 0),
(96, '2020-01-16 17:33:21', '2020-01-16 17:33:21', 5, 4, 57, '2020-01-17', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(97, '2020-01-16 17:34:15', '2020-01-16 17:34:15', 1, 5, 57, '2020-01-17', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(98, '2020-01-19 17:50:03', '2020-01-19 17:50:03', 6, 6, 58, '2019-12-02', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(99, '2020-01-19 17:50:08', '2020-01-19 17:50:08', 6, 6, 58, '2019-12-03', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(100, '2020-01-19 17:50:13', '2020-01-19 17:50:13', 6, 6, 58, '2019-12-04', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(101, '2020-01-19 17:50:35', '2020-01-19 17:50:35', 6, 6, 58, '2019-12-05', '07:10', '15:35', 1, 0, 'attend', 0, 0),
(102, '2020-01-19 17:50:40', '2020-01-19 17:50:40', 6, 6, 58, '2019-12-06', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(103, '2020-01-19 17:50:47', '2020-01-19 17:50:47', 6, 6, 58, '2019-12-09', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(104, '2020-01-19 17:50:52', '2020-01-19 17:50:52', 6, 6, 58, '2019-12-10', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(105, '2020-01-19 17:50:57', '2020-01-19 17:50:57', 6, 6, 58, '2019-12-11', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(106, '2020-01-19 17:51:05', '2020-01-19 17:51:05', 6, 6, 58, '2019-12-12', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(107, '2020-01-19 17:51:10', '2020-01-19 17:51:10', 6, 6, 58, '2019-12-13', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(108, '2020-01-19 17:51:23', '2020-01-19 17:51:23', 6, 6, 58, '2019-12-16', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(109, '2020-01-19 17:52:03', '2020-01-19 17:52:03', 6, 6, 58, '2019-12-17', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(110, '2020-01-19 17:52:09', '2020-01-19 17:52:09', 6, 6, 58, '2019-12-18', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(111, '2020-01-19 17:52:33', '2020-01-19 17:52:33', 6, 6, 58, '2019-12-19', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(112, '2020-01-19 17:52:38', '2020-01-19 17:52:38', 6, 6, 58, '2019-12-20', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(113, '2020-01-19 17:53:12', '2020-01-19 17:53:12', 6, 6, 58, '2019-12-23', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(114, '2020-01-19 17:53:17', '2020-01-19 17:53:17', 6, 6, 58, '2019-12-24', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(115, '2020-01-19 17:53:23', '2020-01-19 17:53:23', 6, 6, 58, '2019-12-25', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(116, '2020-01-19 17:53:28', '2020-01-19 17:53:28', 6, 6, 58, '2019-12-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(117, '2020-01-19 17:53:38', '2020-01-19 17:53:38', 6, 6, 58, '2019-12-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(118, '2020-01-19 17:53:44', '2020-01-19 17:53:44', 6, 6, 58, '2019-12-30', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(119, '2020-01-19 17:53:53', '2020-01-19 17:53:53', 6, 6, 58, '2019-12-31', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(120, '2020-01-19 17:55:43', '2020-01-19 17:55:43', 6, 6, 58, '2019-11-01', '00:00', '00:00', 0, 0, 'sick', 0, 1),
(121, '2020-01-19 17:56:13', '2020-01-19 17:56:13', 6, 6, 58, '2019-11-04', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(122, '2020-01-19 17:56:34', '2020-01-19 17:56:34', 6, 6, 58, '2019-11-05', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(123, '2020-01-19 17:56:41', '2020-01-19 17:56:41', 6, 6, 58, '2019-11-06', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(124, '2020-01-19 17:56:48', '2020-01-19 17:56:48', 6, 6, 58, '2019-11-07', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(125, '2020-01-19 17:56:55', '2020-01-19 17:56:55', 6, 6, 58, '2019-11-08', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(126, '2020-01-19 17:57:02', '2020-01-19 17:57:02', 6, 6, 58, '2019-11-11', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(127, '2020-01-19 17:57:08', '2020-01-19 17:57:08', 6, 6, 58, '2019-11-12', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(128, '2020-01-19 17:57:16', '2020-01-19 17:57:16', 6, 6, 58, '2019-11-13', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(129, '2020-01-19 17:57:23', '2020-01-19 17:57:23', 6, 6, 58, '2019-11-14', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(130, '2020-01-19 17:57:31', '2020-01-19 17:57:31', 6, 6, 58, '2019-11-15', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(131, '2020-01-19 17:57:43', '2020-01-19 17:57:43', 6, 6, 58, '2019-11-18', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(132, '2020-01-19 17:57:50', '2020-01-19 17:57:50', 6, 6, 58, '2019-11-19', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(133, '2020-01-19 17:57:57', '2020-01-19 17:57:57', 6, 6, 58, '2019-11-20', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(134, '2020-01-19 17:58:06', '2020-01-19 17:58:06', 6, 6, 58, '2019-11-21', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(135, '2020-01-19 17:58:12', '2020-01-19 17:58:12', 6, 6, 58, '2019-11-22', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(136, '2020-01-19 17:58:18', '2020-01-19 17:58:18', 6, 6, 58, '2019-11-25', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(137, '2020-01-19 17:58:24', '2020-01-19 17:58:24', 6, 6, 58, '2019-11-26', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(138, '2020-01-19 17:58:30', '2020-01-19 17:58:30', 6, 6, 58, '2019-11-27', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(139, '2020-01-19 17:58:36', '2020-01-19 17:58:36', 6, 6, 58, '2019-11-28', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(140, '2020-01-19 17:58:41', '2020-01-19 17:58:41', 6, 6, 58, '2019-11-29', '08:00', '17:00', 1, 0, 'attend', 0, 0),
(141, '2020-02-02 22:10:19', '2020-02-27 18:11:34', 2, 1, 59, '2020-02-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(142, '2020-02-02 22:11:38', '2020-02-27 18:11:34', 6, 6, 59, '2020-02-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(143, '2020-02-02 22:11:38', '2020-02-27 18:11:34', 7, 7, 59, '2020-02-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(144, '2020-02-02 22:11:39', '2020-02-27 18:11:34', 8, 8, 59, '2020-02-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(145, '2020-02-02 22:11:40', '2020-02-27 18:11:34', 9, 9, 59, '2020-02-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(146, '2020-02-02 22:11:40', '2020-02-27 18:12:03', 10, 10, 59, '2020-02-03', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(147, '2020-02-02 22:14:30', '2020-02-23 23:55:50', 6, 6, 59, '2020-01-02', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(148, '2020-02-02 22:14:30', '2020-02-23 23:55:28', 2, 1, 59, '2020-01-02', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(149, '2020-02-02 22:14:30', '2020-02-23 23:55:08', 7, 7, 59, '2020-01-02', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(150, '2020-02-02 22:14:30', '2020-02-23 23:56:18', 9, 9, 59, '2020-01-02', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(151, '2020-02-02 22:14:30', '2020-02-23 23:56:06', 8, 8, 59, '2020-01-02', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(152, '2020-02-02 22:14:30', '2020-02-23 23:56:29', 10, 10, 59, '2020-01-02', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(153, '2020-02-02 22:14:38', '2020-02-18 19:22:01', 6, 6, 59, '2020-01-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(154, '2020-02-02 22:14:38', '2020-02-23 23:58:04', 7, 7, 59, '2020-01-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(155, '2020-02-02 22:14:38', '2020-02-23 23:58:35', 8, 8, 59, '2020-01-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(156, '2020-02-02 22:14:38', '2020-02-23 23:59:07', 9, 9, 59, '2020-01-03', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(157, '2020-02-02 22:14:38', '2020-02-23 23:59:07', 2, 1, 59, '2020-01-03', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(158, '2020-02-02 22:14:38', '2020-02-23 23:58:35', 10, 10, 59, '2020-01-03', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(159, '2020-02-02 22:15:04', '2020-02-24 00:00:56', 2, 1, 59, '2020-01-06', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(160, '2020-02-02 22:15:04', '2020-02-24 00:00:16', 8, 8, 59, '2020-01-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(161, '2020-02-02 22:15:04', '2020-02-24 00:00:56', 9, 9, 59, '2020-01-06', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(162, '2020-02-02 22:15:04', '2020-02-24 00:00:56', 6, 6, 59, '2020-01-06', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(163, '2020-02-02 22:15:04', '2020-02-24 00:00:56', 7, 7, 59, '2020-01-06', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(164, '2020-02-02 22:15:04', '2020-02-24 00:00:16', 10, 10, 59, '2020-01-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(165, '2020-02-02 22:21:36', '2020-02-24 00:01:47', 2, 1, 59, '2020-01-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(166, '2020-02-02 22:21:37', '2020-02-24 00:02:40', 6, 6, 59, '2020-01-07', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(167, '2020-02-02 22:21:38', '2020-02-24 00:02:40', 7, 7, 59, '2020-01-07', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(168, '2020-02-02 22:21:39', '2020-02-24 00:01:47', 8, 8, 59, '2020-01-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(169, '2020-02-02 22:21:40', '2020-02-24 00:02:42', 9, 9, 59, '2020-01-07', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(170, '2020-02-02 22:21:41', '2020-02-24 00:01:47', 10, 10, 59, '2020-01-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(171, '2020-02-02 22:23:54', '2020-02-24 00:04:07', 2, 1, 59, '2020-01-08', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(172, '2020-02-02 22:23:55', '2020-02-24 00:04:07', 6, 6, 59, '2020-01-08', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(173, '2020-02-02 22:23:55', '2020-02-24 00:03:26', 7, 7, 59, '2020-01-08', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(174, '2020-02-02 22:23:56', '2020-02-24 00:03:26', 8, 8, 59, '2020-01-08', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(175, '2020-02-02 22:23:57', '2020-02-24 00:04:07', 9, 9, 59, '2020-01-08', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(176, '2020-02-02 22:23:57', '2020-02-24 00:03:26', 10, 10, 59, '2020-01-08', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(177, '2020-02-02 22:31:18', '2020-02-24 00:05:33', 2, 1, 59, '2020-01-09', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(178, '2020-02-02 22:31:18', '2020-02-18 19:23:14', 6, 6, 59, '2020-01-09', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(179, '2020-02-02 22:31:19', '2020-02-24 00:05:33', 7, 7, 59, '2020-01-09', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(180, '2020-02-02 22:31:19', '2020-02-24 00:04:49', 8, 8, 59, '2020-01-09', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(181, '2020-02-02 22:31:20', '2020-02-24 00:05:33', 9, 9, 59, '2020-01-09', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(182, '2020-02-02 22:31:21', '2020-02-24 00:04:49', 10, 10, 59, '2020-01-09', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(183, '2020-02-02 22:32:05', '2020-02-24 00:06:47', 2, 1, 59, '2020-01-10', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(184, '2020-02-02 22:32:05', '2020-02-18 19:23:26', 6, 6, 59, '2020-01-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(185, '2020-02-02 22:32:06', '2020-02-24 00:06:47', 7, 7, 59, '2020-01-10', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(186, '2020-02-02 22:32:06', '2020-02-24 00:05:57', 8, 8, 59, '2020-01-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(187, '2020-02-02 22:32:07', '2020-02-24 00:05:57', 9, 9, 59, '2020-01-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(188, '2020-02-02 22:32:08', '2020-02-24 00:06:47', 10, 10, 59, '2020-01-10', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(189, '2020-02-02 22:32:42', '2020-02-24 01:29:21', 2, 1, 59, '2020-01-13', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(190, '2020-02-02 22:32:42', '2020-02-24 01:29:54', 6, 6, 59, '2020-01-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(191, '2020-02-02 22:32:43', '2020-02-24 01:29:54', 7, 7, 59, '2020-01-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(192, '2020-02-02 22:32:44', '2020-02-24 01:29:54', 8, 8, 59, '2020-01-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(193, '2020-02-02 22:32:44', '2020-02-24 01:29:54', 9, 9, 59, '2020-01-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(194, '2020-02-02 22:32:45', '2020-02-24 01:29:54', 10, 10, 59, '2020-01-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(195, '2020-02-02 22:37:23', '2020-02-02 22:37:23', 2, 1, 59, '2020-01-14', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(196, '2020-02-02 22:37:24', '2020-02-18 19:23:52', 6, 6, 59, '2020-01-14', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(197, '2020-02-02 22:37:30', '2020-02-02 22:37:30', 7, 7, 59, '2020-01-14', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(198, '2020-02-02 22:37:30', '2020-02-02 22:37:30', 8, 8, 59, '2020-01-14', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(199, '2020-02-02 22:37:31', '2020-02-02 22:37:31', 9, 9, 59, '2020-01-14', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(200, '2020-02-02 22:37:32', '2020-02-02 22:37:32', 10, 10, 59, '2020-01-14', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(201, '2020-02-02 22:38:51', '2020-02-02 22:38:51', 2, 1, 59, '2020-01-16', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(202, '2020-02-02 22:38:52', '2020-02-18 19:24:16', 6, 6, 59, '2020-01-16', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(203, '2020-02-02 22:38:53', '2020-02-02 22:38:53', 7, 7, 59, '2020-01-16', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(204, '2020-02-02 22:38:53', '2020-02-02 22:38:53', 8, 8, 59, '2020-01-16', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(205, '2020-02-02 22:38:54', '2020-02-02 22:38:54', 9, 9, 59, '2020-01-16', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(206, '2020-02-02 22:38:54', '2020-02-02 22:38:54', 10, 10, 59, '2020-01-16', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(207, '2020-02-02 22:40:09', '2020-02-02 22:40:09', 2, 1, 59, '2020-01-17', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(208, '2020-02-02 22:40:09', '2020-02-18 19:24:27', 6, 6, 59, '2020-01-17', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(209, '2020-02-02 22:40:10', '2020-02-02 22:40:10', 7, 7, 59, '2020-01-17', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(210, '2020-02-02 22:40:11', '2020-02-02 22:40:11', 8, 8, 59, '2020-01-17', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(211, '2020-02-02 22:40:11', '2020-02-02 22:40:11', 9, 9, 59, '2020-01-17', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(212, '2020-02-02 22:40:12', '2020-02-02 22:40:12', 10, 10, 59, '2020-01-17', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(213, '2020-02-02 22:40:49', '2020-02-02 22:40:49', 2, 1, 59, '2020-01-20', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(214, '2020-02-02 22:40:50', '2020-02-18 19:24:39', 6, 6, 59, '2020-01-20', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(215, '2020-02-02 22:40:50', '2020-02-02 22:40:50', 7, 7, 59, '2020-01-20', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(216, '2020-02-02 22:40:51', '2020-02-02 22:40:51', 8, 8, 59, '2020-01-20', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(217, '2020-02-02 22:40:51', '2020-02-02 22:40:51', 9, 9, 59, '2020-01-20', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(218, '2020-02-02 22:40:52', '2020-02-02 22:40:52', 10, 10, 59, '2020-01-20', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(219, '2020-02-02 22:41:26', '2020-02-02 22:41:26', 2, 1, 59, '2020-01-21', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(220, '2020-02-02 22:41:27', '2020-02-18 19:24:52', 6, 6, 59, '2020-01-21', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(221, '2020-02-02 22:41:27', '2020-02-02 22:41:27', 7, 7, 59, '2020-01-21', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(222, '2020-02-02 22:41:28', '2020-02-02 22:41:28', 8, 8, 59, '2020-01-21', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(223, '2020-02-02 22:41:28', '2020-02-02 22:41:28', 9, 9, 59, '2020-01-21', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(224, '2020-02-02 22:41:29', '2020-02-02 22:41:29', 10, 10, 59, '2020-01-21', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(225, '2020-02-02 22:43:45', '2020-02-02 22:43:45', 2, 1, 59, '2020-01-23', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(226, '2020-02-02 22:43:45', '2020-02-18 19:25:16', 6, 6, 59, '2020-01-23', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(227, '2020-02-02 22:43:46', '2020-02-02 22:43:46', 7, 7, 59, '2020-01-23', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(228, '2020-02-02 22:43:46', '2020-02-02 22:43:46', 8, 8, 59, '2020-01-23', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(229, '2020-02-02 22:43:47', '2020-02-02 22:43:47', 9, 9, 59, '2020-01-23', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(230, '2020-02-02 22:43:47', '2020-02-02 22:43:47', 10, 10, 59, '2020-01-23', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(231, '2020-02-02 22:44:26', '2020-02-02 22:44:26', 2, 1, 59, '2020-01-24', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(232, '2020-02-02 22:44:26', '2020-02-18 19:25:28', 6, 6, 59, '2020-01-24', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(233, '2020-02-02 22:44:27', '2020-02-02 22:44:27', 7, 7, 59, '2020-01-24', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(234, '2020-02-02 22:44:27', '2020-02-02 22:44:27', 8, 8, 59, '2020-01-24', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(235, '2020-02-02 22:44:28', '2020-02-02 22:44:28', 9, 9, 59, '2020-01-24', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(236, '2020-02-02 22:44:28', '2020-02-02 22:44:28', 10, 10, 59, '2020-01-24', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(237, '2020-02-02 22:44:56', '2020-02-02 22:44:56', 2, 1, 59, '2020-01-27', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(238, '2020-02-02 22:44:57', '2020-02-18 19:25:38', 6, 6, 59, '2020-01-27', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(239, '2020-02-02 22:44:58', '2020-02-02 22:44:58', 7, 7, 59, '2020-01-27', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(240, '2020-02-02 22:44:58', '2020-02-02 22:44:58', 8, 8, 59, '2020-01-27', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(241, '2020-02-02 22:44:59', '2020-02-02 22:44:59', 9, 9, 59, '2020-01-27', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(242, '2020-02-02 22:44:59', '2020-02-02 22:44:59', 10, 10, 59, '2020-01-27', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(243, '2020-02-02 22:52:04', '2020-02-02 22:52:04', 2, 1, 59, '2020-01-28', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(244, '2020-02-02 22:52:05', '2020-02-18 19:25:48', 6, 6, 59, '2020-01-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(245, '2020-02-02 22:52:06', '2020-02-02 22:52:06', 7, 7, 59, '2020-01-28', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(246, '2020-02-02 22:52:06', '2020-02-02 22:52:06', 8, 8, 59, '2020-01-28', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(247, '2020-02-02 22:52:07', '2020-02-02 22:52:07', 9, 9, 59, '2020-01-28', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(248, '2020-02-02 22:52:07', '2020-02-02 22:52:07', 10, 10, 59, '2020-01-28', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(249, '2020-02-02 22:53:01', '2020-02-02 22:53:01', 2, 1, 59, '2020-01-29', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(250, '2020-02-02 22:53:02', '2020-02-18 19:25:58', 6, 6, 59, '2020-01-29', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(251, '2020-02-02 22:53:02', '2020-02-02 22:53:02', 7, 7, 59, '2020-01-29', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(252, '2020-02-02 22:53:03', '2020-02-02 22:53:03', 8, 8, 59, '2020-01-29', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(253, '2020-02-02 22:53:03', '2020-02-02 22:53:03', 9, 9, 59, '2020-01-29', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(254, '2020-02-02 22:53:04', '2020-02-02 22:53:04', 10, 10, 59, '2020-01-29', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(255, '2020-02-02 22:54:22', '2020-02-02 22:54:22', 2, 1, 59, '2020-01-30', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(256, '2020-02-02 22:54:23', '2020-02-18 19:26:09', 6, 6, 59, '2020-01-30', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(257, '2020-02-02 22:54:23', '2020-02-02 22:54:23', 7, 7, 59, '2020-01-30', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(258, '2020-02-02 22:54:24', '2020-02-02 22:54:24', 8, 8, 59, '2020-01-30', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(259, '2020-02-02 22:54:25', '2020-02-02 22:54:25', 9, 9, 59, '2020-01-30', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(260, '2020-02-02 22:54:25', '2020-02-02 22:54:25', 10, 10, 59, '2020-01-30', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(261, '2020-02-02 22:54:59', '2020-02-02 22:54:59', 2, 1, 59, '2020-01-31', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(262, '2020-02-02 22:55:00', '2020-02-18 19:26:21', 6, 6, 59, '2020-01-31', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(263, '2020-02-02 22:55:01', '2020-02-02 22:55:01', 7, 7, 59, '2020-01-31', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(264, '2020-02-02 22:55:01', '2020-02-02 22:55:01', 8, 8, 59, '2020-01-31', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(265, '2020-02-02 22:55:02', '2020-02-02 22:55:02', 9, 9, 59, '2020-01-31', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(266, '2020-02-02 22:55:02', '2020-02-02 22:55:02', 10, 10, 59, '2020-01-31', '07:15', '15:15', 1, 0, 'attend', 0, 0),
(267, '2020-02-18 18:13:41', '2020-02-18 19:35:53', 6, 6, 59, '2020-01-01', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(268, '2020-02-18 18:14:43', '2020-02-18 19:24:05', 6, 6, 59, '2020-01-15', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(269, '2020-02-18 18:15:21', '2020-02-18 19:25:03', 6, 6, 59, '2020-01-22', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(270, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 2, 1, 59, '2020-02-25', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(271, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 10, 10, 59, '2020-02-25', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(272, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 7, 7, 59, '2020-02-25', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(273, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 9, 9, 59, '2020-02-25', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(274, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 8, 8, 59, '2020-02-25', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(275, '2020-02-24 17:59:35', '2020-02-27 18:23:41', 6, 6, 59, '2020-02-25', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(276, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 2, 1, 59, '2020-02-04', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(277, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 6, 6, 59, '2020-02-04', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(278, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 7, 7, 59, '2020-02-04', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(279, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 8, 8, 59, '2020-02-04', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(280, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 9, 9, 59, '2020-02-04', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(281, '2020-02-27 18:13:09', '2020-02-27 18:13:09', 10, 10, 59, '2020-02-04', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(282, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 2, 1, 59, '2020-02-05', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(283, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 8, 8, 59, '2020-02-05', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(284, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 9, 9, 59, '2020-02-05', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(285, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 7, 7, 59, '2020-02-05', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(286, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 10, 10, 59, '2020-02-05', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(287, '2020-02-27 18:13:54', '2020-02-27 18:13:54', 6, 6, 59, '2020-02-05', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(288, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 2, 1, 59, '2020-02-06', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(289, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 6, 6, 59, '2020-02-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(290, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 7, 7, 59, '2020-02-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(291, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 9, 9, 59, '2020-02-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(292, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 8, 8, 59, '2020-02-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(293, '2020-02-27 18:14:21', '2020-02-27 18:14:21', 10, 10, 59, '2020-02-06', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(294, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 8, 8, 59, '2020-02-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(295, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 6, 6, 59, '2020-02-07', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(296, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 2, 1, 59, '2020-02-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(297, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 7, 7, 59, '2020-02-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(298, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 9, 9, 59, '2020-02-07', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(299, '2020-02-27 18:14:47', '2020-02-27 18:14:47', 10, 10, 59, '2020-02-07', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(300, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 6, 6, 59, '2020-02-10', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(301, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 7, 7, 59, '2020-02-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(302, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 9, 9, 59, '2020-02-10', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(303, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 2, 1, 59, '2020-02-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(304, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 8, 8, 59, '2020-02-10', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(305, '2020-02-27 18:16:27', '2020-02-27 18:16:27', 10, 10, 59, '2020-02-10', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(306, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 6, 6, 59, '2020-02-11', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(307, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 2, 1, 59, '2020-02-11', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(308, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 8, 8, 59, '2020-02-11', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(309, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 7, 7, 59, '2020-02-11', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(310, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 9, 9, 59, '2020-02-11', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(311, '2020-02-27 18:16:52', '2020-02-27 18:16:52', 10, 10, 59, '2020-02-11', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(312, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 2, 1, 59, '2020-02-12', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(313, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 7, 7, 59, '2020-02-12', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(314, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 8, 8, 59, '2020-02-12', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(315, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 6, 6, 59, '2020-02-12', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(316, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 10, 10, 59, '2020-02-12', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(317, '2020-02-27 18:17:21', '2020-02-27 18:17:21', 9, 9, 59, '2020-02-12', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(318, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 2, 1, 59, '2020-02-13', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(319, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 7, 7, 59, '2020-02-13', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(320, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 8, 8, 59, '2020-02-13', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(321, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 9, 9, 59, '2020-02-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(322, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 6, 6, 59, '2020-02-13', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(323, '2020-02-27 18:17:47', '2020-02-27 18:17:47', 10, 10, 59, '2020-02-13', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(324, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 2, 1, 59, '2020-02-14', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(325, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 7, 7, 59, '2020-02-14', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(326, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 6, 6, 59, '2020-02-14', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(327, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 8, 8, 59, '2020-02-14', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(328, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 9, 9, 59, '2020-02-14', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(329, '2020-02-27 18:18:31', '2020-02-27 18:18:31', 10, 10, 59, '2020-02-14', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(330, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 2, 1, 59, '2020-02-17', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(331, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 8, 8, 59, '2020-02-17', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(332, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 9, 9, 59, '2020-02-17', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(333, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 6, 6, 59, '2020-02-17', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(334, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 7, 7, 59, '2020-02-17', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(335, '2020-02-27 18:19:02', '2020-02-27 18:19:02', 10, 10, 59, '2020-02-17', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(336, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 2, 1, 59, '2020-02-18', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(337, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 7, 7, 59, '2020-02-18', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(338, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 9, 9, 59, '2020-02-18', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(339, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 6, 6, 59, '2020-02-18', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(340, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 8, 8, 59, '2020-02-18', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(341, '2020-02-27 18:19:46', '2020-02-27 18:19:46', 10, 10, 59, '2020-02-18', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(342, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 8, 8, 59, '2020-02-19', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(343, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 2, 1, 59, '2020-02-19', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(344, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 7, 7, 59, '2020-02-19', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(345, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 9, 9, 59, '2020-02-19', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(346, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 6, 6, 59, '2020-02-19', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(347, '2020-02-27 18:20:21', '2020-02-27 18:20:21', 10, 10, 59, '2020-02-19', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(348, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 2, 1, 59, '2020-02-20', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(349, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 10, 10, 59, '2020-02-20', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(350, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 8, 8, 59, '2020-02-20', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(351, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 9, 9, 59, '2020-02-20', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(352, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 6, 6, 59, '2020-02-20', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(353, '2020-02-27 18:20:45', '2020-02-27 18:20:45', 7, 7, 59, '2020-02-20', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(354, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 8, 8, 59, '2020-02-21', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(355, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 2, 1, 59, '2020-02-21', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(356, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 10, 10, 59, '2020-02-21', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(357, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 9, 9, 59, '2020-02-21', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(358, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 6, 6, 59, '2020-02-21', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(359, '2020-02-27 18:21:15', '2020-02-27 18:21:15', 7, 7, 59, '2020-02-21', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(360, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 2, 1, 59, '2020-02-24', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(361, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 7, 7, 59, '2020-02-24', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(362, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 10, 10, 59, '2020-02-24', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(363, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 9, 9, 59, '2020-02-24', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(364, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 8, 8, 59, '2020-02-24', '00:00', '00:00', 0, 0, 'not_present', 0, 1),
(365, '2020-02-27 18:22:07', '2020-02-27 18:22:07', 6, 6, 59, '2020-02-24', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(366, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 6, 6, 59, '2020-02-26', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(367, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 2, 1, 59, '2020-02-26', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(368, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 7, 7, 59, '2020-02-26', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(369, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 9, 9, 59, '2020-02-26', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(370, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 8, 8, 59, '2020-02-26', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(371, '2020-02-27 18:24:22', '2020-02-27 18:24:22', 10, 10, 59, '2020-02-26', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(372, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 6, 6, 59, '2020-02-27', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(373, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 8, 8, 59, '2020-02-27', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(374, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 10, 10, 59, '2020-02-27', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(375, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 7, 7, 59, '2020-02-27', '07:15', '15:30', 0, 0, 'attend', 0, 0),
(376, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 9, 9, 59, '2020-02-27', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(377, '2020-02-27 18:24:59', '2020-02-27 18:24:59', 2, 1, 59, '2020-02-27', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(378, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 2, 1, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(379, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 8, 8, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(380, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 7, 7, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(381, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 9, 9, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(382, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 6, 6, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0),
(383, '2020-02-27 18:25:22', '2020-02-27 18:25:22', 10, 10, 59, '2020-02-28', '07:15', '15:30', 1, 0, 'attend', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `skpd_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `work_package_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `bonus` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `created_at`, `updated_at`, `number`, `employee_id`, `skpd_id`, `program_id`, `activity_id`, `work_package_id`, `location_id`, `position_id`, `start_date`, `end_date`, `status`, `occupation_id`, `bonus`) VALUES
(1, '2019-11-24 08:52:01', '2020-02-25 23:38:47', '005.2/SPK/OPCKP-P.Prog/PET.DKI/2020', 2, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(2, '2019-11-24 19:14:01', '2020-02-02 21:57:49', '017.002/SPK/DISKOMINFO/I/2019', 3, 17, 30, 30, 58, 86, 41, '2019-11-01', '2020-11-01', 'non_active', 57, 0),
(3, '2019-11-24 19:21:41', '2020-02-02 21:57:32', '017.003/SPK/DISKOMINFO/1/2019', 4, 17, 30, 30, 58, 86, 37, '2019-01-01', '2020-01-01', 'non_active', 57, 0),
(4, '2019-11-27 22:15:01', '2019-11-27 22:15:01', '017.005/SPK/PET/1/2019', 5, 17, 29, 29, 57, 85, 41, '2019-01-01', '2019-12-31', 'active', 57, 0),
(5, '2019-11-28 00:10:24', '2019-11-28 00:10:24', '003.4/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', 1, 17, 29, 29, 57, 86, 37, '2019-11-01', '2020-11-01', 'active', 57, 0),
(6, '2020-01-16 00:27:09', '2020-03-09 18:30:41', '006.2/SPK/OPCKP-P.Prog/PET.DKI/2020', 6, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(7, '2020-02-02 18:17:08', '2020-02-02 18:17:08', '001.2/SPK/OPCKP-P.Operator/PET.DKI/2020', 7, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(8, '2020-02-02 21:55:55', '2020-02-02 22:08:47', '003.2/SPK/OPCKP-P.Prog/PET.DKI/2020', 8, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(9, '2020-02-02 22:06:22', '2020-02-02 22:08:32', '004.2/SPK/OPCKP-P.Operator/PET.DKI/2020', 9, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(10, '2020-02-02 22:08:01', '2020-02-02 22:08:01', '002.2/SPK/OPCKP-P.MM/PET.DKI/2020', 10, 17, 31, 31, 59, 86, 37, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(11, '2020-02-25 19:22:57', '2020-02-25 19:22:57', '001.2/SPK/PJKPK-CS/TU.DKI/2020', 12, 17, 32, 32, 60, 87, 12, '2020-01-02', '2020-12-31', 'active', 64, 2750000),
(12, '2020-02-25 19:26:56', '2020-02-25 19:26:56', '002.2/SPK/PJKPK-CS/TU.DKI/2020', 19, 17, 32, 32, 60, 87, 12, '2020-01-02', '2020-12-31', 'active', 64, 2750000),
(13, '2020-02-25 20:00:30', '2020-02-25 20:00:30', '006.2/SPK/PDIPKIP-DGM/IKP.DKI/2020', 18, 17, 33, 34, 62, 89, 38, '2020-01-02', '2020-12-31', 'active', 62, 2750000),
(14, '2020-02-25 20:05:47', '2020-02-25 20:05:47', '004.2/SPK/PDIPKIP-F.E/IKP.DKI/2020', 17, 17, 33, 34, 62, 89, 38, '2020-01-02', '2020-12-31', 'active', 62, 2750000),
(15, '2020-02-25 20:13:23', '2020-02-25 20:13:23', '005.2/SPK/PDIPKIP-V.E/IKP.DKI/2020', 13, 17, 33, 34, 62, 89, 38, '2020-01-02', '2020-12-31', 'active', 62, 2750000),
(16, '2020-02-25 20:30:26', '2020-02-25 20:30:26', '003.2/SPK/PJAK-Keu/TU.DKI/2020', 11, 17, 32, 33, 61, 87, 36, '2020-01-02', '2020-12-31', 'active', 64, 2970000),
(17, '2020-02-25 21:42:30', '2020-02-25 21:42:30', '007.2/SPK/OMPS-TTI/PET.DKI/2020', 16, 17, 34, 35, 64, 88, 36, '2020-01-02', '2020-12-31', 'active', 57, 2970000),
(18, '2020-02-25 21:49:03', '2020-02-25 21:49:03', '008.2/SPK/OMPS-TTI/PET.DKI/2020', 15, 17, 34, 35, 63, 88, 36, '2020-01-02', '2020-12-31', 'active', 57, 2750000),
(19, '2020-02-25 21:51:18', '2020-02-25 21:51:18', '009.2/SPK/OMPS-TTI/PET.DKI/2020', 14, 17, 34, 35, 63, 88, 36, '2020-01-02', '2020-12-31', 'active', 57, 2750000);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nipj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs_healthcare` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs_social_security` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skpd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `created_at`, `updated_at`, `nipj`, `name`, `ktp`, `npwp`, `gender`, `address`, `religion`, `phone_number`, `bank_name`, `account_number`, `bpjs_healthcare`, `bpjs_social_security`, `skpd_id`) VALUES
(1, '2019-11-24 06:55:02', '2019-11-24 06:55:02', '0170012019', 'Harry Saputra', '176119119442023', '12346789', 'laki-laki', 'jl. dr wahidin komp. sepakat asri D7', 'islam', '08115741200', 'kalbar', '111000222', '133223320', '133220233', 17),
(2, '2019-11-24 08:36:11', '2020-02-02 21:36:22', '0170022019', 'Miftah Rajunda, S.Kom', '6171020706890001', '87.767.401.9-701.000', 'laki-laki', 'Jl. Wonobaru Gg. Wonodadi 3 No. 8, Kelurahan Kota Baru, kecamatan Pontianak Selatan', 'islam', '0895607061989', 'pasar', '210.02.020018', '0002436418337', '18017251218', 17),
(3, '2019-11-24 19:07:41', '2019-11-24 19:07:41', '0170032019', 'Aditya Teguh Nugraha', '10101010101', '13312121', 'laki-laki', 'jl. dr wahidin komp. sepakat asri D7', 'islam', '08115741200', 'kalbar', '12444123', '1442123', '412421321', 17),
(4, '2019-11-24 19:20:13', '2019-11-24 19:20:13', '0170042019', 'Anastasha', '1232123231231231', '11232312312', 'perempuan', 'jl. dr wahidin komp. sepakat asri D7', 'protestan', '08115741200', 'kalbar', '1232133', '12323123', '12332123', 17),
(5, '2019-11-27 22:10:26', '2019-11-27 22:10:26', '0170052019', 'Joko Subianto', '11441202291221', '2442303923932', 'laki-laki', 'Jl. Uray Bawadi Gg. Semangka No.3 pontianak Barat', 'islam', '08114442324', 'kalbar', '221123321', '1441232155', '1233214521', 17),
(6, '2020-01-15 20:48:21', '2020-02-21 00:22:35', '0170012020', 'Nur Agus Pratiwi, S.T.', '6171016408940007', '93.892.042.8-701.000', 'perempuan', 'Jalan Danau Sentarum, Gang Nurhadi 3, No. C 11, Pontianak, 78116', 'islam', '085654576564', 'pasar', '210.02.020804', '0002918485901', NULL, 17),
(7, '2020-01-30 20:17:59', '2020-01-30 20:17:59', '0170022020', 'Reta Harviani, A.Md', '611295003940005', '80.024.568.0704.000', 'perempuan', 'Jl. Karya, Komp. Karya Indah I Blok B No.8, Rt/Rw 005/009, Kel. Pal Sembilan, Kec. Sungai kakap, kabupaten kubu Raya, Provinsi Kalimantan Barat', 'islam', '081251334424', 'pasar', '210.02.019665', '0000050947773', '17017008214', 17),
(8, '2020-02-02 21:53:50', '2020-02-02 22:01:56', '0170032020', 'Rama Kadri, A.Md', '6103130803940002', '81.584.524.3-701.000', 'laki-laki', 'Jl. Adi Sucipto GG. Abadi RT/RW 002/012, Desa Limbung, Kecamatan Sungai Raya, Kabupaten Kubu Raya, Kalimantan Barat', 'islam', '085651973220', 'pasar', '210.02.019667', '0002237799712', '17017008230', 17),
(9, '2020-02-02 22:01:30', '2020-02-21 00:22:52', '0170042020', 'Febi Resiana, S.T.', '6171015802910005', '74.209.689.4-701.000', 'perempuan', 'Jl. Parit H. Husin 2, Komp. Pemda Jalur 1 Nomor 85, Kel. bansir darat, Kec. Pontianak Tenggara, Pontianak, Kalbar', 'islam', '085245756464', 'pasar', '210.02.019668', '0000050505592', '17017008206', 17),
(10, '2020-02-02 22:04:28', '2020-02-02 22:04:28', '0170052020', 'Laili Safitri, S.Kom', '6171035404930005', '81.564.660.9-701.000', 'perempuan', 'Jl. Husein Hamzah Gg. Warna Sari No. 12, Kel. Pal Lima, Kec. Pontianak Barat, Kota Pontianak, Kalbar', 'islam', '085225991989', 'pasar', '210.02.019666', '0000050998206', '17017008222', 17),
(11, '2020-02-24 00:10:32', '2020-02-24 00:10:32', '0170062020', 'Yogi, S.Kom.', '6171021212960012', '84.842.786.0-701.000', 'laki-laki', 'Jalan Tanjung Raya 2, Gang Kurnia Ilahi, No 18, Kel. Saigon, Kec. Pontianak Timur, Kalimantan Barat', 'islam', '085822333891', 'pasar', '210.02.020623', '0001169560135', '19049967771', 17),
(12, '2020-02-24 00:11:58', '2020-02-24 00:11:58', '0170072020', 'Eli Oskar', '6112052404900008', '81.178.700.1-704.000', 'laki-laki', 'Jalan H. Rais A Rahman, Gang Gunung Jati, RT/RW 002/010, Kel. Sungai Jawi, Kecamatan Pontianak Kota, Kalimantan Barat', 'islam', '085249783624', 'pasar', '102.54.56331', '0002224128104', '17008043899', 17),
(13, '2020-02-24 00:13:22', '2020-02-24 00:13:22', '0170082020', 'Afriansyah Akbar,  A.Md.', '6171012204950005', '91.401.844.5-707.000', 'laki-laki', 'Jalan Parit H. Husin 2, Komp. Wanabhakti 4, No. A9', 'islam', '089693950514', 'pasar', '21.002.020.844', '0000050409167', NULL, 17),
(14, '2020-02-24 00:15:21', '2020-02-24 00:15:21', '0170092020', 'Muhammad Fadhil Putra, A.Md.', '6171062911970001', '86.780.191.2-707.000', 'laki-laki', 'Jalan Adi Sucipto, Gang H. Mansyur, No.101', 'islam', '089675436852', 'pasar', '210.02.020624', '0002921876559', '19049967763', 17),
(15, '2020-02-24 00:17:16', '2020-02-24 00:17:16', '0170102020', 'Roisul Umam, A.Md', '6171042104950007', '83.767.488.6-701.000', 'laki-laki', 'Jalan Parwasal, Gg.Persada 3, RT 004 / RW 006, Kelurahan Siantan Tengah, Kecamatan Pontianak Utara, 78242', 'islam', '089693209029', 'pasar', '210.02.020019', '0000884039163', '18017251226', 17),
(16, '2020-02-24 00:18:36', '2020-02-25 20:40:36', '0170112020', 'Kadarusman, A.Md', '6112060502930003', NULL, 'laki-laki', NULL, 'islam', '089693542644', 'pasar', NULL, NULL, NULL, 17),
(17, '2020-02-24 00:19:51', '2020-02-25 20:22:08', '0170122020', 'Iwan Dika, A.Md. A.B', '6111010110950003', NULL, 'laki-laki', 'Jalan Transkalimantan Ambawang Kuala, Kubu Raya', 'islam', '085750484274', 'pasar', NULL, NULL, NULL, 17),
(18, '2020-02-24 00:20:33', '2020-02-25 20:21:26', '0170132020', 'Nevya Adysti, S.Kom.', '6171055610910001', NULL, 'perempuan', 'Jalan Danau Sentarum, Komp. Danau Asri, No. 28 A, Pontianak', 'islam', '081385193079', 'pasar', NULL, NULL, NULL, 17),
(19, '2020-02-25 18:58:02', '2020-02-25 18:58:02', '0170142020', 'Didi Ferdiansyah', '6172022309790003', '93.915.858.0-701.000', 'laki-laki', 'Jalan Dr. Wahidin S., Komp. PU Jalur 1, No. 09, RT 003 / RW 020, Kel. Sungai Jawi, Kec. Pontianak Kota', 'islam', '081251130005', 'pasar', '210.02.020839', '0002210218053', NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `functionaries`
--

CREATE TABLE `functionaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `functionaries`
--

INSERT INTO `functionaries` (`id`, `created_at`, `updated_at`, `nip`, `name`, `phone_number`, `address`) VALUES
(57, '2019-11-24 08:39:18', '2019-11-24 08:39:18', '197709012002121006', 'Syamsul Akbar, ST., M.Eng., M.Sc', '081331229312', 'Jl. Perdana Komp. Perdana Square No.1 Pontianak'),
(58, '2019-11-24 08:41:02', '2019-11-24 08:41:02', '196103291989031004', 'Ir. H. Uray Indra Mulya, MM', '0811244232', 'Jl. Parit H. Husein 2 Komp. Bali Agung 3 No. 9 Pontianak'),
(59, '2019-11-24 19:32:01', '2020-01-31 00:59:41', '197905282005012008', 'Sri Wulani Rezeki Elida, S.Si, MA, M.S.E', '081345463645', 'Komp. Untan, Jl. Sekadau No. P. 76, Pontianak'),
(60, '2019-11-27 22:05:12', '2019-11-27 22:05:12', '198303082010011003', 'Dovvi', '08115885523', 'Jl. Waru Gg. Beringin Pontianak Selatan'),
(61, '2020-02-21 00:12:50', '2020-02-21 00:12:50', '196504031991031018', 'Drs. Aries Susiawanto', NULL, NULL),
(62, '2020-02-21 00:15:37', '2020-02-21 00:15:37', '196602281993031009', 'Rudhy Pirngadi, S.E.', NULL, NULL),
(63, '2020-02-21 00:16:32', '2020-02-21 00:16:32', '197902042002122008', 'Henny Herawati, S.Kom.', NULL, NULL),
(64, '2020-02-21 00:17:13', '2020-02-21 00:17:13', '196601271986031009', 'Drs. Zulkarnain, M.Si.', NULL, NULL),
(65, '2020-02-23 21:00:44', '2020-02-23 21:00:44', '196806191993071001', 'Iswandi, S.Sos.', NULL, NULL),
(66, '2020-02-23 21:03:31', '2020-02-23 21:03:31', '198207162008021001', 'I Wayan Nugroho PS, S.T.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_leave_employees`
--

CREATE TABLE `history_leave_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `contract_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `total_day` int(11) NOT NULL,
  `leave_type` int(11) NOT NULL DEFAULT 0,
  `dates` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_leave_employees`
--

INSERT INTO `history_leave_employees` (`id`, `created_at`, `updated_at`, `start_date`, `end_date`, `contract_id`, `employee_id`, `total_day`, `leave_type`, `dates`) VALUES
(2, '2019-11-24 17:30:17', '2019-11-24 17:30:17', '2019-11-20', '2019-11-20', 1, 2, 1, 0, 'null'),
(3, '2019-11-24 17:33:49', '2019-11-24 17:33:49', '2019-11-03', '2019-11-03', 1, 2, 1, 0, 'null'),
(4, '2019-11-24 19:16:02', '2019-11-24 19:16:02', '2019-11-04', '2019-11-04', 2, 3, 1, 0, 'null'),
(5, '2019-11-24 19:17:53', '2019-11-24 19:17:53', '2019-11-05', '2019-11-08', 2, 3, 4, 1, '[\"05-11-2019\",\"06-11-2019\",\"07-11-2019\",\"08-11-2019\"]'),
(6, '2019-11-28 00:13:28', '2019-11-28 00:13:28', '2019-11-15', '2019-11-15', 4, 5, 1, 0, '[\"15-11-2019\"]'),
(7, '2019-11-28 00:14:16', '2019-11-28 00:14:16', '2019-11-21', '2019-11-21', 4, 5, 1, 0, 'null'),
(8, '2020-01-16 07:28:43', '2020-01-16 07:28:43', '2020-01-14', '2020-01-15', 6, 6, 2, 0, '[\"14-01-2020\",\"15-01-2020\"]'),
(10, '2020-01-16 17:28:16', '2020-01-16 17:28:16', '2020-01-17', '2020-01-17', 1, 2, 1, 0, 'null'),
(22, '2020-02-27 18:16:27', '2020-02-27 18:16:27', '2020-02-10', '2020-02-10', 9, 9, 1, 0, 'null'),
(23, '2020-02-27 18:18:31', '2020-02-27 18:18:31', '2020-02-14', '2020-02-14', 8, 8, 1, 0, 'null'),
(24, '2020-02-27 18:22:07', '2020-02-27 18:22:07', '2020-02-24', '2020-02-24', 8, 8, 1, 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `leave_employees`
--

CREATE TABLE `leave_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `remain_leave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_employees`
--

INSERT INTO `leave_employees` (`id`, `created_at`, `updated_at`, `employee_id`, `contract_id`, `remain_leave`) VALUES
(1, '2019-11-24 08:52:01', '2020-01-16 17:28:16', 2, 1, 9),
(2, '2019-11-24 19:14:01', '2019-11-24 19:17:54', 3, 2, 7),
(3, '2019-11-24 19:21:41', '2019-11-24 19:21:41', 4, 3, 12),
(4, '2019-11-27 22:15:01', '2019-11-28 00:14:16', 5, 4, 10),
(5, '2019-11-28 00:10:24', '2019-11-28 00:10:24', 1, 5, 12),
(6, '2020-01-16 00:27:09', '2020-02-18 19:35:53', 6, 6, 10),
(7, '2020-02-02 18:17:08', '2020-02-02 18:17:08', 7, 7, 12),
(8, '2020-02-02 21:55:55', '2020-02-27 18:22:07', 8, 8, 10),
(9, '2020-02-02 22:06:22', '2020-02-27 18:16:27', 9, 9, 11),
(10, '2020-02-02 22:08:01', '2020-02-02 22:08:01', 10, 10, 12),
(11, '2020-02-25 19:22:57', '2020-02-25 19:22:57', 12, 11, 12),
(12, '2020-02-25 19:26:56', '2020-02-25 19:26:56', 19, 12, 12),
(13, '2020-02-25 20:00:31', '2020-02-25 20:00:31', 18, 13, 12),
(14, '2020-02-25 20:05:47', '2020-02-25 20:05:47', 17, 14, 12),
(15, '2020-02-25 20:13:23', '2020-02-25 20:13:23', 13, 15, 12),
(16, '2020-02-25 20:30:26', '2020-02-25 20:30:26', 11, 16, 12),
(17, '2020-02-25 21:42:30', '2020-02-25 21:42:30', 16, 17, 12),
(18, '2020-02-25 21:49:03', '2020-02-25 21:49:03', 15, 18, 12),
(19, '2020-02-25 21:51:18', '2020-02-25 21:51:18', 14, 19, 12);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `created_at`, `updated_at`, `name`, `skpd_id`) VALUES
(85, '2019-11-24 08:47:08', '2019-11-24 08:47:08', 'Ruangan StartupHub Kantor Walikota Pontianak', 17),
(86, '2019-11-24 19:12:56', '2019-11-24 19:12:56', 'Ruangan Pontive Center Pontianak', 17),
(87, '2020-02-25 19:12:50', '2020-02-25 19:12:50', 'Ruangan Tata Usaha Dinas Komunikasi dan Informatika Pontianak', 17),
(88, '2020-02-25 19:13:23', '2020-02-25 19:13:23', 'Ruangan Data Center', 17),
(89, '2020-02-25 19:37:08', '2020-02-25 21:54:04', 'Ruangan Bidang Informasi Komunikasi Publik (IKP) Dinas Komunikasi dan Informatika Pontianak', 17);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Employee', 1, 'avatars', 'harry-saputra', 'harry-saputra.jpg', 'image/jpeg', 'public', 89664, '[]', '[]', '[]', 1, '2019-11-24 06:55:02', '2019-11-24 06:55:02'),
(2, 'App\\Models\\Employee', 2, 'avatars', 'miftah_rajunda', 'miftah_rajunda.jpg', 'image/jpeg', 'public', 150197, '[]', '[]', '[]', 2, '2019-11-24 08:36:11', '2019-11-24 08:36:11'),
(3, 'App\\Models\\Functionary', 57, 'avatars', 'syamsul_akbar', 'syamsul_akbar.jpg', 'image/jpeg', 'public', 62704, '[]', '[]', '[]', 3, '2019-11-24 08:39:18', '2019-11-24 08:39:18'),
(4, 'App\\Models\\Functionary', 58, 'avatars', 'uray_inra', 'uray_inra.jpg', 'image/jpeg', 'public', 181667, '[]', '[]', '[]', 4, '2019-11-24 08:41:02', '2019-11-24 08:41:02'),
(5, 'App\\Models\\User', 5, 'avatars', 'harry-saputra', 'harry-saputra.jpg', 'image/jpeg', 'public', 89664, '[]', '[]', '[]', 5, '2019-11-24 17:37:14', '2019-11-24 17:37:14'),
(6, 'App\\Models\\User', 6, 'avatars', 'photo_2019-11-13_22-36-26', 'photo_2019-11-13_22-36-26.jpg', 'image/jpeg', 'public', 47496, '[]', '[]', '[]', 6, '2019-11-24 17:40:18', '2019-11-24 17:40:18'),
(7, 'App\\Models\\User', 7, 'avatars', 'profil2', 'profil2.jpg', 'image/jpeg', 'public', 5159, '[]', '[]', '[]', 7, '2019-11-24 17:41:52', '2019-11-24 17:41:52'),
(8, 'App\\Models\\Employee', 3, 'avatars', 'profil2', 'profil2.jpg', 'image/jpeg', 'public', 5159, '[]', '[]', '[]', 8, '2019-11-24 19:07:41', '2019-11-24 19:07:41'),
(9, 'App\\Models\\Employee', 4, 'avatars', 'photo_2019-11-13_22-36-26', 'photo_2019-11-13_22-36-26.jpg', 'image/jpeg', 'public', 47496, '[]', '[]', '[]', 9, '2019-11-24 19:20:13', '2019-11-24 19:20:13'),
(10, 'App\\Models\\Functionary', 59, 'avatars', 'profil2', 'profil2.jpg', 'image/jpeg', 'public', 5159, '[]', '[]', '[]', 10, '2019-11-24 19:32:01', '2019-11-24 19:32:01'),
(11, 'App\\Models\\Functionary', 60, 'avatars', 'photo_2019-11-13_22-36-26', 'photo_2019-11-13_22-36-26.jpg', 'image/jpeg', 'public', 47496, '[]', '[]', '[]', 11, '2019-11-27 22:05:12', '2019-11-27 22:05:12'),
(12, 'App\\Models\\Employee', 5, 'avatars', 'opulent-profile-square-07', 'opulent-profile-square-07.jpg', 'image/jpeg', 'public', 13877, '[]', '[]', '[]', 12, '2019-11-27 22:10:26', '2019-11-27 22:10:26'),
(13, 'App\\Models\\User', 6, 'avatars', 'teguh', 'teguh.jpg', 'image/jpeg', 'public', 160974, '[]', '[]', '[]', 13, '2019-11-30 17:56:50', '2019-11-30 17:56:50'),
(14, 'App\\Models\\User', 5, 'avatars', 'miftah_rajunda', 'miftah_rajunda.jpg', 'image/jpeg', 'public', 150197, '[]', '[]', '[]', 14, '2019-12-01 01:44:38', '2019-12-01 01:44:38'),
(15, 'App\\Models\\User', 8, 'avatars', 'syamsul_akbar', 'syamsul_akbar.jpg', 'image/jpeg', 'public', 62704, '[]', '[]', '[]', 15, '2019-12-01 06:18:25', '2019-12-01 06:18:25'),
(16, 'App\\Models\\Employee', 6, 'avatars', 'user-512', 'user-512.jpg', 'image/jpeg', 'public', 9801, '[]', '[]', '[]', 16, '2020-01-15 20:48:21', '2020-01-15 20:48:21'),
(17, 'App\\Models\\Employee', 7, 'avatars', 'Reta', 'Reta.jpg', 'image/jpeg', 'public', 179407, '[]', '[]', '[]', 17, '2020-01-30 20:17:59', '2020-01-30 20:17:59'),
(18, 'App\\Models\\Employee', 7, 'avatars', 'Reta', 'Reta.jpg', 'image/jpeg', 'public', 179407, '[]', '[]', '[]', 18, '2020-01-30 20:21:09', '2020-01-30 20:21:09'),
(19, 'App\\Models\\Employee', 2, 'avatars', 'Miftah', 'Miftah.jpg', 'image/jpeg', 'public', 143872, '[]', '[]', '[]', 19, '2020-02-02 21:36:22', '2020-02-02 21:36:22'),
(20, 'App\\Models\\Employee', 6, 'avatars', 'Nur Agus Pratiwi_3x4_70', 'Nur-Agus-Pratiwi_3x4_70.jpg', 'image/jpeg', 'public', 181306, '[]', '[]', '[]', 20, '2020-02-02 21:48:32', '2020-02-02 21:48:32'),
(21, 'App\\Models\\Employee', 8, 'avatars', 'Rama Kadri', 'Rama-Kadri.jpg', 'image/jpeg', 'public', 44776, '[]', '[]', '[]', 21, '2020-02-02 21:53:50', '2020-02-02 21:53:50'),
(22, 'App\\Models\\Employee', 9, 'avatars', 'Febi Resiana', 'Febi-Resiana.jpg', 'image/jpeg', 'public', 122133, '[]', '[]', '[]', 22, '2020-02-02 22:01:30', '2020-02-02 22:01:30'),
(23, 'App\\Models\\Employee', 10, 'avatars', 'Laili Safitri', 'Laili-Safitri.jpg', 'image/jpeg', 'public', 67545, '[]', '[]', '[]', 23, '2020-02-02 22:04:28', '2020-02-02 22:04:28'),
(24, 'App\\Models\\Employee', 11, 'avatars', 'LATAR MERAH 4X6', 'LATAR-MERAH-4X6.png', 'image/png', 'public', 331372, '[]', '[]', '[]', 24, '2020-02-24 23:27:12', '2020-02-24 23:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_18_054843_create_activity_log_table', 1),
(4, '2019_07_18_055115_create_employees_table', 1),
(5, '2019_07_18_150658_create_permission_tables', 1),
(6, '2019_07_19_075151_create_media_table', 1),
(7, '2019_07_21_051047_create_skpds_table', 1),
(8, '2019_07_21_071247_modify_users_table', 1),
(9, '2019_07_27_150137_create_programs_table', 1),
(10, '2019_07_27_150318_create_activities_table', 1),
(11, '2019_07_27_150609_create_work_packages_table', 1),
(12, '2019_07_31_033643_create_functionaries_table', 1),
(13, '2019_07_31_063930_create_positions_table', 1),
(14, '2019_07_31_063944_create_position_categories_table', 1),
(15, '2019_08_01_153107_create_occupations_table', 1),
(16, '2019_08_03_151137_create_contracts_table', 1),
(17, '2019_08_03_152913_create_locations_table', 1),
(18, '2019_08_10_153152_create_attendaces_table', 1),
(19, '2019_08_19_153108_create_work_days_table', 1),
(20, '2019_08_21_143700_add_column_skpd_id_to_employee_tables', 1),
(21, '2019_08_23_134947_remove_column_salary_from_contracts_table', 1),
(22, '2019_08_23_135605_create_salary_components_table', 1),
(23, '2019_08_23_150832_create_salaries_table', 1),
(24, '2019_09_04_034118_create_assessments_table', 1),
(25, '2019_09_13_074205_add_column_attendance_to_attendances_table', 1),
(26, '2019_09_14_144301_create_recap_attendances_table', 1),
(27, '2019_09_15_110537_create_payrolls_table', 1),
(28, '2019_09_15_124917_create_payroll_salaries_table', 1),
(29, '2019_11_04_094357_create_leave_employees_table', 1),
(30, '2019_11_04_094521_create_history_leave_employees_table', 1),
(31, '2019_11_08_071821_add_column_leave_type_to_attendances_table', 1),
(32, '2019_11_08_134125_add_column_cut_leave_to_attendances_table', 1),
(33, '2019_11_10_131722_add_column_dates_to_history_leave_employees_table', 1),
(34, '2019_11_24_043241_add_address_column_to_functionary_tables', 1),
(35, '2019_11_24_044819_create_work_handovers_table', 1),
(36, '2019_11_24_121442_add_column_contract_id_to_workhandovers_table', 1),
(37, '2019_11_24_123730_add_column_date_to_work_handovers_table', 1),
(38, '2019_11_24_135031_create_payment_letters_table', 2),
(39, '2019_11_24_160205_create_work_inspections_table', 3),
(40, '2019_11_24_173512_create_start_working_letters_table', 4),
(41, '2019_11_30_040013_create_work_handover_ppkoms_table', 5),
(42, '2019_11_30_044850_add_column_bonus_to_contracts_tables', 5),
(43, '2019_11_30_140551_create_work_administrations_table', 5),
(44, '2019_12_01_153319_add_column_spk_to_work_inspection_table', 6),
(45, '2020_04_07_070610_create_sub_positions_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 42);

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `functionary_id` int(11) NOT NULL,
  `skpd_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `created_at`, `updated_at`, `functionary_id`, `skpd_id`, `start_date`, `end_date`, `position`, `status`) VALUES
(57, '2019-11-24 08:42:31', '2019-11-24 08:42:31', 57, 17, '2019-01-01', '2024-01-01', 'ppkom', 'active'),
(58, '2019-11-24 08:43:18', '2019-11-24 08:43:18', 58, 17, '2019-01-01', '2024-01-01', 'pa', 'active'),
(59, '2019-11-24 19:33:21', '2019-11-24 19:33:21', 59, 17, '2019-01-01', '2024-01-01', 'pptk', 'active'),
(60, '2019-11-27 22:05:53', '2019-11-27 22:05:53', 60, 17, '2019-01-01', '2024-01-01', 'pphp', 'active'),
(61, '2020-02-21 00:14:17', '2020-02-23 21:02:54', 61, 17, '2020-01-01', '2020-12-31', 'pptk', 'active'),
(62, '2020-02-21 00:17:55', '2020-02-23 21:07:43', 62, 17, '2020-01-01', '2020-12-31', 'ppkom', 'active'),
(63, '2020-02-21 00:20:11', '2020-02-23 21:05:39', 63, 17, '2020-01-01', '2020-12-31', 'pptk', 'active'),
(64, '2020-02-21 00:20:52', '2020-02-23 21:06:55', 64, 17, '2020-01-01', '2020-12-31', 'ppkom', 'active'),
(65, '2020-02-23 21:02:12', '2020-02-23 21:02:12', 65, 17, '2020-01-01', '2020-12-31', 'pptk', 'active'),
(66, '2020-02-23 21:04:02', '2020-02-23 21:04:02', 66, 17, '2020-01-01', '2020-12-31', 'pptk', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_letters`
--

CREATE TABLE `payment_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `source_of_funds` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_letters`
--

INSERT INTO `payment_letters` (`id`, `created_at`, `updated_at`, `skpd_id`, `employee_id`, `functionary_id`, `number`, `section_1`, `body_letter`, `contract_id`, `source_of_funds`, `date`) VALUES
(1, '2019-11-24 17:45:23', '2020-01-16 17:29:33', 17, 2, 57, '003.5.e/BAPEMP/Pontive/PET/DISKOMINFO/II/2019', 'section1', '<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>', 1, 'APBD Kota Pontianak Tahun Anggaran 2019', '2019-11-01'),
(2, '2020-01-19 18:23:08', '2020-01-19 18:23:08', 17, 6, 57, '003.5.e/BAPEMP/Pontive/PET/DISKOMINFO/II/2019', 'section1', '<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019, Tanggal 1 Februari 2019 dan berdasarkan Berita Acara serah terima Nomor 003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019 Tanggal 1 Februari 2019 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Tenaga IT (Informasi Teknolgi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020018 Atas Nama Miftah Rajunda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>', 6, 'APBD Kota Pontianak Tahun Anggaran 2019', '2019-12-01'),
(3, '2020-02-18 20:25:23', '2020-02-18 20:25:23', 17, 6, 57, '001.5.d/BAPEMP/OPCKP-P.Prog/TKPBET.DKI/I/2020', 'section1', '<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.d/BAHPP/OPCKP-P.Prog/TKPBET.DKI/I/2020, Tanggal 31 Februari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.d/BASTP-PPK/OPCKP-P.Prog/TKPBET.DKI/I/2020 Tanggal 31 Februari 2020 bahwa untuk Kegiatan Operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>\r\n\r\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.020804 Atas Nama Nur Agus Pratiwi.</p>\r\n\r\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>', 6, 'APBD Kota Pontianak Tahun Anggaran 2020', '2020-01-31'),
(4, '2020-02-20 19:06:23', '2020-02-20 19:06:23', 17, 9, 57, '001.5.a/BAPEMP/OPCKP-P.Operator/TKPBET.DKI/I/2020', 'section1', '<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.a/BAHPP/OPCKP-P.Operator/TKPBET.DKI/I/2020, Tanggal 31 Januari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.a/BASTP-PPK/OPCKP-P.Operator/TKPBET.DKI/I/2020 Tanggal 31 Januari 2020 bahwa untuk Kegiatan Operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah Rp.3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.019668 Atas Nama Febi Resiana.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>', 9, 'APBD Kota Pontianak Tahun Anggaran 2020', '2020-01-31'),
(5, '2020-02-20 21:29:57', '2020-02-20 21:29:57', 17, 10, 57, '001.5.b/BAPEMP/OPCKP-P.MM/TKPBET.DKI/I/2020', 'section1', '<p>Berdasarkan Berita Acara Pemeriksaan Nomor: 001.1.b/BAHPP/OPCKP-P.MM/TKPBET.DKI/I/2020, Tanggal 31 Januari 2020 dan berdasarkan Berita Acara Serah Terima Nomor 001.2.b/BASTP-PPK/OPCKP-P.MM/TKPBET.DKI/I/2020 Tanggal 31 Januari 2020 bahwa untuk kegiatan operasional Pontive Center Kota Pontianak Pekerjaan Penyedia Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Desain Grafis dan Multimedia), PIHAK KEDUA telah sesuai memenuhi kewajibannya sebagaimana tercantum dalam kedua Berita Acara Tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk itu, kepada PIHAK KEDUA dapat dibayarkan uang sejumlah RP. 3.050.000,00 (Tiga Juta Lima Puluh Ribu Rupiah). Pembayaran dilakukan melalui Transfer ke PUD BPR Bank Pasar Kota Pontianak pada Nomor Rekening: 210.02.019666 Atas Nama Laili Safitri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian Berita Acara ini dibuat dengan sesungguhnya untuk dipergunakan sebagaimana mestinya.</p>', 10, 'APBD Kota Pontianak Tahun Anggaran 2020', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `work_package_id` int(11) NOT NULL,
  `attend` int(11) NOT NULL DEFAULT 0,
  `sick` int(11) NOT NULL DEFAULT 0,
  `leave` int(11) NOT NULL DEFAULT 0,
  `not_present` int(11) NOT NULL DEFAULT 0,
  `gross_salary` bigint(20) NOT NULL DEFAULT 0,
  `deduction_attendance` bigint(20) NOT NULL,
  `deduction_bpjs_healthcare` bigint(20) NOT NULL,
  `deduction_bpjs_social_security` bigint(20) NOT NULL,
  `net_salary` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `created_at`, `updated_at`, `month`, `year`, `employee_id`, `contract_id`, `work_package_id`, `attend`, `sick`, `leave`, `not_present`, `gross_salary`, `deduction_attendance`, `deduction_bpjs_healthcare`, `deduction_bpjs_social_security`, `net_salary`) VALUES
(1, '2019-11-24 19:30:16', '2019-11-24 19:30:16', 11, 2019, 2, 1, 57, 26, 0, 0, 2, 6850000, 0, 137000, 137000, 6576000),
(2, '2019-11-25 06:03:47', '2019-11-25 06:03:47', 11, 2019, 4, 3, 58, 21, 0, 0, 0, 3150000, 0, 63000, 63000, 3024000),
(3, '2019-11-25 06:03:48', '2019-11-25 06:03:48', 11, 2019, 3, 2, 58, 18, 0, 4, 1, 3250000, 0, 65000, 65000, 3120000),
(4, '2019-11-28 00:12:20', '2019-11-28 00:14:30', 11, 2019, 5, 4, 57, 18, 0, 1, 1, 3150000, 0, 63000, 63000, 3024000);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salaries`
--

CREATE TABLE `payroll_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_id` int(11) NOT NULL,
  `salary_component_id` int(11) NOT NULL,
  `salary_component_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_salaries`
--

INSERT INTO `payroll_salaries` (`id`, `created_at`, `updated_at`, `payroll_id`, `salary_component_id`, `salary_component_name`, `nominal`) VALUES
(1, '2019-11-24 19:30:16', '2019-11-24 19:30:16', 1, 1, 'Gaji Pokok', 3000000),
(2, '2019-11-24 19:30:16', '2019-11-24 19:30:16', 1, 2, 'Bonus', 3500000),
(3, '2019-11-24 19:30:16', '2019-11-24 19:30:16', 1, 3, 'Tunjangan Komunikasi', 250000),
(4, '2019-11-24 19:30:16', '2019-11-24 19:30:16', 1, 4, 'Tunjangan Pendidikan', 100000),
(5, '2019-11-25 06:03:47', '2019-11-25 06:03:47', 2, 1, 'Gaji Pokok', 3050000),
(6, '2019-11-25 06:03:47', '2019-11-25 06:03:47', 2, 3, 'Tunjangan Komunikasi', 100000),
(7, '2019-11-25 06:03:48', '2019-11-25 06:03:48', 3, 1, 'Gaji Pokok', 3000000),
(8, '2019-11-25 06:03:48', '2019-11-25 06:03:48', 3, 3, 'Tunjangan Komunikasi', 250000),
(18, '2019-12-01 04:16:16', '2019-12-01 04:16:16', 4, 1, 'Gaji Pokok', 3000000),
(19, '2019-12-01 04:16:16', '2019-12-01 04:16:16', 4, 3, 'Tunjangan Komunikasi', 100000),
(20, '2019-12-01 04:16:16', '2019-12-01 04:16:16', 4, 4, 'Tunjangan Pendidikan', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position_category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `created_at`, `updated_at`, `position_category_id`, `name`) VALUES
(1, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 1, 'Pekerja Operasional Kebersihan Kota'),
(2, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 1, 'Pekerja Operasional Taman Kota'),
(3, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 1, 'Pekerja Pemeliharaan Saluran Kota'),
(4, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 1, 'Pekerja Pemeliharaan Jalan Kota'),
(5, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 2, 'Petugas Pengelola Izin Mendirikan Bangunan Gedung/Bangunan'),
(6, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 2, 'Petugas Teknologi Informasi Komputer (SIG)'),
(7, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 2, 'Pembantu Pengawas Tata Bangunan dan Perumahan'),
(8, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 2, 'Petugas Survey, Pengukuran dan Pemetaan'),
(9, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 3, 'Satpam /Penjaga Malam/ Petugas Keamanan'),
(10, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 3, 'Petugas Perlindungan Masyarakat (Untuk Non Aparatur Sipil Negara Satuan Polisi Pamong Praja)'),
(11, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 4, 'Petugas Pramubakti'),
(12, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 4, 'Petugas Kebersihan'),
(13, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 5, 'Pengemudi/Sopir'),
(14, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Tenaga Penyuluh Perikanan, Pertanian dan Pangan'),
(15, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Petugas Pengawas Bibit Ternak'),
(16, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Petugas Pengelolaan, Pengembangan dan Pemeliharaan Bibit Tanaman Pertanian'),
(17, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Medik Veteriner'),
(18, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Paramedik Veteriner'),
(19, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Petugas Pengelola Rumah Potong Hewan'),
(20, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Petugas Laboratorium Pengolahan Hasil dan Kultur Jaringan'),
(21, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 6, 'Petugas Pembenihan/Budidaya Ikan'),
(22, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 7, 'Pengasuh pada PLAT/UPRS/P2TP2A'),
(23, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 7, 'Pendamping pada PLAT/UPRS/P2TP2A'),
(24, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Petugas Medis'),
(25, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Petugas Paramedis'),
(26, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Apoteker'),
(27, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Asisten Apoteker'),
(28, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Non Paramedis'),
(29, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Teknisi Medis'),
(30, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Pengemudi Ambulan'),
(31, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Petugas Laboratorium'),
(32, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Sekretariat Komisi Penanggulangan AIDS'),
(33, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 8, 'Terapist Anak Berkebutuhan Khusus'),
(34, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 9, 'Penguji Kendaraan Bermotor'),
(35, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 9, 'Sopir Bus Rapid Transport (BRT)'),
(36, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 10, 'Pekerja/Tenaga Teknologi Informasi'),
(37, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 10, 'Pekerja/Admin PONTIVE CENTER'),
(38, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 10, 'Pekerja/Tenaga Pengolah Informasi dan Multimedia'),
(39, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 10, 'Pekerja/Tenaga Pengolah Informasi dan Multimedia'),
(40, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 11, 'Petugas Administrasi Lulusan Prodi IP'),
(41, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 11, 'Petugas Layanan Operasional'),
(42, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 12, 'Tenaga Ahli Fraksi'),
(43, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 13, 'Pengawas Kolam renang Ampera'),
(44, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 13, 'Teknisi'),
(45, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 13, 'Pengelola/Juru Parkir'),
(46, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 13, 'Petugas Loket/Karcis'),
(47, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 13, 'Juru Kelola Pontianak Convention Center');

-- --------------------------------------------------------

--
-- Table structure for table `position_categories`
--

CREATE TABLE `position_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position_categories`
--

INSERT INTO `position_categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja Penanganan Prasarana dan Sarana Umum (PPSU)'),
(2, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Tata Ruang'),
(3, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Keamanan'),
(4, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Pramubakti dan Kebersihan Bangunan Pemerintah:'),
(5, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pengemudi/Sopir'),
(6, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Pangan, Pertanian,Perikanan dan Peternakan'),
(7, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Sosial'),
(8, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Kesehatan'),
(9, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Perhubungan dan lalu Lintas'),
(10, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Bidang Komunikasi, Informatika dan Statistik'),
(11, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Administrasi'),
(12, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Tenaga Ahli Fraksi'),
(13, '2019-11-24 06:43:04', '2019-11-24 06:43:04', 'Pekerja/Petugas Sarana dan Prasarana Milik Pemerintah');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `created_at`, `updated_at`, `code`, `name`, `skpd_id`) VALUES
(29, '2019-11-24 07:55:21', '2019-11-24 07:55:21', '017.1', 'StartupHub untuk Masyarakat', 17),
(30, '2019-11-24 19:09:26', '2019-11-24 19:09:26', '017.2', 'Pengelolaan Pontive Center', 17),
(31, '2020-01-31 00:55:35', '2020-01-31 00:55:35', '2.10.2.10.01.00.16', 'Program Penguasaan Serta Pengembangan Aplikasi dan Teknologi Informasi dan Komunikasi', 17),
(32, '2020-02-25 01:05:37', '2020-02-25 01:05:37', '2.10.2.10.01.00.01', 'Program Pelayanan Administrasi Perkantoran', 17),
(33, '2020-02-25 18:21:06', '2020-02-25 18:21:06', '2.10.2.10.01.00.17', 'Program Peningkatan Kualitas Pelayanan Informasi Publik', 17),
(34, '2020-02-25 21:08:39', '2020-02-25 21:08:39', '2.10.2.10.01.00.18', 'Program Pengembangan Pengelolaan Tata Pemerintahan berbasis E-Government', 17);

-- --------------------------------------------------------

--
-- Table structure for table `recap_attendances`
--

CREATE TABLE `recap_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `work_package_id` int(11) NOT NULL,
  `attend` int(11) NOT NULL DEFAULT 0,
  `sick` int(11) NOT NULL DEFAULT 0,
  `leave` int(11) NOT NULL DEFAULT 0,
  `not_present` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recap_attendances`
--

INSERT INTO `recap_attendances` (`id`, `created_at`, `updated_at`, `month`, `year`, `employee_id`, `contract_id`, `work_package_id`, `attend`, `sick`, `leave`, `not_present`) VALUES
(1, '2019-11-24 16:49:48', '2019-11-24 17:33:49', 11, 2019, 2, 1, 57, 26, 0, 0, 2),
(2, '2019-11-24 19:14:49', '2019-11-24 19:26:52', 11, 2019, 3, 2, 58, 18, 0, 4, 1),
(3, '2019-11-24 19:22:56', '2019-11-24 19:26:52', 11, 2019, 4, 3, 58, 21, 0, 0, 0),
(4, '2019-11-27 22:15:20', '2019-11-28 00:14:16', 11, 2019, 5, 4, 57, 18, 0, 1, 1),
(6, '2020-01-16 17:27:24', '2020-01-16 17:28:16', 1, 2020, 2, 1, 57, 0, 0, 0, 1),
(7, '2020-01-16 17:33:21', '2020-01-16 17:33:21', 1, 2020, 5, 4, 57, 1, 0, 0, 0),
(8, '2020-01-16 17:34:15', '2020-01-16 17:34:15', 1, 2020, 1, 5, 57, 1, 0, 0, 0),
(11, '2020-02-02 22:10:19', '2020-02-27 18:25:22', 2, 2020, 2, 1, 59, 20, 0, 0, 0),
(12, '2020-02-02 22:11:38', '2020-02-27 18:25:22', 2, 2020, 6, 6, 59, 20, 0, 0, 0),
(13, '2020-02-02 22:11:38', '2020-02-27 18:25:22', 2, 2020, 7, 7, 59, 20, 0, 0, 0),
(14, '2020-02-02 22:11:39', '2020-02-27 18:25:22', 2, 2020, 8, 8, 59, 18, 0, 0, 2),
(15, '2020-02-02 22:11:40', '2020-02-27 18:25:22', 2, 2020, 9, 9, 59, 19, 0, 0, 1),
(16, '2020-02-02 22:11:40', '2020-02-27 18:25:22', 2, 2020, 10, 10, 59, 20, 0, 0, 0),
(17, '2020-02-02 22:14:30', '2020-02-18 19:35:53', 1, 2020, 6, 6, 59, 23, 0, 0, 0),
(18, '2020-02-02 22:14:30', '2020-02-02 22:54:59', 1, 2020, 2, 1, 59, 20, 0, 0, 0),
(19, '2020-02-02 22:14:30', '2020-02-02 22:55:01', 1, 2020, 7, 7, 59, 20, 0, 0, 0),
(20, '2020-02-02 22:14:30', '2020-02-02 22:55:02', 1, 2020, 9, 9, 59, 20, 0, 0, 0),
(21, '2020-02-02 22:14:30', '2020-02-02 22:55:01', 1, 2020, 8, 8, 59, 20, 0, 0, 0),
(22, '2020-02-02 22:14:30', '2020-02-02 22:55:02', 1, 2020, 10, 10, 59, 20, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(2, 'adminskpd', 'web', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(3, 'adminppk', 'web', '2019-11-24 06:43:04', '2019-11-24 06:43:04'),
(4, 'operator', 'web', '2019-11-24 06:43:04', '2019-11-24 06:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `salary_component_id` int(11) NOT NULL,
  `nominal` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `created_at`, `updated_at`, `contract_id`, `salary_component_id`, `nominal`) VALUES
(10, '2019-11-27 22:15:01', '2019-11-27 22:15:01', 4, 1, 3000000),
(11, '2019-11-27 22:15:01', '2019-11-27 22:15:01', 4, 3, 100000),
(12, '2019-11-27 22:15:01', '2019-11-27 22:15:01', 4, 4, 50000),
(13, '2019-11-28 00:10:24', '2019-11-28 00:10:24', 5, 1, 3000000),
(14, '2019-11-28 00:10:24', '2019-11-28 00:10:24', 5, 4, 500000),
(26, '2020-02-02 18:17:08', '2020-02-02 18:17:08', 7, 1, 2950000),
(30, '2020-02-02 21:57:32', '2020-02-02 21:57:32', 3, 1, 3050000),
(31, '2020-02-02 21:57:32', '2020-02-02 21:57:32', 3, 3, 100000),
(32, '2020-02-02 21:57:49', '2020-02-02 21:57:49', 2, 1, 3000000),
(33, '2020-02-02 21:57:49', '2020-02-02 21:57:49', 2, 3, 250000),
(35, '2020-02-02 22:08:01', '2020-02-02 22:08:01', 10, 1, 3050000),
(36, '2020-02-02 22:08:32', '2020-02-02 22:08:32', 9, 1, 3050000),
(37, '2020-02-02 22:08:47', '2020-02-02 22:08:47', 8, 1, 2950000),
(40, '2020-02-25 19:22:57', '2020-02-25 19:22:57', 11, 1, 2750000),
(41, '2020-02-25 19:26:56', '2020-02-25 19:26:56', 12, 1, 2750000),
(45, '2020-02-25 20:00:31', '2020-02-25 20:00:31', 13, 1, 2750000),
(46, '2020-02-25 20:05:47', '2020-02-25 20:05:47', 14, 1, 2750000),
(47, '2020-02-25 20:13:23', '2020-02-25 20:13:23', 15, 1, 2750000),
(48, '2020-02-25 20:30:26', '2020-02-25 20:30:26', 16, 1, 2970000),
(49, '2020-02-25 21:42:30', '2020-02-25 21:42:30', 17, 1, 2970000),
(50, '2020-02-25 21:49:03', '2020-02-25 21:49:03', 18, 1, 2950000),
(51, '2020-02-25 21:51:18', '2020-02-25 21:51:18', 19, 1, 2950000),
(54, '2020-02-25 23:38:47', '2020-02-25 23:38:47', 1, 1, 3050000),
(58, '2020-03-09 18:30:41', '2020-03-09 18:30:41', 6, 1, 3050000);

-- --------------------------------------------------------

--
-- Table structure for table `salary_components`
--

CREATE TABLE `salary_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_components`
--

INSERT INTO `salary_components` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gaji Pokok', '2019-11-24 08:48:54', '2019-11-24 08:48:54'),
(2, 'Bonus', '2019-11-24 08:49:36', '2019-11-24 08:49:36'),
(3, 'Tunjangan Komunikasi', '2019-11-24 08:50:25', '2019-11-24 08:50:46'),
(4, 'Tunjangan Pendidikan', '2019-11-24 08:51:08', '2019-11-24 08:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `skpds`
--

CREATE TABLE `skpds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skpds`
--

INSERT INTO `skpds` (`id`, `created_at`, `updated_at`, `number`, `name`, `address`, `phone_number`, `fax`, `post_code`, `website`, `email`) VALUES
(1, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '001', 'Sekretariat Daerah Kota Pontianak', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '002', 'Sekretariat DPRD Kota Pontianak', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-11-24 06:43:04', '2019-12-03 20:33:11', '003', 'Inspektorat Daerah Kota Pontianak', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '004', 'Dinas Pendidikan dan Kebudayaan', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '005', 'Dinas Pengendalian Penduduk, Keluarga Berencana, Pemberdayaan Perempuan dan Perlindungan Anak', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '006', 'Dinas Lingkungan Hidup', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '007', 'Dinas Penanaman Modal, Tenaga Kerja dan Pelayanan Terpadu Satu Pintu', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '008', 'Dinas Koperasi, Usaha Mikro dan Perdagangan', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '009', 'Dinas Perhubungan', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-11-24 06:43:04', '2019-12-03 20:33:48', '010', 'Dinas Kepemudaan, Olahraga dan Pariwisata', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '011', 'Dinas Kesehatan', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '012', 'Dinas Kependudukan dan Pencatatan Sipil', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '013', 'Dinas Sosial', NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '014', 'Dinas Pekerjaan Umum dan Penataan Ruang', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '015', 'Dinas Perumahan Rakyat dan Kawasan Pemukiman', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '016', 'Dinas Pangan, Pertanian, dan Perikanan', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-11-24 06:43:04', '2020-04-03 00:06:10', '017', 'Dinas Komunikasi dan Informatika', 'Jalan Rahadi Oesman No.3', '0561 - 733041', '0561 - 733041', '78111', 'www.diskominfo.pontianakkota.go.id', 'diskominfo@pontianakkota.go.id'),
(18, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '018', 'Satuan Polisi Pamong Praja', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '019', 'Dinas Perpustakaan', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '020', 'Badan Keuangan Daerah', NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '021', 'Badan Perencanaan Pembangunan Daerah', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '022', 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '023', 'Kecamatan Pontianak Utara', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '024', 'Kecamatan Pontianak Selatan', NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '025', 'Kecamatan Pontianak Barat', NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '026', 'Kecamatan Pontianak Timur', NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '027', 'Kecamatan Pontianak Tenggara', NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2019-11-24 06:43:04', '2019-11-24 06:43:04', '028', 'Kecamatan Pontianak Kota', NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2019-12-03 20:34:37', '2019-12-03 20:34:37', '029', 'Badan Penanggulangan Bencana Daerah', NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2019-12-03 20:34:53', '2019-12-03 20:35:08', '039', 'Kantor Kesatuan Bangsa, Sosial dan Politik', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `start_working_letters`
--

CREATE TABLE `start_working_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `section_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_positions`
--

CREATE TABLE `sub_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `skpd_id` int(11) DEFAULT NULL,
  `ppk_id` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `nip`, `skpd_id`, `ppk_id`, `status`) VALUES
(1, 'Administrator', 'admin@comeet.dev', NULL, '$2y$10$yaQnV9bzPEVQO50.8RH2IOifj5qcJXDI3UQnqR.r1KkaJ6sPMYhAq', NULL, '2019-11-24 06:43:04', '2019-11-24 06:43:04', NULL, NULL, NULL, 'active'),
(2, 'Admin SKPD', 'skpd@pjlp.dev', NULL, '$2y$10$9LOjtOip6t/YFfpT86hYX.1I0qxSfgLU01eC5oUDKl3V8GuJpTcUW', NULL, '2019-11-24 06:43:04', '2019-11-24 06:43:04', NULL, 1, NULL, 'active'),
(3, 'Admin PPK', 'ppk@pjlp.dev', NULL, '$2y$10$H9SoKAEeIKd0FQg4zn3W3OUNSc5sXL5B8U6yKP5OyGS46mkbN3t9e', NULL, '2019-11-24 06:43:04', '2019-11-24 06:43:04', NULL, 1, NULL, 'active'),
(4, 'Operator', 'operator@pjlp.dev', NULL, '$2y$10$cHKfRBKA/cdVLT3kMBCiB.3yWCcXc8BYB.kZe4/Qno7/s/9BKjuGO', NULL, '2019-11-24 06:43:04', '2019-11-24 06:43:04', NULL, 1, NULL, 'active'),
(5, 'Miftah Rajunda, S.Kom', 'harry.saputra@gmail.com', NULL, '$2y$10$QFvPC0Z0Bzt8I4wKrx4ODOV9rsmMdZlV4bQllxSC19pwB99l4TiQ2', NULL, '2019-11-24 17:37:14', '2019-12-01 01:44:38', 1000, 17, NULL, 'active'),
(6, 'Teguh Adhitya Nugraha', 'teguh@gmail.com', NULL, '$2y$10$3shtFLG7DTEMPRbwOBgLXOX6rxixIHrmaDQVeFQHybUjEjnYMFiTO', NULL, '2019-11-24 17:40:18', '2019-11-30 17:50:51', 1001, 17, NULL, 'active'),
(7, 'Arif', 'arif@gmail.com', NULL, '$2y$10$NpFd1TPididQHOxcJ4jkDeLtLGVXzSL4pA.g2CcbYnmJvLTq6NFAe', NULL, '2019-11-24 17:41:52', '2019-11-24 17:41:52', 1002, 11, NULL, 'active'),
(8, 'Syamsul Akbar, ST., M.Eng., M.Sc', 'syamsulakbar@gmail.com', NULL, '$2y$10$vsVoI0eBODqeR9PuFfrnXOwrZFoyczvwKoh/WYRblp70wceFGReam', '9nIbHysH6u8ygjrpSZNgM6kXVkmNQBuO40bpRLAovLkEKr6WLfqmaUhv9cTM', '2019-12-01 06:18:25', '2019-12-01 06:18:42', 1003, 17, NULL, 'active'),
(9, 'Admin SEKDA', 'sekre.daerah@pontianakkota.go.id', NULL, '$2y$10$rJ.nW0R/v6yVhfq4kePnsuup5jZe4j3ZArt7zFhjQK43NE2nEkZum', NULL, '2019-12-03 20:11:30', '2019-12-03 20:12:00', 100, 1, NULL, 'active'),
(10, 'Admin Inspektorat', 'inspektorat@pontianakkota.go.id', NULL, '$2y$10$WYU3CIg.vtvO0QDII2dan.9eqGjOfJl3uhIpNV0Fen.5TgYi3Wl5m', NULL, '2019-12-03 20:13:22', '2019-12-03 20:13:22', 101, 3, NULL, 'active'),
(11, 'Admin Sekretariat DPRD', 'sekre.dprd@pontianakkota.go.id', NULL, '$2y$10$XFFZJpx5OwpMXsKCeVWNr./PWyu1ocsFi8e/v33LBjOD1SOudMn6O', NULL, '2019-12-03 20:14:03', '2019-12-03 20:14:03', 102, 2, NULL, 'active'),
(12, 'Admin Satpol PP', 'satpolpp@pontianakkota.go.id', NULL, '$2y$10$OkNYXUQ7K7r72J.1oFiWBOL8/LKwkt5t9VN.83rxqVsqQK83X62kS', NULL, '2019-12-03 20:14:37', '2019-12-03 20:14:37', 103, 18, NULL, 'active'),
(13, 'Admin BPKSDM', 'bkpsdm@pontianakkota.go.id', NULL, '$2y$10$rtQ2p8qpd5vzcyGTCteBFOzdO79rmxsYO90AU0OjQbo4fEA5sVnW.', NULL, '2019-12-03 20:15:17', '2019-12-03 20:15:17', 104, 22, NULL, 'active'),
(14, 'Admin BKD', 'bkd@pontianakkota.go.id', NULL, '$2y$10$Dle3QtW/UV6z8py7rIqr.uJxpCVuQcHGRrszZxozfmlowU74vApve', NULL, '2019-12-03 20:15:57', '2019-12-03 20:15:57', 105, 20, NULL, 'active'),
(15, 'Admin Badan Perencanaan Pembangunan Daerah', 'bppd@pontianakkota.go.id', NULL, '$2y$10$yCKfmbXWcEVxdN7cag4XDunS5cQAsqdzIA3gDo.pHlqgRDE4nG.E.', NULL, '2019-12-03 20:16:35', '2019-12-03 20:16:35', 106, 21, NULL, 'active'),
(16, 'Admin Dinas Lingkungan Hidup', 'dlh@pontianakkota.go.id', NULL, '$2y$10$ucOkr6/WfXuBnBOEEG.fBOzI.88OpjUEi7TYtJH1j1rIjnojKgrUW', NULL, '2019-12-03 20:18:12', '2019-12-03 20:18:12', 108, 6, NULL, 'active'),
(17, 'Dinas Pendidikan dan Kebudayaan', 'dpk@pontianakkota.go.id', NULL, '$2y$10$UHDva6y/e97vmkl6lmPctec4YIYsVBtvm.LBvJdg4DaEek7SadLiu', NULL, '2019-12-03 20:18:40', '2019-12-03 20:18:40', 109, 4, NULL, 'active'),
(18, 'Admin Dinas Kesehatan', 'dk@pontianakkota.go.id', NULL, '$2y$10$vomBfQ8K.bjy9IRZy1wrgeBrf569Lhs3ziTwdJZ2/PtNFqnjt.cW2', NULL, '2019-12-03 20:19:09', '2019-12-03 20:19:09', 110, 11, NULL, 'active'),
(19, 'Admin Dinas Perpustakaan', 'dp@pontianakkota.go.id', NULL, '$2y$10$q9FLQwTFRrdr6PwUd6LsXee6LIU4E917i/M1rN8bjlER492gr.GZe', NULL, '2019-12-03 20:19:34', '2019-12-03 20:19:34', 111, 19, NULL, 'active'),
(20, 'Admin Dinas Kepemudaan, Olah Raga, dan Pariwisata', 'dkorp@pontianakkota.go.id', NULL, '$2y$10$a38xKCUWiJtESju/lQeZnOgE6XJ2mlhuBESZJNNKaP6r5vF7ussjq', NULL, '2019-12-03 20:20:12', '2019-12-03 20:20:12', 112, 10, NULL, 'active'),
(21, 'Admin Dinas Perhubungan', 'dishub@pontianakkota.go.id', NULL, '$2y$10$26S0qVdzKYiklJVdQW/i6OJHSZBkKJdaLDAxVdrtFF/4U1oUW9liG', NULL, '2019-12-03 20:21:06', '2019-12-03 20:21:06', 113, 9, NULL, 'active'),
(22, 'Admin Dinas Pekerjaan Umum dan Penataan Ruang', 'dpupr@pontianakkota.go.id', NULL, '$2y$10$kZZ1fmqFpDhJxY6Hyh7Yge42F4c0paVJ9nazVST1IIzB9C06SpkJy', NULL, '2019-12-03 20:21:38', '2019-12-03 20:21:38', 114, 14, NULL, 'active'),
(23, 'Admin Dinas Sosial', 'ds@pontianakkota.go.id', NULL, '$2y$10$DqeTlSEXlqa0zYCyHnMgG.ny/BK0LRuHFZG2kA4M5c0Qywxeuun0W', NULL, '2019-12-03 20:22:18', '2019-12-03 20:22:18', 115, 13, NULL, 'active'),
(24, 'Admin Dinas Kependudukan dan Pencatatan Sipil', 'dkps@pontianakkota.go.id', NULL, '$2y$10$q.McKUkjKn1UMhUb7vLLUuWsfWzjo7om1aNuhhFvN/ZfiWQLMD/km', 'qxxKV3CZ4o1sHB3tLAV2Fo08OSkWmYlbGt4SPGelCdjZteKCPQB4J9haA4U4', '2019-12-03 20:22:44', '2019-12-03 20:22:44', 116, 12, NULL, 'active'),
(25, 'Admin Dinas Koperasi, Usaha Mikro, dan Perdagangan', 'dkump@pontianakkota.go.id', NULL, '$2y$10$WKMjvmiOXk26gxaU3CJUj.7G01sO37Tfy9EDXly9jUR7/6Rq9oeOC', NULL, '2019-12-03 20:23:20', '2019-12-03 20:23:20', 117, 8, NULL, 'active'),
(26, 'Dinas Komunikasi dan Informatika', 'dki@pontianakkota.go.id', NULL, '$2y$10$mKSyYcXqsTkdzi/E6YHxjuf2ow0vcXFvMeY1C2pE2CCWU5vDRIUIy', 'KOIKCAeRCnUsAV1g6JW9bo1xiArHcV4Z6AZJiROoLgLKdIOJSNLumBr051zr', '2019-12-03 20:23:48', '2019-12-03 20:23:48', 118, 17, NULL, 'active'),
(27, 'Admin Dinas Perumahan Rakyat dan Kawasan Permukiman', 'dprkp@pontianakkota.go.id', NULL, '$2y$10$1Rgqgez2X6aNhVEh0Jp52uCZAsS6nz5dspikJvdzS.3GccBOP2Ogm', NULL, '2019-12-03 20:24:17', '2019-12-03 20:24:17', 119, 15, NULL, 'active'),
(28, 'Admin Dinas Penanaman Modal, Tenaga Kerja dan PTSP', 'dpmtkptsp@pontianakkota.go.id', NULL, '$2y$10$WFMNrc/ef0ShzsBxYMv4hOBINE3KvAvzD3TGVRkp4mcDs19vWZh4S', NULL, '2019-12-03 20:24:58', '2019-12-03 20:24:58', 120, 7, NULL, 'active'),
(29, 'Admin Dinas Pangan, Pertanian, dan Perikanan', 'dppp@pontianakkota.go.id', NULL, '$2y$10$avur2k4h4y638XgSh8t0M.9FTGMRtKIq0GclbIi0BcfzPZzvGEDRS', NULL, '2019-12-03 20:25:29', '2019-12-03 20:25:35', 121, 16, NULL, 'active'),
(30, 'Admin Dinas Pengendalian Penduduk, KB, Pemberdayaan Perempuan, dan Perlindungan Anak', 'dppkbpppa@pontianakkota.go.id', NULL, '$2y$10$YhjGdyhKsic7YY6TVyg6l.Eh7OwUFtSMSviWRxjGgoYD0TPXIj6WW', NULL, '2019-12-03 20:26:12', '2019-12-03 20:26:12', 122, 5, NULL, 'active'),
(31, 'Admin Kecamatan Pontianak Barat', 'kpb@pontianakkota.go.id', NULL, '$2y$10$QXlShmtOI11knWqso29V9uoGAvfhMAPWZZkT4w4HbjBeJqsYV1LXO', NULL, '2019-12-03 20:29:39', '2019-12-03 20:29:39', 124, 25, NULL, 'active'),
(32, 'Admin Kecamatan Pontianak Selatan', 'kps@pontianakkota.go.id', NULL, '$2y$10$31jFvkpFqNk1CzVzDItnH.R/wZS6ueKO4Cc2TNQsPBoIZtZiOWV8G', NULL, '2019-12-03 20:30:09', '2019-12-03 20:30:09', 125, 24, NULL, 'active'),
(33, 'Admin Kecamatan Pontianak Kota', 'kpk@pontianakkota.go.id', NULL, '$2y$10$14y1ggFxZf7spNQ./vExq.82igJ3gPrkJ5pR9PTVZG3PlduTN3K2W', NULL, '2019-12-03 20:30:36', '2019-12-03 20:30:36', 126, 28, NULL, 'active'),
(34, 'Admin Kecamatan Pontianak Tenggara', 'kpt@pontianakkota.go.id', NULL, '$2y$10$TkZFhfFmq7wdFoA0F3/4Puw.grrQaIsIXrpV7G3B0QVil1exI8B1W', NULL, '2019-12-03 20:31:01', '2019-12-03 20:31:01', 127, 27, NULL, 'active'),
(35, 'Admin Kecamatan Pontianak Utara', 'kpu@pontianakkota.go.id', NULL, '$2y$10$AvxLTzX1FZlKDsO/DFOmT.c7YAVPHbQEyyDFzUe9yPpkgGyIUIov.', NULL, '2019-12-03 20:31:28', '2019-12-03 20:31:28', 128, 23, NULL, 'active'),
(36, 'Admin Kecamatan Pontianak Timur', 'kptim@pontianakkota.go.id', NULL, '$2y$10$uGkBLmpcs5c7Xdqg2.7Xh.zaBDLuG7BIKu6Q.s.IaeUNqSdvGD86a', NULL, '2019-12-03 20:32:15', '2019-12-03 20:32:15', 129, 26, NULL, 'active'),
(37, 'Admin Badan Penanggulangan Bencana Daerah', 'bpbd@pontianakkota.go.id', NULL, '$2y$10$kZdOpx1.l1un1/wDPIPRoOkIB2QWM4bhehqc94H4PSAgRbCN.5e.6', NULL, '2019-12-03 20:35:50', '2019-12-03 20:35:50', 107, 29, NULL, 'active'),
(38, 'Admin Kantor Kesatuan Bangsa, Sosial, dan Politik', 'kkbsp@pontianakkota.go.id', NULL, '$2y$10$Hnr5jnXSM41UpMJ0oACGW.oisOSc59talNvQRx4jWk9sFmaImqmNK', NULL, '2019-12-03 20:36:24', '2019-12-03 20:36:24', 123, 30, NULL, 'active'),
(39, 'adminpjlp', 'adminpjlp@pontianakkota.go.id', NULL, '$2y$10$xPg00LqQ5xDTQHxlkKA9SeNyD8iXrXSCwGhl4dQe63ArI5DXiTPre', 'VgcmG1eXXTlTAbBvkznTVfeD42Ss3WzcSO9m77UZWssF2AjmcOD3k8eTNYRU', '2020-01-14 21:12:40', '2020-01-14 21:12:40', 1, 17, NULL, 'active'),
(40, 'Syamsul Akbar ST., M.Eng., M.Sc', 'sy.akbar@gmail.com', NULL, '$2y$10$mQ6hbf4PBqJx0SS34r79du2j2JinankGui9xXp1S33TN3T8dltG6e', NULL, '2020-02-02 23:17:20', '2020-02-02 23:17:20', 197709012002121006, 17, NULL, 'active'),
(41, 'Admin Diskominfo', 'diskominfo@pontianakkota.go.id', NULL, '$2y$10$5pdyxvUdlNYnXPcG/Y0DMeB9rS.fh49t9qMVC6nia85AcJVxJtgMS', NULL, '2020-02-26 21:34:59', '2020-02-26 21:34:59', 2, 17, NULL, 'active'),
(42, 'Op Diskominfo', 'diskominfo@example.com', NULL, '$2y$10$jpvt540J1RSCOG7ZNmlp9Ok3MKFnxCyxngIg95DZxlWAzFpmlDc1S', NULL, '2020-02-26 21:36:15', '2020-02-26 21:36:15', 3, 17, NULL, 'active'),
(43, 'Drs. Zulkarnain, M.Si.', 'mail@example.com', NULL, '$2y$10$LMm12/4q3myfyFlIQqyu/et5yHZb8b7ObwDnHXVYH/dqlHWYEV1Me', NULL, '2020-03-09 18:51:48', '2020-03-09 18:51:48', 196601271986031009, 17, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `work_administrations`
--

CREATE TABLE `work_administrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `section_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_administrations`
--

INSERT INTO `work_administrations` (`id`, `created_at`, `updated_at`, `skpd_id`, `employee_id`, `functionary_id`, `contract_id`, `number`, `date`, `section_1`, `section_2`, `section_3`) VALUES
(1, '2020-01-19 18:18:09', '2020-01-19 18:18:09', 17, 6, 60, 6, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '2019-11-20', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>'),
(2, '2020-02-18 20:04:01', '2020-02-18 20:04:01', 17, 6, 60, 6, '001.3.d/BAHPA/OPCKP-P.Prog/TKPBET.DKI/I/2020', '2020-01-31', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Tiga Puluh Satu&nbsp;</strong>Bulan <strong>Januari&nbsp;</strong>tahun <strong><span style=\"font-size:10.0pt\">Dua Ribu Dua Puluh</span></strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 Tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Administrasi ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `work_days`
--

CREATE TABLE `work_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` int(11) NOT NULL,
  `january` int(11) NOT NULL,
  `february` int(11) NOT NULL,
  `march` int(11) NOT NULL,
  `april` int(11) NOT NULL,
  `may` int(11) NOT NULL,
  `june` int(11) NOT NULL,
  `july` int(11) NOT NULL,
  `august` int(11) NOT NULL,
  `september` int(11) NOT NULL,
  `october` int(11) NOT NULL,
  `november` int(11) NOT NULL,
  `december` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_days`
--

INSERT INTO `work_days` (`id`, `created_at`, `updated_at`, `year`, `january`, `february`, `march`, `april`, `may`, `june`, `july`, `august`, `september`, `october`, `november`, `december`) VALUES
(1, '2019-11-24 07:33:26', '2019-11-28 00:12:06', 2019, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20),
(2, '2020-02-18 19:09:55', '2020-02-18 19:09:55', 2020, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `work_handovers`
--

CREATE TABLE `work_handovers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_handovers`
--

INSERT INTO `work_handovers` (`id`, `created_at`, `updated_at`, `skpd_id`, `employee_id`, `functionary_id`, `number`, `section_1`, `section_2`, `section_3`, `section_4`, `contract_id`, `date`) VALUES
(1, '2019-11-24 19:54:40', '2019-11-24 19:54:40', 17, 4, 57, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>', 3, '2019-11-01'),
(2, '2019-12-01 15:46:10', '2019-12-01 15:46:10', 17, 3, 57, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', 'section1', '<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>', 2, '2019-12-01'),
(3, '2020-01-19 18:14:47', '2020-01-19 18:14:47', 17, 6, 57, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', 'section1', '<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>', 6, '2019-12-01'),
(4, '2020-02-18 19:52:05', '2020-02-18 19:52:05', 17, 6, 57, '001.2.d/BASTP-PPK/OPCKP-P.Prog/TKPBET.DKI/I/2020', 'section1', '<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 001.1.d/BAHPP/OPCKP-P.Prog/TKPBET.DKI/I/2020 tanggal 31 Januari 2020 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n		<li><span style=\"font-size:10.0pt\">SPMK Nomor 006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020</span> <span style=\"font-size:10.0pt\">tanggal 2 Januari 2020</span></li>\r\n		<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n		<li>SPK Nomor 006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n		<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) selama 1 (satu) bulan (Januari) dengan rincian pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hasil Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>', 6, '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `work_handover_ppkoms`
--

CREATE TABLE `work_handover_ppkoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `functionary2_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `section_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_handover_ppkoms`
--

INSERT INTO `work_handover_ppkoms` (`id`, `created_at`, `updated_at`, `skpd_id`, `functionary_id`, `functionary2_id`, `number`, `date`, `section_2`, `section_3`, `section_4`) VALUES
(1, '2020-01-19 18:20:28', '2020-01-19 18:20:28', 17, 57, 58, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '2019-11-30', '<p>Berdasarkan Berita Acara Hasil Pemeriksaan Pekerjaan Nomor 003.1.e/BAHPP/Pontive/PET/DISKOMINFO/II/2019 tanggal 1 Februari 2019 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 03.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n		<li>SPK Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam syarat Umum Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hail Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>'),
(2, '2020-02-18 20:17:48', '2020-02-18 20:17:48', 17, 57, 58, '001.4.d/BASTP-PA/OPCKP-P.Prog/TKPBET.DKI/I/2020', '2020-01-31', '<p>Berdasarkan Berita Acara Serah Terima Hasil Pekerjaan Nomor 001.2.d/BASTP-PPK/OPCKP-P.Prog/TKPBET.DKI/I/2020 tanggal 31 Januari 2020 beserta lampirannya, dengan ini menyatakan telah mengadakan Serah Terima Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasioanal Pontive Center Kota Pontianak dengan hasil sebagai berikut:</p>', '<p>Pasal 1</p>\r\n\r\n<ol>\r\n	<li>PIHAK KEDUA telah melaksanakan pekerjaan dan menyerahkan hasilnya kepada PIHAK PERTAMA dengan kondisi baik serta sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n		<li><span style=\"font-size:11pt\"><span style=\"font-size:10.0pt\">SPMK Nomor </span><span style=\"font-size:10.0pt\">006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020</span> <span style=\"font-size:10.0pt\">tanggal 2 Januari 2020</span></span></li>\r\n		<li><span style=\"font-size:10.0pt\">Amandemen / Addendum </span><span style=\"font-size:10.0pt\">Pertama </span><span style=\"font-size:10.0pt\">Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</span></li>\r\n	</ul>\r\n	</li>\r\n	<li>PIHAK PERTAMA telah menerima hasil pekerjaan dari PIHAK KEDUA dengan kondisi baik sesuai dengan:\r\n	<ul>\r\n		<li>SPK Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n		<li><span style=\"font-size:11pt\"><span style=\"font-size:10.0pt\">SPMK Nomor </span><span style=\"font-size:10.0pt\">006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020</span> <span style=\"font-size:10.0pt\">tanggal 2 Januari 2020</span></span></li>\r\n		<li><span style=\"font-size:10.0pt\">Amandemen / Addendum </span><span style=\"font-size:10.0pt\">Pertama </span><span style=\"font-size:10.0pt\">Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</span></li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>Pasal 2</p>\r\n\r\n<p>Penyerahan sebagaimana dimaksud berupa: Jasa Lainnya Orang Perorangan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) selama 1 (satu) bulan (Januari) dengan rician pekerjaan sebagaimana tertuang dalam Syarat Umum Surat Perintah Kerja</p>', '<p>Demikian Berita Acara Serah Terima Hasil Pekerjaan ini dibuat dalam 5 (lima) rangkap dapat dipergunakan sebagaimana mestinya.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `work_inspections`
--

CREATE TABLE `work_inspections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skpd_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `functionary_id` int(11) NOT NULL,
  `functionary_pptk_id` int(11) NOT NULL,
  `functionary_pptk2_id` int(11) NOT NULL,
  `number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `spk_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spk_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_inspections`
--

INSERT INTO `work_inspections` (`id`, `created_at`, `updated_at`, `skpd_id`, `employee_id`, `functionary_id`, `functionary_pptk_id`, `functionary_pptk2_id`, `number`, `section_1`, `section_2`, `section_3`, `contract_id`, `date`, `spk_number`, `spk_date`) VALUES
(1, '2019-11-24 19:34:31', '2019-11-27 22:21:44', 17, 4, 57, 57, 59, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 3, '2019-11-01', NULL, NULL),
(2, '2019-11-27 22:28:15', '2019-11-27 22:28:15', 17, 5, 57, 57, 59, '003.3.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 4, '2019-11-28', NULL, NULL),
(3, '2019-11-27 22:42:07', '2019-11-27 22:42:07', 17, 4, 59, 57, 9999, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 3, '2019-11-15', NULL, NULL),
(4, '2019-11-27 22:43:19', '2019-11-27 22:43:19', 17, 3, 59, 57, 9999, '003.2.e/BASTP-PPK/Pontive/PET/DISKOMINFO/II/2019', '<p>Pada Hari ini <strong>Jumat</strong> tanggal <strong>Satu</strong> Bulan <strong>Februari</strong> tahun <strong>Dua Ribu Sembilan Belas</strong>, kami yang bertanda tangan dibawah ini:</p>', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 2, '2019-11-21', NULL, NULL),
(5, '2019-12-01 15:26:17', '2019-12-01 15:26:17', 17, 2, 59, 57, 9999, '003.2.5/BAPK-PPHP/Pontive/PET/DISKOMINFO/II/2019', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 3.2.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 03.3.5/SPK/Pontive/PET/DISKOMINFO/I/2019 tanggal 14 Januari 2019</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 1, '2019-12-01', '003.2.5/BASPK-PPK/Pontive/PET/DISKOMINFO/II/2019', '2019-12-01'),
(7, '2020-02-18 01:01:54', '2020-02-18 01:01:54', 17, 6, 59, 57, 9999, '001.1.d/BAHPP/OPCKP-P.Prog/TKPBET.DKI/I/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 006.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 006.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 6, '2020-01-31', '006.2/SPK/OPCKP-P.Prog/PET.DKI/2020', '2020-01-02'),
(8, '2020-02-27 18:38:37', '2020-02-27 18:38:37', 17, 10, 59, 57, 9999, '002.1.b/BAHPP/OPCKP-P.MM/TKPBET.DKI/II/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Desain Grafis dan Multimedia) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 002.2/SPK/OPCKP-P.MM/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 002.3/SPMK/OPCKP-P.MM/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001/ADD/SPK/OPCKP-P.MM/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 10, '2020-02-28', '002.2/SPK/OPCKP-P.MM/PET.DKI/2020', '2020-01-02'),
(9, '2020-02-27 18:48:58', '2020-02-27 18:48:58', 17, 7, 59, 57, 9999, '002.1.f/BAHPP/OPCKP-P.Operator/TKPBET.DKI/II/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan D3) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 001.2/SPK/OPCKP-P.Operator/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 001.3/SPMK/OPCKP-P.Operator/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.2/ADD/SPK/OPCKPP.Operator/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 7, '2020-02-28', '001.2/SPK/OPCKP-P.Operator/PET.DKI/2020', '2020-01-02'),
(10, '2020-02-27 18:54:51', '2020-02-27 18:54:51', 17, 9, 59, 57, 9999, '002.1.a/BAHPP/OPCKP-P.Operator/TKPBET.DKI/II/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Operator Pengaduan S1) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 004.2/SPK/OPCKP-P.Operator/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 004.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.1/ADD/SPK/OPCKPP.Operator/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 9, '2020-02-28', '004.2/SPK/OPCKP-P.Operator/PET.DKI/2020', '2020-01-02'),
(11, '2020-02-27 20:29:23', '2020-02-27 20:29:23', 17, 8, 59, 57, 9999, '002.1.e/BAHPP/OPCKP-P.Prog/TKPBET.DKI/II/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Jasa Admin Pontive Center (Programmer Web dan Aplikasi D3) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 003.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 003.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.3/ADD/SPK/OPCKPP.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 8, '2020-02-28', '003.2/SPK/OPCKP-P.Prog/PET.DKI/2020', '2020-01-02'),
(12, '2020-02-27 20:37:54', '2020-02-27 20:37:54', 17, 2, 59, 57, 9999, '002.1.c/BAHPP/OPCKP-P.Prog/TKPBET.DKI/II/2020', 'section1', '<p>Dengan ini menyatakan dengan sebenar benarnya telah melaksanakan pemeriksaan dan penelitian terhadap pelaksanaan Pekerjaan Belanja Jasa Tenaga IT (Informasi Teknologi) Jasa Admin Pontive Center (Pengelola Teknologi Informasi) Kegiatan Operasional Pontive Center Kota Pontianak yang dilaksanakan oleh:</p>', '<p>Berdasarkan :</p>\r\n\r\n<ol>\r\n	<li>Surat Perintah Kerja (SPK) Nomor 005.2/SPK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Surat Perintah Mulai Kerja (SPMK) Nomor 005.3/SPMK/OPCKP-P.Prog/PET.DKI/2020 tanggal 2 Januari 2020</li>\r\n	<li>Amandemen / Addendum Pertama Surat Perintah Kerja Nomor 001.1/ADD/SPK/OPCKP-P.Prog/TKPBET.DKI/2020 tanggal 27 Januari 2020</li>\r\n</ol>\r\n\r\n<p>Dari hasil pemeriksaan perkerjaan sudah dilaksanakan dengan baik sesuai hasil penilaian prestasi kerja terlampir.</p>\r\n\r\n<p>Demikian Berita Acara Hasil Pemeriksaan Pekerjaan ini dibuat dalam 5 (lima) rangkap untuk dipergunakan sebagaimana mestinya.</p>', 1, '2020-02-28', '005.2/SPK/OPCKP-P.Prog/PET.DKI/2020', '2020-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `work_packages`
--

CREATE TABLE `work_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_packages`
--

INSERT INTO `work_packages` (`id`, `created_at`, `updated_at`, `code`, `name`, `activity_id`) VALUES
(57, '2019-11-24 07:56:44', '2019-11-24 07:56:44', '017.1.1.1', 'Administrasi & Registrasi Penggunaan StartupHub', 29),
(58, '2019-11-24 19:09:59', '2019-11-24 19:09:59', '017.2.1.1', 'Operasionan Harian Pontive Center', 30),
(59, '2020-01-31 00:58:46', '2020-01-31 00:58:46', '2.10.2.10.01.00.16.1.005.1', 'Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistik', 31),
(60, '2020-02-25 18:12:06', '2020-02-25 18:12:06', '2.10.2.10.01.00.01.025.1', 'Belanja Jasa Petugas Pramubakti dan Kebersihan Bangunan Pemerintah', 32),
(61, '2020-02-25 18:18:00', '2020-02-25 18:18:38', '2.10.2.10.01.00.01.018.2', 'Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi', 33),
(62, '2020-02-25 18:25:52', '2020-02-25 18:25:52', '2.10.2.10.01.00.17.008.1', 'Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Pengolah Informasi dan Multimedia', 34),
(63, '2020-02-25 21:22:25', '2020-02-25 21:22:25', '2.10.2.10.01.00.18.004.1', 'Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi (Operator Server)', 35),
(64, '2020-02-25 21:31:32', '2020-02-25 21:31:32', '2.10.2.10.01.00.18.004.2', 'Belanja Jasa Petugas Bidang Komunikasi, Informatika dan Statistika, Tenaga Teknologi Informasi (Operator Jaringan)', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activities_code_unique` (`code`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_nipj_unique` (`nipj`),
  ADD UNIQUE KEY `employees_ktp_unique` (`ktp`);

--
-- Indexes for table `functionaries`
--
ALTER TABLE `functionaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_leave_employees`
--
ALTER TABLE `history_leave_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_employees`
--
ALTER TABLE `leave_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_letters`
--
ALTER TABLE `payment_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_salaries`
--
ALTER TABLE `payroll_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position_categories`
--
ALTER TABLE `position_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_code_unique` (`code`);

--
-- Indexes for table `recap_attendances`
--
ALTER TABLE `recap_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_components`
--
ALTER TABLE `salary_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skpds`
--
ALTER TABLE `skpds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skpds_number_unique` (`number`);

--
-- Indexes for table `start_working_letters`
--
ALTER TABLE `start_working_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_positions`
--
ALTER TABLE `sub_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_administrations`
--
ALTER TABLE `work_administrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_days`
--
ALTER TABLE `work_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_handovers`
--
ALTER TABLE `work_handovers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_handover_ppkoms`
--
ALTER TABLE `work_handover_ppkoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_inspections`
--
ALTER TABLE `work_inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_packages`
--
ALTER TABLE `work_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_packages_code_unique` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1457;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `functionaries`
--
ALTER TABLE `functionaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `history_leave_employees`
--
ALTER TABLE `history_leave_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `leave_employees`
--
ALTER TABLE `leave_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `payment_letters`
--
ALTER TABLE `payment_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payroll_salaries`
--
ALTER TABLE `payroll_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `position_categories`
--
ALTER TABLE `position_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `recap_attendances`
--
ALTER TABLE `recap_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `salary_components`
--
ALTER TABLE `salary_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skpds`
--
ALTER TABLE `skpds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `start_working_letters`
--
ALTER TABLE `start_working_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_positions`
--
ALTER TABLE `sub_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `work_administrations`
--
ALTER TABLE `work_administrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_days`
--
ALTER TABLE `work_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_handovers`
--
ALTER TABLE `work_handovers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `work_handover_ppkoms`
--
ALTER TABLE `work_handover_ppkoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_inspections`
--
ALTER TABLE `work_inspections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `work_packages`
--
ALTER TABLE `work_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
