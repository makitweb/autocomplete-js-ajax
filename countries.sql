-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 27, 2026 at 02:06 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_tutorials`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Argentina'),
(3, 'Australia'),
(4, 'Bangladesh'),
(5, 'Brazil'),
(6, 'Canada'),
(7, 'China'),
(8, 'Colombia'),
(9, 'Egypt'),
(10, 'Ethiopia'),
(11, 'France'),
(12, 'Germany'),
(13, 'Ghana'),
(14, 'India'),
(15, 'Indonesia'),
(16, 'Iran'),
(17, 'Iraq'),
(18, 'Israel'),
(19, 'Italy'),
(20, 'Japan'),
(21, 'Kenya'),
(22, 'Malaysia'),
(23, 'Mexico'),
(24, 'Morocco'),
(25, 'Nepal'),
(26, 'Netherlands'),
(27, 'New Zealand'),
(28, 'Nigeria'),
(29, 'Norway'),
(30, 'Pakistan'),
(31, 'Philippines'),
(32, 'Poland'),
(33, 'Portugal'),
(34, 'Romania'),
(35, 'Russia'),
(36, 'Saudi Arabia'),
(37, 'South Africa'),
(38, 'South Korea'),
(39, 'Spain'),
(40, 'Sri Lanka'),
(41, 'Sweden'),
(42, 'Switzerland'),
(43, 'Thailand'),
(44, 'Turkey'),
(45, 'Ukraine'),
(46, 'United Arab Emirates'),
(47, 'United Kingdom'),
(48, 'United States'),
(49, 'Vietnam'),
(50, 'Zimbabwe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
