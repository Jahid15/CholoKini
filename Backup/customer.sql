-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 04:23 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cholokini`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(2, 'Sheikh Hasina', 'hasina@gmail.com', '1234567890', 'dfdf', 'Delhi', 'efdefd', 'chapra moshjid', '1237', '1234567891', '', 'Active'),
(7, 'Younus', 'Younus@gmail.com', '123456789', '3rd floor, city light building', 'Dhaka', 'sdkjfjdsf', 'fasdfasd', '1238', '1234567892', '', 'Active'),
(8, 'Kader', 'kader@gmail.com', '1234567890', '', '', '', '', '1239', '1234567893', '', 'Active'),
(9, 'Hudson', 'hudson@gmail.com', '1234567890', '3rd floor, city light', 'Dhaka', 'Dhaka', 'Near KMC Hospital', '1240', '1234567894', '', 'Active'),
(22, 'Aravinda', 'mvaravinda@gmail.com', '123456789', '', '', '', '', '1241', '1234567895', '', 'Active'),
(23, 'Rajpal', 'rajpal@gmail.com', '123456789', '', '', '', '', '1242', '1234567896', '', 'Active'),
(24, 'fokrul', 'fokrul@gmail.com', '123456789', 'press club', 'Dhaka', 'sfdf', 'fsdfs', '1243', '1234567897', '', 'Active'),
(25, 'Jahid Ibna Sinha', 'ibnasinha15@gmail.com', '1234567890', '', '', '', '', '1244', '1234567898', '', 'Active'),
(26, 'kakashi hatake', 'kakashi@gmail.com', '1234567890', '', '', '', '', '1245', '1234567899', '', 'Active'),
(28, 'Khan Israk Ahmed', 'kahmed221275@gmail.com', '0987654321', 'Dhaka Cantonment Dhaka', 'Dhaka', 'Dhaka Cantonment', 'ECB Chattar', '1206', '01516183490', '', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
