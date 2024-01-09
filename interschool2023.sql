-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 03:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interschool2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `dance_score`
--

CREATE TABLE `dance_score` (
  `id` int(11) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `judge_id` varchar(100) NOT NULL,
  `stage_presence` bigint(20) NOT NULL,
  `face_expression` bigint(20) NOT NULL,
  `costume` bigint(20) NOT NULL,
  `choreography` bigint(20) NOT NULL,
  `coordination` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dance_score`
--

INSERT INTO `dance_score` (`id`, `team_id`, `judge_id`, `stage_presence`, `face_expression`, `costume`, `choreography`, `coordination`, `total`) VALUES
(1, '27', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 3, 3, 68),
(2, '27', 'Mr. Ashwin - Dance', 3, 3, 5, 3, 3, 68),
(3, '24', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 4, 4, 76),
(4, '24', 'Mr. Ashwin - Dance', 3, 3, 5, 3, 3, 68),
(5, '39', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 4, 76),
(6, '39', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 4, 84),
(7, '54', 'Mr. Ashwin - Dance', 3, 2, 4, 3, 2, 56),
(8, '54', 'Mr. Ashish Vashisth - Dance', 2, 2, 5, 3, 3, 60),
(9, '23', 'Mr. Ashwin - Dance', 3, 4, 4, 3, 3, 68),
(10, '23', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 3, 3, 76),
(11, '80', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 5, 4, 88),
(12, '80', 'Mr. Ashwin - Dance', 3, 2, 4, 3, 3, 60),
(13, '40', 'Mr. Ashwin - Dance', 4, 2, 4, 3, 3, 64),
(14, '40', 'Mr. Ashish Vashisth - Dance', 3, 4, 5, 4, 4, 80),
(15, '73', 'Mr. Ashish Vashisth - Dance', 3, 3, 4, 3, 3, 64),
(16, '73', 'Mr. Ashwin - Dance', 3, 2, 3, 3, 3, 56),
(17, '61', 'Mr. Ashish Vashisth - Dance', 5, 3, 4, 4, 3, 76),
(18, '61', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 4, 76),
(19, '55', 'Mr. Ashwin - Dance', 4, 2, 4, 3, 3, 64),
(20, '55', 'Mr. Ashish Vashisth - Dance', 4, 3, 5, 3, 4, 76),
(21, '65', 'Mr. Ashwin - Dance', 5, 4, 5, 5, 4, 92),
(22, '65', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 5, 3, 76),
(23, '44', 'Mr. Ashwin - Dance', 4, 2, 3, 3, 3, 60),
(24, '44', 'Mr. Ashish Vashisth - Dance', 4, 3, 5, 3, 4, 76),
(25, '37', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 4, 76),
(26, '37', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 4, 84),
(27, '76', 'Mr. Ashwin - Dance', 3, 2, 3, 2, 2, 48),
(28, '76', 'Mr. Ashish Vashisth - Dance', 3, 3, 4, 3, 3, 64),
(29, '72', 'Mr. Ashwin - Dance', 4, 2, 4, 3, 3, 64),
(30, '72', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 3, 3, 68),
(31, '82', 'Mr. Ashwin - Dance', 5, 4, 5, 5, 4, 92),
(32, '82', 'Mr. Ashish Vashisth - Dance', 5, 4, 5, 5, 4, 92),
(33, '83', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 3, 4, 80),
(34, '83', 'Mr. Ashwin - Dance', 4, 3, 5, 4, 4, 80),
(35, '42', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 3, 3, 68),
(36, '42', 'Mr. Ashwin - Dance', 4, 3, 4, 3, 3, 68),
(37, '30', 'Mr. Ashish Vashisth - Dance', 4, 4, 4, 4, 4, 80),
(38, '30', 'Mr. Ashwin - Dance', 3, 3, 4, 3, 3, 64),
(39, '62', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 3, 72),
(40, '62', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 4, 84),
(41, '50', 'Mr. Ashish Vashisth - Dance', 4, 3, 5, 3, 3, 72),
(42, '50', 'Mr. Ashwin - Dance', 3, 3, 5, 3, 3, 68),
(43, '51', 'Mr. Ashwin - Dance', 3, 3, 4, 3, 3, 64),
(44, '51', 'Mr. Ashish Vashisth - Dance', 4, 3, 5, 3, 4, 76),
(45, '71', 'Mr. Ashwin - Dance', 3, 2, 4, 3, 3, 60),
(46, '71', 'Mr. Ashish Vashisth - Dance', 3, 3, 5, 3, 4, 72),
(47, '25', 'Mr. Ashwin - Dance', 3, 2, 3, 3, 2, 52),
(48, '25', 'Mr. Ashish Vashisth - Dance', 3, 4, 5, 4, 4, 80),
(49, '43', 'Mr. Ashwin - Dance', 2, 3, 4, 3, 2, 56),
(50, '43', 'Mr. Ashish Vashisth - Dance', 3, 4, 5, 3, 4, 76),
(51, '31', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 4, 84),
(52, '31', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 2, 68),
(53, '36', 'Mr. Ashish Vashisth - Dance', 4, 4, 4, 4, 4, 80),
(54, '36', 'Mr. Ashwin - Dance', 4, 3, 4, 4, 4, 76),
(55, '64', 'Mr. Ashwin - Dance', 4, 3, 4, 3, 2, 64),
(56, '64', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 3, 80),
(57, '84', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 4, 4, 84),
(58, '84', 'Mr. Ashwin - Dance', 3, 3, 4, 3, 3, 64),
(59, '48', 'Mr. Ashish Vashisth - Dance', 4, 4, 5, 3, 3, 76),
(60, '48', 'Mr. Ashwin - Dance', 4, 3, 4, 3, 3, 68),
(61, '60', 'Mr. Ashish Vashisth - Dance', 4, 3, 5, 4, 4, 80),
(62, '60', 'Mr. Ashwin - Dance', 3, 2, 4, 3, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `declamation_score`
--

CREATE TABLE `declamation_score` (
  `id` int(11) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `judge_id` varchar(10) NOT NULL,
  `dictation_articulation` bigint(20) NOT NULL,
  `expression_emotions` bigint(20) NOT NULL,
  `interpretation` bigint(20) NOT NULL,
  `stage_presence` bigint(20) NOT NULL,
  `timing_pace` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `declamation_score`
--

INSERT INTO `declamation_score` (`id`, `team_id`, `judge_id`, `dictation_articulation`, `expression_emotions`, `interpretation`, `stage_presence`, `timing_pace`, `total`) VALUES
(1, '23', 'Ms.Swati A', 17, 14, 15, 14, 17, 77),
(2, '58', 'Ms.Swati A', 18, 18, 18, 19, 17, 90),
(3, '58', 'Ms. Kashis', 16, 16, 17, 17, 17, 83),
(4, '21', 'Ms.Swati A', 19, 19, 19, 18, 18, 93),
(5, '21', 'Ms. Kashis', 18, 20, 18, 18, 16, 90),
(6, '23', 'Ms. Kashis', 14, 14, 14, 12, 13, 67),
(7, '83', 'Ms.Swati A', 17, 17, 16, 17, 15, 82),
(8, '83', 'Ms. Kashis', 17, 18, 18, 17, 17, 87),
(9, '47', 'Ms.Swati A', 16, 17, 17, 15, 16, 81),
(10, '47', 'Ms. Kashis', 16, 15, 17, 14, 16, 78),
(11, '39', 'Ms.Swati A', 15, 14, 12, 13, 13, 67),
(12, '39', 'Ms. Kashis', 14, 15, 14, 17, 15, 75),
(13, '42', 'Ms. Kashis', 12, 13, 13, 13, 12, 63),
(14, '42', 'Ms.Swati A', 5, 6, 6, 5, 6, 28),
(16, '46', 'Ms.Swati A', 3, 3, 3, 3, 3, 15),
(17, '46', 'Ms. Kashis', 6, 5, 6, 6, 6, 29),
(18, '71', 'Ms.Swati A', 5, 5, 4, 1, 1, 16),
(19, '71', 'Ms. Kashis', 12, 10, 10, 10, 5, 47),
(20, '72', 'Ms.Swati A', 8, 10, 9, 7, 7, 41),
(21, '72', 'Ms. Kashis', 11, 12, 12, 11, 10, 56),
(22, '26', 'Ms. Kashis', 12, 12, 12, 11, 12, 59),
(23, '26', 'Ms.Swati A', 11, 11, 10, 9, 9, 50),
(24, '32', 'Ms. Kashis', 14, 15, 13, 13, 13, 68),
(25, '32', 'Ms.Swati A', 14, 12, 12, 13, 14, 65),
(26, '49', 'Ms.Swati A', 5, 6, 7, 6, 6, 30),
(27, '49', 'Ms. Kashis', 13, 11, 12, 11, 9, 56),
(28, '65', 'Ms.Swati A', 12, 12, 12, 11, 13, 60),
(29, '65', 'Ms. Kashis', 13, 14, 14, 13, 13, 67),
(30, '50', 'Ms.Swati A', 17, 17, 17, 17, 16, 84),
(32, '50', 'Ms. Kashis', 13, 13, 15, 11, 13, 65),
(34, '80', 'Ms.Swati A', 13, 16, 16, 15, 15, 75),
(35, '80', 'Ms. Kashis', 15, 16, 17, 16, 16, 80),
(36, '55', 'Ms.Swati A', 6, 3, 3, 3, 3, 18),
(38, '55', 'Ms. Kashis', 15, 13, 13, 13, 12, 66),
(40, '24', 'Ms. Kashis', 14, 12, 11, 10, 10, 57),
(41, '62', 'Ms.Swati A', 7, 7, 6, 6, 2, 28),
(42, '62', 'Ms. Kashis', 13, 11, 11, 10, 10, 55),
(43, '24', 'Ms.Swati A', 8, 8, 7, 7, 8, 38),
(44, '70', 'Ms. Kashis', 10, 10, 10, 10, 10, 50),
(45, '70', 'Ms.Swati A', 11, 8, 8, 7, 7, 41),
(46, '22', 'Ms.Swati A', 17, 17, 16, 14, 13, 77),
(47, '22', 'Ms. Kashis', 15, 13, 12, 14, 13, 67),
(48, '78', 'Ms. Kashis', 13, 11, 13, 12, 13, 62),
(49, '78', 'Ms.Swati A', 17, 17, 17, 17, 18, 86),
(50, '76', 'Ms. Kashis', 13, 12, 12, 11, 11, 59),
(51, '76', 'Ms.Swati A', 11, 9, 9, 9, 9, 47),
(52, '30', 'Ms.Swati A', 11, 12, 10, 9, 8, 50),
(53, '30', 'Ms. Kashis', 13, 13, 12, 12, 13, 63),
(54, '75', 'Ms.Swati A', 4, 4, 4, 4, 4, 20),
(55, '75', 'Ms. Kashis', 8, 8, 8, 8, 8, 40),
(56, '25', 'Ms.Swati A', 7, 6, 6, 6, 6, 31),
(57, '25', 'Ms. Kashis', 10, 9, 10, 10, 10, 49),
(58, '82', 'Ms. Kashis', 13, 12, 12, 11, 12, 60),
(59, '81', 'Ms.Swati A', 15, 14, 12, 12, 12, 65),
(60, '82', 'Ms.Swati A', 18, 18, 18, 18, 18, 90),
(61, '81', 'Ms.Swati A', 13, 13, 13, 12, 12, 63),
(62, '52', 'Ms. Kashis', 13, 14, 14, 11, 11, 63),
(63, '38', 'Ms.Swati A', 17, 16, 15, 16, 17, 81),
(64, '29', 'Ms.Swati A', 17, 13, 15, 16, 14, 75),
(65, '29', 'Ms. Kashis', 12, 13, 13, 12, 11, 61),
(66, '37', 'Ms.Swati A', 15, 15, 16, 16, 15, 77),
(67, '56', 'Ms.Swati A', 11, 11, 11, 11, 11, 55),
(68, '61', 'Ms. Kashis', 17, 17, 18, 18, 16, 86),
(69, '37', 'Ms.Swati A', 14, 10, 10, 10, 11, 55),
(70, '61', 'Ms. Kashis', 17, 17, 18, 18, 16, 86);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `name` varchar(250) NOT NULL,
  `judge_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`name`, `judge_id`) VALUES
('Mr. Ashish Vashisth - Dance', 'JUDGE 1'),
('Mr. Ashwin - Dance', 'JUDGE 2'),
('Ms. Salma Khan - Singing', 'JUDGE 3'),
('Ms. Yukti Arora - Singing', 'JUDGE 4'),
('Ms.Swati Ambasta - Declamation', 'JUDGE 5'),
('Ms. Kashish - Declamation', 'JUDGE 6');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `class` varchar(100) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `event` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `team_id` int(11) NOT NULL,
  `school_name` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `mail_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`team_id`, `school_name`, `district`, `city`, `contact`, `mail_id`) VALUES
(21, 'PRAYAG INTERNATIONAL SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@g.com'),
(22, 'SDVM CITY', 'PANIPAT', 'PANIPAT', 1, '1@g.com'),
(23, 'DAV THERMAL', 'PANIPAT', 'PANIPAT', 1, '1@g.com'),
(24, 'DELHI WORLD PUBLIC SCHOOL', 'PANIPAT', 'SAMALKHA', 1, '1@g.com'),
(25, 'KASTURI RAM INTERNATIONAL SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@g.com'),
(26, 'DPS', 'JIND', 'JIND', 1, '1@g.com'),
(27, 'NAVYUG SCHOOL', 'PANIPAT', 'NIMBRI', 1, '1@g.com'),
(28, 'SD GIRLS', 'PANIPAT', 'PANIPAT', 1, '1@g.com'),
(29, 'DAV POLICE PUBLIC SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@g.com'),
(30, 'GEETA VIDYA MANDIR SR. SEC.SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@g.com'),
(31, 'SARASWATI SHIKSHA SANSTHAN SR. SEC. SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(32, 'SOFIA CONVENT SCHOOL', 'SONIPAT', 'MURTHAL', 1, '1@G.COM'),
(33, 'RISHIKUL VIDYAPEETH', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(34, 'GYAN VIDYAPEETH SONIPAT', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(35, 'SARASWATI SHIKSHA SADAN SR. SEC. SCHOOL', 'SONIPAT', 'MURTHAL', 1, '1@G.COM'),
(36, 'BRIGHT SCHOLAR SR. SEC. SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(37, 'RAMJAS SR. SEC. SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(38, 'ST. XAVIOR\'S HIGH SCHOOL', 'PANIPAT', 'SAMALKHA', 1, '1@G.COM'),
(39, 'JPS ACADEMY', 'KARNAL', 'ASSANDH', 1, '1@G.COM'),
(40, 'NEW BSM SCHOOL', 'JIND', 'SAFIDON', 1, '1@G.COM'),
(41, 'MINERVA PUBLIC SCHOOL', 'KARNAL', 'ASSANDH', 1, '1@G.COM'),
(42, 'NEW ADARSH PUBLIC SCHOOL', 'KARNAL', 'SALWAN', 1, '1@G.COM'),
(43, 'BHAGWAN PARSHURAM SCHOOL', 'KARNAL', 'PUNDRI', 1, '1@G.COM'),
(44, 'MAHAVATI SPORTS SR. SEC. SCHOOL', 'PANIPAT', 'SAMALKHA', 1, '1@G.COM'),
(45, 'SCOTTISH SCHOOL', 'UP', 'SHAMLI', 1, '1@G.COM'),
(46, 'SHRI CHAITANYA SCHOOL', 'UP', 'SHAMLI', 1, '1@G.COM'),
(47, 'SILVER BELLS', 'UP', 'SHAMLI', 1, '1@G.COM'),
(48, 'DR. MKK SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(49, 'ARYA BAL BHARTI', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(50, 'GEETA VIDYA MANDIR', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(51, 'GEETA VIDYA MANDIR PUBLIC SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(52, 'MASD SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(54, 'BALAJI BALWAN SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(55, 'RNM SCHOOL', 'PANIPAT', 'ISRANA', 1, '1@G.COM'),
(56, 'ARYA SR. SEC. SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(57, 'SD BOYS', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(58, 'IB L SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(59, 'SADANAND SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(60, 'JAWAHAR NAVODYA', 'PANIPAT', 'NAULTHA', 1, '1@G.COM'),
(61, 'ARYA GIRLS SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(62, 'DAV POLICE LINE', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(63, 'BAL VIKAS PROGRESSIVE SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(64, 'YADUVANSHI SCHOOL', 'JIND', 'JIND', 1, '1@G.COM'),
(65, 'SATYANAND', 'SONIPAT', 'GOHANA', 1, '1@G.COM'),
(66, 'SP MEMORIAL', 'JIND', 'JIND', 1, '1@G.COM'),
(67, 'GURU DRONACHARYA', 'JIND', 'JIND', 1, '1@G.COM'),
(68, 'JKR SCHOOL', 'SONIPAT', 'GOHANA', 1, '1@G.COM'),
(69, 'NALANDA', 'SONIPAT', 'GOHANA', 1, '1@G.COM'),
(70, 'DPS', 'ROHTAK', 'ROHTAK', 1, '1@G.COM'),
(71, 'JP JAIN SR. SEC. SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(72, 'GYAN GANGA GLOBAL SCHOOL', 'SONIPAT', 'SONIPAT', 1, '1@G.COM'),
(73, 'KHALSA SCHOOL', 'KARNAL', 'KARNAL', 1, '1@G.COM'),
(74, 'HIMGIRI SCHOOL', 'PANIPAT', 'SAMALKHA', 1, '1@G.COM'),
(75, 'PRIDE ACADEMY', 'UP', 'SHAMLI', 1, '1@G.COM'),
(76, 'UJALA ODERN SCHOOL', 'PANIPAT', 'ISRANA', 1, '1@G.COM'),
(77, 'KR HINDU SCHOOL', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(78, 'DAYAL SINGH', 'PANIPAT', 'PANIPAT', 1, '1@G.COM'),
(79, 'Sir Chotu Ram heritage school', 'PANIPAT', 'PANIPAT', 1, '1'),
(80, 'prayaas international school', 'SONIPAT', 'ganaur', 1, '1'),
(81, 'Hindu Kanya sr sec school', 'SONIPAT', 'SONIPAT', 1, '1'),
(82, 'Hindu Vidya Peeth', 'Sonipat', 'Sonipat', 1, '1'),
(83, 'DAV Multipurpose Sec 15 ', 'Sonipat', 'Sonipat', 1, '1'),
(84, 'Shaswat Chetna sr sec school', 'sonipat', 'ganaur', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `singing_score`
--

CREATE TABLE `singing_score` (
  `id` int(11) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `judge_id` varchar(10) NOT NULL,
  `song_choice` bigint(20) NOT NULL,
  `vocal_quality` bigint(20) NOT NULL,
  `coordination` bigint(20) NOT NULL,
  `creativity` bigint(20) NOT NULL,
  `rhythm_timing` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singing_score`
--

INSERT INTO `singing_score` (`id`, `team_id`, `judge_id`, `song_choice`, `vocal_quality`, `coordination`, `creativity`, `rhythm_timing`, `total`) VALUES
(1, '49', 'Ms. Yukti ', 18, 13, 15, 13, 16, 75),
(2, '33', 'Ms. Yukti ', 17, 16, 16, 17, 17, 83),
(3, '33', 'Ms. Salma ', 18, 17, 17, 15, 18, 85),
(4, '49', 'Mr. Ashish', 16, 14, 14, 12, 15, 71),
(5, '24', 'Ms. Yukti ', 15, 14, 15, 15, 14, 73),
(6, '24', 'Ms. Salma ', 12, 12, 14, 14, 13, 65),
(7, '22', 'Ms. Salma ', 19, 19, 19, 19, 19, 95),
(8, '50', 'Ms. Yukti ', 12, 12, 11, 12, 13, 60),
(9, '50', 'Ms. Salma ', 11, 11, 11, 12, 13, 58),
(10, '22', 'Ms. Yukti ', 19, 19, 19, 19, 19, 95),
(11, '45', 'Ms. Yukti ', 16, 17, 17, 16, 17, 83),
(12, '45', 'Ms. Salma ', 18, 17, 17, 16, 17, 85),
(13, '23', 'Ms. Yukti ', 15, 14, 15, 16, 15, 75),
(14, '23', 'Ms. Salma ', 14, 13, 13, 13, 14, 67),
(15, '83', 'Ms. Yukti ', 17, 17, 17, 17, 17, 85),
(16, '83', 'Ms. Salma ', 17, 16, 16, 16, 16, 81),
(17, '21', 'Ms. Yukti ', 17, 15, 15, 17, 15, 79),
(18, '21', 'Ms. Salma ', 16, 15, 16, 16, 15, 78),
(19, '47', 'Ms. Yukti ', 15, 16, 15, 15, 15, 76),
(20, '47', 'Ms. Salma ', 17, 14, 14, 14, 15, 74),
(21, '52', 'Ms. Yukti ', 18, 18, 18, 18, 18, 90),
(22, '52', 'Ms. Salma ', 17, 18, 18, 17, 18, 88),
(23, '46', 'Ms. Yukti ', 16, 15, 15, 15, 16, 77),
(24, '46', 'Ms. Salma ', 15, 14, 14, 14, 15, 72),
(25, '39', 'Ms. Yukti ', 19, 19, 20, 19, 19, 96),
(26, '39', 'Ms. Salma ', 19, 19, 20, 19, 19, 96),
(27, '48', 'Ms. Yukti ', 17, 17, 17, 17, 18, 86),
(28, '48', 'Ms. Salma ', 16, 16, 18, 17, 17, 84),
(29, '26', 'Ms. Yukti ', 16, 13, 13, 13, 14, 69),
(30, '26', 'Ms. Salma ', 15, 13, 13, 13, 14, 68),
(31, '61', 'Ms. Yukti ', 19, 18, 18, 18, 17, 90),
(32, '61', 'Ms. Salma ', 18, 17, 17, 18, 16, 86),
(33, '36', 'Ms. Salma ', 16, 16, 16, 16, 17, 81),
(34, '36', 'Ms. Yukti ', 17, 16, 17, 17, 17, 84),
(35, '51', 'Ms. Salma ', 18, 17, 16, 17, 17, 85),
(36, '51', 'Ms. Yukti ', 18, 17, 16, 17, 16, 84),
(37, '42', 'Ms. Yukti ', 15, 15, 16, 15, 16, 77),
(38, '42', 'Ms. Salma ', 16, 15, 15, 15, 16, 77),
(39, '72', 'Ms. Yukti ', 14, 12, 12, 12, 12, 62),
(40, '72', 'Ms. Salma ', 17, 13, 12, 12, 12, 66),
(41, '79', 'Ms. Salma ', 17, 16, 17, 17, 17, 84),
(42, '79', 'Ms. Yukti ', 17, 16, 16, 16, 17, 82),
(43, '62', 'Ms. Yukti ', 18, 17, 18, 17, 18, 88),
(44, '62', 'Ms. Salma ', 18, 17, 17, 17, 18, 87),
(45, '82', 'Ms. Yukti ', 17, 16, 17, 17, 17, 84),
(46, '82', 'Ms. Salma ', 17, 16, 16, 16, 18, 83),
(47, '57', 'Ms. Yukti ', 10, 10, 10, 10, 10, 50),
(48, '57', 'Ms. Salma ', 10, 10, 10, 10, 10, 50),
(49, '25', 'Ms. Yukti ', 11, 12, 10, 11, 10, 54),
(50, '25', 'Ms. Salma ', 12, 10, 10, 10, 10, 52),
(51, '39', 'Ms. Salma ', 1, 1, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `team_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `mail_id` varchar(500) NOT NULL,
  `event` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dance_score`
--
ALTER TABLE `dance_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `declamation_score`
--
ALTER TABLE `declamation_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `singing_score`
--
ALTER TABLE `singing_score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dance_score`
--
ALTER TABLE `dance_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `declamation_score`
--
ALTER TABLE `declamation_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `singing_score`
--
ALTER TABLE `singing_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
