-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 05:08 PM
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
-- Table structure for table `proctor_studentinteract`
--

CREATE TABLE `proctor_studentinteract` (
  `usnno` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `pidno` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `content` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `date` varchar(25) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proctor_studentinteract`
--
ALTER TABLE `proctor_studentinteract`
  ADD KEY `usnno` (`usnno`),
  ADD KEY `pidno` (`pidno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proctor_studentinteract`
--
ALTER TABLE `proctor_studentinteract`
  ADD CONSTRAINT `proctor_studentinteract_ibfk_1` FOREIGN KEY (`usnno`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `proctor_studentinteract_ibfk_2` FOREIGN KEY (`pidno`) REFERENCES `proctor` (`proctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
