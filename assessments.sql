-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2020 at 07:14 AM
-- Server version: 10.1.44-MariaDB
-- PHP Version: 7.0.32

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
