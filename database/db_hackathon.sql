-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2019 at 05:20 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `ID` int(11) NOT NULL,
  `Room` varchar(30) NOT NULL,
  `Light` varchar(200) NOT NULL,
  `Temperature` varchar(6) NOT NULL,
  `Lowercase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`ID`, `Room`, `Light`, `Temperature`, `Lowercase`) VALUES
(1, 'Living Room', 'on', '20°C', 'livingroom'),
(2, 'Bedroom', 'off', '18°C', 'bedroom'),
(3, 'Kitchen', 'off', '23°C', 'kitchen'),
(4, 'Outside', 'on', '10°C', 'outside');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_security`
--

CREATE TABLE `tbl_security` (
  `ID` int(11) NOT NULL,
  `Door` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Lowercase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_security`
--

INSERT INTO `tbl_security` (`ID`, `Door`, `Description`, `Status`, `Lowercase`) VALUES
(1, 'Front Door', 'Front Door is locked until 7:00AM', 'lock', 'frontdoor'),
(2, 'Back Door', 'Back Door is open until 12:00AM', 'unlock', 'backdoor'),
(3, 'Window', 'Window is being stuck', 'unlock', 'window'),
(4, 'Garage Door', 'Someone is standing there', 'lock', 'garagedoor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_security`
--
ALTER TABLE `tbl_security`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_security`
--
ALTER TABLE `tbl_security`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
