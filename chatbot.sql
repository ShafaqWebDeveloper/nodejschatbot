-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 11:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `abcd`
--

CREATE TABLE `abcd` (
  `aid` int(30) NOT NULL,
  `aname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abcd`
--

INSERT INTO `abcd` (`aid`, `aname`) VALUES
(1, 'vjhbjh'),
(2, 'vjhbjh');

-- --------------------------------------------------------

--
-- Table structure for table `emoji`
--

CREATE TABLE `emoji` (
  `eid` int(30) NOT NULL,
  `ename` varchar(70) NOT NULL,
  `eimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emoji`
--

INSERT INTO `emoji` (`eid`, `ename`, `eimg`) VALUES
(2, 'laugh', 'eimg-1707057467378-672443168.jpeg'),
(3, 'cool', 'eimg-1707057511186-493347679.jpeg'),
(4, 'cool', 'eimg-1707057515283-510188498.jpeg'),
(5, 'confusion', 'eimg-1707057536319-345348673.jpeg'),
(6, 'blessed', 'eimg-1707057553817-110142324.jpeg'),
(7, 'angry', 'eimg-1707057570719-384713071.jpeg'),
(8, 'silence', 'eimg-1707057593690-539209020.jpeg'),
(9, 'love', 'eimg-1707057610577-377316888.jpeg'),
(10, 'love', 'eimg-1707057615481-412093820.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sticker`
--

CREATE TABLE `sticker` (
  `sid` int(20) NOT NULL,
  `sname` varchar(70) NOT NULL,
  `simg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sticker`
--

INSERT INTO `sticker` (`sid`, `sname`, `simg`) VALUES
(4, 'hug', 'simg-1706993625325-973359855.jpeg'),
(5, 'mashaAllah', 'simg-1706993789535-894569883.jpeg'),
(6, 'call', 'simg-1706993818557-613049925.png'),
(7, 'love', 'simg-1706993833637-306196477.png'),
(8, 'hi', 'simg-1706994092139-473121.png'),
(9, 'xyz', 'simg-1707053892474-514911982.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Userid` int(30) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Userpass` varchar(255) NOT NULL,
  `Useremail` varchar(70) NOT NULL,
  `Userpic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abcd`
--
ALTER TABLE `abcd`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `emoji`
--
ALTER TABLE `emoji`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abcd`
--
ALTER TABLE `abcd`
  MODIFY `aid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emoji`
--
ALTER TABLE `emoji`
  MODIFY `eid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sticker`
--
ALTER TABLE `sticker`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Userid` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
