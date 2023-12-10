-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 04:25 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-05-14 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, '10', 'A', '2023-11-15 10:42:14'),
(2, '10', 'B', '2023-07-13 10:42:35'),
(3, '10', 'C', '2023-08-10 10:42:41'),
(4, '11', 'A', '2023-12-07 10:42:47'),
(5, '11', 'B', '2023-06-12 10:42:52'),
(6, '11', 'C', '2022-10-12 10:42:57'),
(7, '11', 'D', '2023-06-22 10:43:04'),
(8, '12', 'A', '2023-12-08 10:43:10'),
(9, '12', 'C', '2023-07-07 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `grade` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `grade`, `ContactNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(1, 'asdasdqweqwe', 'jhghjg@gmail.com', '4', 'Male', '2022-01-13', 'ui-99', 'C', 5465454645, 'J-908, Hariram Nagra New Delhi', 'kjhkjh', '202cb962ac59075b964b07152d234b70', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2023-11-15 14:09:04'),
(2, 'Kishore Sharma', 'kishore@gmail.com', '3', 'Male', '2019-01-05', '10A12345', 'Indra Devi', 7879879879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'kishore2019', '202cb962ac59075b964b07152d234b70', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2022-01-16 06:23:33'),
(3, 'Anshul', 'anshul@gmali.com', '2', 'Female', '1986-01-05', 'uii-990', 'jakinnm', 4646546546, 'jlkjkljoiujiouoil', 'anshul1986', '202cb962ac59075b964b07152d234b70', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2022-01-19 15:24:52'),
(4, 'John Doe', 'john@gmail.com', '1', 'Female', '2002-02-10', '10806121', 'Garima Singh', 1234698741, 'New Delhi', 'john12', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2022-06-15 18:19:45'),
(5, 'hhhhh', 'akkr@gmail.com', '8', 'Male', '2001-05-30', '1080623', 'Kamlesh Devi', 1472589630, 'New Delhi', 'anujk3', '81dc9bdb52d04dc20036dbd8313ed055', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2022-02-02 18:57:22'),
(6, 'aaaa', 'aaaaa@gmail.com', '2', 'Male', '2023-11-15', 'aaa123', 'A', 123444444, 'sdasadasdasd', 'hi', '81dc9bdb52d04dc20036dbd8313ed055', '423c0607b45eeb26d1ebb02b259ffe751700331258.jpg', '2023-11-18 18:14:18'),
(7, 'bbbbb', 'bbbbb@gmail.com', '5', 'Male', '2023-11-24', 'b123', NULL, 123213123, 'afdsafdsf', 'hhh', '81dc9bdb52d04dc20036dbd8313ed055', '423c0607b45eeb26d1ebb02b259ffe751700331349.jpg', '2023-11-18 18:15:49'),
(8, 'cccc', 'ccccc@gmail.com', '3', 'Male', '2023-11-10', '11111', NULL, 213213123, 'fdsfdsfdsfds', 'hhhh', '81dc9bdb52d04dc20036dbd8313ed055', '423c0607b45eeb26d1ebb02b259ffe751700331458.jpg', '2023-11-18 18:17:38'),
(9, 'dddd', 'd@gmail.comddd', '7', 'Male', '2023-11-16', 'ddd123', 'A', 1232131232, 'rfdsafdsasa', 'qqqq', '81dc9bdb52d04dc20036dbd8313ed055', '423c0607b45eeb26d1ebb02b259ffe751700331639.jpg', '2023-11-18 18:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(11) NOT NULL,
  `TeacherName` varchar(100) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `TeacherName`, `UserName`, `MobileNumber`, `Email`, `Password`) VALUES
(1, 'Tony', 'tony', 56778554, 'Tony@gmail.com', '123'),
(2, 'asdasdasd', 'qwe', 67887687, 'sadasdasds@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'qweqwe', 'hihi', 96677567, 'qweqwe@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
