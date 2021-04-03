-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 11:54 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carby`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_info`
--

CREATE TABLE `food_info` (
  `id` int(11) NOT NULL,
  `food_id` varchar(100) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `quant` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `cals` float NOT NULL,
  `carbs` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `food_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_info`
--

INSERT INTO `food_info` (`id`, `food_id`, `label`, `quant`, `category`, `cals`, `carbs`, `fat`, `fiber`, `protein`, `user_id`, `food_date`) VALUES
(10, 'food_bd49041aiseaxnbdcr665a0w6xtb', 'Chicken Tikka', 50, 'meal', 162.885, 1.84655, 9.67472, 0.30066, 16.4183, '17BCI0163', '4/10/2019'),
(11, 'food_an1dqoib8xj3tyb3pr7c0abi4rbw', 'mango', 100, 'food', 60, 14.98, 0.38, 1.6, 0.82, '17BCI0163', '4/10/2019'),
(12, 'food_a0w916xb0gf9ssbfuq20aayvh9tf', 'naan', 300, 'food', 291, 50.43, 5.65, 2.2, 9.62, '17BCI0163', '4/10/2019'),
(13, 'food_b0bnl8oayiqhs2at63ifxbm6i3o3', 'orange', 100, 'food', 47, 11.75, 0.12, 2.4, 0.94, '17BCI0163', '5/10/2019'),
(14, 'food_bqej00dajarrgpb1l32xhacc4kbn', 'pav', 300, 'food', 293, 52.7, 4.3, 2.3, 9.9, '17BCI0163', '5/10/2019'),
(15, 'food_bd49041aiseaxnbdcr665a0w6xtb', 'Chicken Tikka', 100, 'meal', 162.885, 1.84655, 9.67472, 0.30066, 16.4183, 'adithya', '5/10/2019'),
(16, 'food_bd49041aiseaxnbdcr665a0w6xtb', 'Chicken Tikka', 100, 'meal', 162.885, 1.84655, 9.67472, 0.30066, 16.4183, 'adithya1998', '5/10/2019'),
(17, 'food_an1dqoib8xj3tyb3pr7c0abi4rbw', 'mango', 100, 'food', 60, 14.98, 0.38, 1.6, 0.82, 'adithya1998', '5/10/2019');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `user_id` varchar(100) NOT NULL,
  `user_pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`user_id`, `user_pass`) VALUES
('17BCEE123', 'adithya123'),
('17BCI0163', 'adithya123'),
('adithya', 'adithya123'),
('adithya12345', 'adithya123'),
('adithya1998', 'adithya123'),
('adithya1999', 'adithya1999');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `pref_status` varchar(3) DEFAULT NULL,
  `goal` varchar(20) DEFAULT NULL,
  `activeness` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `age`, `sex`, `weight`, `height`, `pref_status`, `goal`, `activeness`) VALUES
('17BCEE123', 123, 'M', 123, 123, 'F', NULL, NULL),
('17BCI0163', 21, 'M', 61, 175, 'A', 'lean', 'Low'),
('adithya', 123, 'M', 65, 123, 'A', 'lean', 'Low'),
('adithya12345', 123, 'M', 123, 123, 'F', NULL, NULL),
('adithya1998', 53, 'M', 80, 176, 'A', 'Lean', 'Low');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_info`
--
ALTER TABLE `food_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_info`
--
ALTER TABLE `food_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_info`
--
ALTER TABLE `food_info`
  ADD CONSTRAINT `food_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
