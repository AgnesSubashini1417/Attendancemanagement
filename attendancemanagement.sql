-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `Studentid` varchar(255) NOT NULL,
  `studentclass` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `Studentid`, `studentclass`, `date`, `status`) VALUES
(12, '1001', 'class1', '2025-01-18', 'Present'),
(13, '1003', 'class1', '2025-01-18', 'Present'),
(14, '1005', 'class1', '2025-01-18', 'Present'),
(15, '1001', 'class1', '2025-01-19', 'Absent'),
(16, '1003', 'class1', '2025-01-19', 'Present'),
(17, '1005', 'class1', '2025-01-19', 'Absent'),
(18, '1001', 'class1', '2025-01-01', 'Present'),
(19, '1003', 'class1', '2025-01-01', 'Present'),
(20, '1005', 'class1', '2025-01-01', 'Present'),
(21, '1001', 'class1', '2025-01-02', 'Absent'),
(22, '1003', 'class1', '2025-01-02', 'Present'),
(23, '1005', 'class1', '2025-01-02', 'Present'),
(24, '1002', 'class2', '2025-01-03', 'Present'),
(25, '1002', 'class2', '2025-01-02', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `Classid` varchar(255) NOT NULL,
  `Classname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `Classid`, `Classname`) VALUES
(5, '1', 'class1'),
(6, '2', 'class2'),
(7, '3', 'class3'),
(8, '4', 'class4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `Studentid` varchar(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `studentclass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Studentid`, `studentname`, `studentclass`) VALUES
(5, '1001', 'Heaman', 'class1'),
(6, '1002', 'Zion', 'class2'),
(7, '1003', 'Hafsa', 'class1'),
(8, '1004', 'mariya', 'class4'),
(9, '1005', 'Sriram', 'class1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Studentid` (`Studentid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_studentid` (`Studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Studentid`) REFERENCES `student` (`Studentid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
