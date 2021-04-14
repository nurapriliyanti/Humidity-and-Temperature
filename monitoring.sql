-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 02:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht11`
--

CREATE TABLE `dht11` (
  `id` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `humidity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dht11`
--

INSERT INTO `dht11` (`id`, `temperature`, `humidity`) VALUES
(1, 30, 88),
(2, 30, 88),
(3, 30, 80),
(4, 30, 80),
(5, 0, 0),
(6, 32, 75),
(7, 33, 75),
(8, 32, 76),
(9, 33, 75),
(10, 33, 75),
(11, 33, 75),
(12, 33, 74),
(13, 33, 75),
(14, 33, 74),
(15, 33, 75),
(16, 32, 77),
(17, 32, 76),
(18, 32, 76),
(19, 32, 76),
(20, 33, 76),
(21, 33, 75),
(22, 33, 75),
(23, 33, 76),
(24, 33, 75),
(25, 40, 75),
(26, 33, 75),
(27, 33, 75),
(28, 33, 75),
(29, 33, 75),
(30, 33, 74),
(31, 33, 74),
(32, 33, 74),
(33, 33, 74),
(34, 33, 74),
(35, 33, 74),
(36, 33, 74),
(37, 33, 74),
(38, 33, 74),
(39, 33, 75),
(40, 33, 75),
(41, 33, 74),
(42, 33, 74),
(43, 33, 75),
(44, 33, 74),
(45, 33, 74),
(46, 33, 74),
(47, 33, 74),
(48, 33, 73),
(49, 33, 73),
(50, 33, 73),
(51, 0, 0),
(52, 0, 0),
(53, 33, 74),
(54, 33, 76),
(55, 33, 76),
(56, 33, 75),
(57, 33, 74),
(58, 33, 74),
(59, 33, 74),
(60, 33, 74),
(61, 33, 73),
(62, 33, 73),
(63, 30, 80),
(64, 33, 73),
(65, 33, 73),
(66, 33, 73),
(67, 33, 73),
(68, 33, 73),
(69, 33, 73),
(70, 33, 73),
(71, 33, 73),
(72, 33, 73),
(73, 33, 73),
(74, 33, 73),
(75, 33, 73),
(76, 33, 73),
(77, 33, 73),
(78, 33, 73),
(79, 33, 74),
(80, 33, 73),
(81, 33, 73),
(82, 33, 74),
(83, 33, 73),
(84, 33, 73),
(85, 33, 73),
(86, 33, 73),
(87, 33, 73),
(88, 33, 73),
(89, 33, 73),
(90, 33, 73),
(91, 33, 73),
(92, 33, 73),
(93, 33, 73),
(94, 33, 73),
(95, 32, 79),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 32, 78),
(118, 32, 85),
(119, 32, 78),
(120, 32, 77),
(121, 32, 76),
(122, 32, 76),
(123, 32, 76),
(124, 32, 76),
(125, 32, 76),
(126, 32, 77),
(127, 32, 76),
(128, 32, 77),
(129, 32, 76);

-- --------------------------------------------------------

--
-- Table structure for table `kontroll`
--

CREATE TABLE `kontroll` (
  `id` int(8) NOT NULL,
  `led` varchar(255) NOT NULL,
  `nilai` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontroll`
--

INSERT INTO `kontroll` (`id`, `led`, `nilai`) VALUES
(1, 'led1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dht11`
--
ALTER TABLE `dht11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontroll`
--
ALTER TABLE `kontroll`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dht11`
--
ALTER TABLE `dht11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `kontroll`
--
ALTER TABLE `kontroll`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
