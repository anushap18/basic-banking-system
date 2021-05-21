-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 09:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Devang', 'devangpokar@gmail.com', 689),
(2, 'Riya', 'riya@gmail.com', 11765),
(3, 'Vrunda', 'svrunda@gmail.com', 17058),
(4, 'Atharva', 'atharva@gmail.com', 3200),
(5, 'Archana', 'archanap@gmail.com', 3000),
(6, 'Surya', 'surya@gmail.com', 3411),
(7, 'Shalaka', 'shalaka1@gmail.com', 3800),
(8, 'Shlok', 'shlok@gmail.com', 198),
(9, 'Omkar', 'omkar@gmail.com', 2900),
(10, 'Vedant', 'vedantpawar@gmail.com', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `sender`, `reciever`, `amount`) VALUES
(17, 'Devang', 'Riya', 1000),
(18, 'Riya', 'Vrunda', 200),
(19, 'Archana', 'Surya', 100),
(20, 'Shalaka', 'Atharva', 200),
(21, 'Shalaka', 'Atharva', 200),
(22, 'Vrunda', 'Riya', 15),
(23, 'Vedant', 'Omkar', 1000),
(24, 'Vrunda', 'Archana', 2000),
(25, 'Surya', 'Atharva', 200),
(26, 'Vrunda', 'Riya', 1000),
(27, 'Archana', 'Surya', 1000),
(28, 'Shlok', 'Shalaka', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
