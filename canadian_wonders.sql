-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2024 at 02:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canadian_wonders`
--

-- --------------------------------------------------------

--
-- Table structure for table `wonders`
--

CREATE TABLE `wonders` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wonders`
--

INSERT INTO `wonders` (`id`, `name`, `description`, `location`, `image_url`) VALUES
(1, 'Niagara Falls', 'Famous for its beauty and as a valuable source of hydroelectric power.', 'Ontario ', 'https://cdn.britannica.com/30/94430-050-D0FC51CD/Niagara-Falls.jpg'),
(2, 'CN Tower', 'The CN Tower is a 553.3 m-high concrete communications and observation tower in Toronto, Ontario, Canada. Completed in 1976, it is located in downtown Toronto, built on the former Railway Lands. Its name \"CN\" referred to Canadian National, the railway company that built the tower.', 'Ontario ', 'https://cdn.tourbytransit.com/toronto/images/562x722px-CNTower%20at%20night%20by%20Wladyslaw%20Sojka%20via%20Wikipedia%20cc%203.0%20license.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wonders`
--
ALTER TABLE `wonders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wonders`
--
ALTER TABLE `wonders`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
