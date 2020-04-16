-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 05:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proctor_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `parent_email`
--

CREATE TABLE `parent_email` (
  `usnno` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `father_email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `mother_email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `guardian_email` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parent_email`
--
ALTER TABLE `parent_email`
  ADD KEY `usnno` (`usnno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parent_email`
--
ALTER TABLE `parent_email`
  ADD CONSTRAINT `parent_email_ibfk_1` FOREIGN KEY (`usnno`) REFERENCES `student` (`USN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
