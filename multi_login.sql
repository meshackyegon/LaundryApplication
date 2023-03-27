-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 04:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `id` int(10) NOT NULL,
  `sdate` date NOT NULL,
  `laundrytype` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `pdate` date NOT NULL,
  `qrimage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`id`, `sdate`, `laundrytype`, `filename`, `pdate`, `qrimage`) VALUES
(8, '2022-11-23', 'Floor Mat', '1', '2022-11-19', NULL),
(9, '2022-11-23', 'Floor Mat', '1', '2022-11-19', NULL),
(10, '2022-11-12', 'Jacket', 'js.jpg', '2022-11-19', NULL),
(11, '2022-11-22', 'Blanket', '1', '2022-11-22', NULL),
(12, '2022-11-15', 'Blanket', 'IMG-20221104-WA0032.jpg', '2022-11-22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `paymode` varchar(100) NOT NULL,
  `payid` varchar(100) NOT NULL,
  `payname` varchar(100) NOT NULL,
  `paydate` date NOT NULL,
  `paytime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `paymode`, `payid`, `payname`, `paydate`, `paytime`) VALUES
(1, 'Mpesa', '15:19', 'Henry Kioko', '0000-00-00', '00:00:00'),
(2, 'Mpesa', '15:19', 'Henry Kioko', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phoneNo` int(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `location`, `phoneNo`, `user_type`, `password`) VALUES
(10, 'meshack', 'meshackyegon10@gmail.com', 'litein', 3456789, 'user', '202cb962ac59075b964b07152d234b70'),
(11, 'kip', 'nicktech2@gmail.com', 'gataka', 123456789, 'admin', '202cb962ac59075b964b07152d234b70'),
(12, 'mesh', 'mesh@gmail.com', 'Chepcholiet', 34567890, 'user', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
