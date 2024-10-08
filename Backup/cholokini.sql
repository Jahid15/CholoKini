-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 10:48 AM
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
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3213, 123213, 12123, 5550.00, '2024-09-22 09:14:36', 'rfewrf', ''),
(3214, 7, 128, 450.00, '2024-09-22 09:14:37', '', 'Active'),
(3215, 9, 128, 475.00, '2024-09-22 09:14:38', '', 'Active'),
(3216, 2, 129, 26.00, '2024-09-22 09:14:39', '', 'Active'),
(3217, 2, 129, 30.00, '2024-09-22 09:14:40', '', 'Active'),
(3218, 2, 128, 500.00, '2024-09-22 09:14:41', '', 'Active'),
(3219, 2, 128, 525.00, '2024-09-22 09:14:42', '', 'Active'),
(3220, 2, 129, 40.00, '2024-09-22 09:14:43', '', 'Active'),
(3221, 2, 143, 10.00, '2024-09-22 09:14:44', '', 'Active'),
(3222, 2, 143, 12.00, '2024-09-22 09:14:45', '', 'Active'),
(3223, 2, 143, 1.00, '2024-09-22 09:14:46', '', 'Active'),
(3224, 9, 143, 1.00, '2024-09-22 09:14:47', '', 'Active'),
(3225, 9, 143, 2.00, '2024-09-22 09:14:48', '', 'Active'),
(3226, 23, 148, 10.00, '2024-09-22 09:14:49', '', 'Active'),
(3227, 23, 148, 20.00, '2024-09-22 09:14:50', '', 'Active'),
(3228, 23, 148, 10.00, '2024-09-22 09:14:51', '', 'Active'),
(3229, 23, 148, 10.00, '2024-09-22 09:14:52', '', 'Active'),
(3230, 23, 148, 10.00, '2024-09-22 09:14:53', '', 'Active'),
(3231, 23, 148, 10.00, '2024-09-22 09:14:54', '', 'Active'),
(3232, 23, 148, 10.00, '2024-09-22 09:14:55', '', 'Active'),
(3233, 23, 148, 10.00, '2024-09-22 09:14:56', '', 'Active'),
(3234, 23, 148, 10.00, '2024-09-22 09:14:57', '', 'Active'),
(3235, 23, 148, 10.00, '2024-09-22 09:14:58', '', 'Active'),
(3236, 23, 148, 10.00, '2024-09-22 09:14:59', '', 'Active'),
(3237, 23, 148, 11.00, '2024-09-22 09:15:00', '', 'Active'),
(3238, 23, 148, 12.00, '2024-09-22 09:15:01', '', 'Active'),
(3239, 23, 148, 13.00, '2024-09-22 09:15:02', '', 'Active'),
(3240, 23, 148, 13.00, '2024-09-22 09:15:03', '', 'Active'),
(3241, 23, 148, 14.00, '2024-09-22 09:15:04', '', 'Active'),
(3242, 23, 148, 14.00, '2024-09-22 09:15:05', '', 'Active'),
(3243, 23, 148, 15.00, '2024-09-22 09:15:06', '', 'Active'),
(3244, 2, 149, 48025.00, '2024-09-22 09:15:07', '', 'Active'),
(3245, 8, 149, 48050.00, '2024-09-22 09:15:08', '', 'Active'),
(3246, 28, 151, 65025.00, '2024-09-29 14:22:46', '', 'Active'),
(3247, 28, 151, 65050.00, '2024-09-29 14:23:06', '', 'Active'),
(3248, 8, 151, 65058.00, '2024-09-29 15:46:45', '', 'Active'),
(3249, 28, 153, 95001.00, '2024-09-29 19:43:28', '', 'Active'),
(3250, 28, 152, 45020.00, '2024-10-02 11:35:35', '', 'Active'),
(3251, 28, 152, 48000.00, '2024-10-02 11:38:05', '', 'Active'),
(3252, 28, 154, 9999.00, '2024-10-02 12:12:48', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `customer_id`, `product_id`, `purchase_date`, `purchase_amount`, `payment_type`, `card_type`, `card_number`, `expire_date`, `cvv_number`, `card_holder`, `delivery_date`, `note`, `status`) VALUES
(1326, 321, 231, '2024-09-22', 500.00, '12323', '3123', '545454545', '2026-09-22', '545', '5454545', '2020-01-20', '213213213', ''),
(1327, 0, 125, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '545', 'yjut', '0000-00-00', '', 'Active'),
(1328, 0, 126, '2024-09-22', 100.00, 'Sell', 'VISA', '1987654321234567', '2026-09-22', '543', 'Rajkiran', '0000-00-00', '', 'Active'),
(1329, 8, 0, '2024-09-22', 500.00, 'Deposit', 'Credit card', '1234567890123456', '2026-09-22', '564', 'Raj kiran', '0000-00-00', '', 'Active'),
(1330, 0, 127, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '433', 'Rajkiran', '0000-00-00', '', 'Active'),
(1331, 0, 128, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '237', 'Rajkiran', '0000-00-00', '', 'Active'),
(1332, 7, 0, '2024-09-22', 650.00, 'Deposit', 'Credit card', '9876543212346789', '2026-09-22', '237', 'karan', '0000-00-00', '', 'Active'),
(1333, 0, 129, '2024-09-22', 100.00, 'Sell', 'Debit Card', '7894561230123456', '2026-09-22', '433', 'Raj', '0000-00-00', '', 'Active'),
(1334, 9, 0, '2024-09-22', 300.00, 'Deposit', 'Debit Card', '1234567890123456', '2026-09-22', '453', 'Raj', '0000-00-00', '', 'Active'),
(1335, 2, 0, '2024-09-22', 650.00, 'Deposit', 'Credit card', '1234567891012345', '2026-09-22', '458', 'Raj kiran', '0000-00-00', '', 'Active'),
(1336, 0, 136, '2024-09-22', 100.00, 'Sell', 'Credit card', '1233213213213134', '2026-09-22', '443', 'da', '0000-00-00', '', 'Active'),
(1337, 9, 0, '2024-09-22', 250.00, 'Deposit', 'Debit Card', '1234567890123456', '2026-09-22', '548', 'Raj kiran', '0000-00-00', '', 'Active'),
(1338, 2, 0, '2024-09-22', 100.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1339, 0, 138, '2024-09-22', 100.00, 'Sell', 'Master Card', '1234567890123456', '2026-09-22', '456', 'raj kiran', '0000-00-00', '', 'Active'),
(1340, 2, 0, '2024-09-22', 0.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1341, 0, 140, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '489', 'Raj kiran', '0000-00-00', '', 'Active'),
(1342, 9, 141, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '125', 'Raj kiran', '0000-00-00', '', 'Active'),
(1343, 0, 142, '2024-09-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2026-09-22', '486', 'Raj kiran', '0000-00-00', '', 'Active'),
(1344, 9, 0, '2024-09-22', 0.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1345, 9, 0, '2024-09-22', 0.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1346, 9, 0, '2024-09-22', 0.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1347, 9, 0, '2024-09-22', 0.00, 'Deposit', '', '', '2026-09-22', '', '', '0000-00-00', '', 'Active'),
(1348, 23, 0, '2024-09-22', 650.00, 'Deposit', 'Debit Card', '1234567890123456', '2026-09-22', '159', 'Raj kiran', '0000-00-00', '', 'Active'),
(1349, 25, 149, '2024-09-22', 100.00, 'Sell', 'VISA', '1234123412341234', '2026-09-22', '123', 'Jahid Ibna Sinha', '0000-00-00', '', 'Active'),
(1350, 25, 0, '2024-09-22', 3248234.00, 'Deposit', 'Credit card', '1234567812345678', '2026-09-22', '123', 'Jahid Ibna Sinha', '0000-00-00', '', 'Active'),
(1351, 27, 150, '2024-09-29', 100.00, 'Sell', 'Credit card', '1231231231232311', '2024-12-01', '123', 'shariar ferdous', '0000-00-00', '', 'Active'),
(1352, 27, 0, '2024-09-29', 10000000.00, 'Deposit', 'Credit card', '1231231231231231231', '2024-12-01', '123', 'shariar ferdous', '0000-00-00', '', 'Active'),
(1353, 26, 151, '2024-09-29', 100.00, 'Sell', 'VISA', '1234567890123454', '2024-12-01', '852', 'Khan Israk Ahmed', '0000-00-00', '', 'Active'),
(1354, 28, 0, '2024-09-29', 123658.00, 'Deposit', 'Credit card', '7418529637418527', '2025-06-01', '951', 'Khan Israk Ahmed', '0000-00-00', '', 'Active'),
(1355, 26, 152, '2024-09-29', 100.00, 'Sell', 'VISA', '1234567812345678', '2025-09-01', '741', 'Khan Israk Ahmed', '0000-00-00', '', 'Active'),
(1356, 26, 0, '2024-09-29', 8520.00, 'Deposit', 'Debit Card', '123456791234567', '2024-11-01', '963', 'Khan Israk Ahmed', '0000-00-00', '', 'Active'),
(1357, 26, 153, '2024-09-29', 100.00, 'Sell', 'Credit card', '1234567812345678', '2024-11-01', '963', 'Khan Israk Ahmed', '0000-00-00', '', 'Active'),
(1358, 28, 155, '2024-10-03', 100.00, 'Sell', 'Credit card', '1234567812345678', '2024-11-01', '852', 'Khan Israk Ahmed', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16548, 'Mobiles', '363950331mobiles.jpg', 'Mobile Phone and Accessaries', 'Active'),
(16549, 'Laptops', '1293881421laptop.jpg', 'Laptops and Accessaries', 'Active'),
(16550, 'Camera', '155622865Camera.jpg', 'Camera and Accessaries', 'Active'),
(16551, 'Others', '1871695161', 'Other categories', 'Active'),
(16552, 'Watches', '5837watch.jpg', ' white day and date watch, which will never let you stay behind time.', 'Active'),
(16558, 'Coins', '5837watch.jpg', 'Coins', 'Active');

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

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'Admin', 'admin', 'Admin', 'Active'),
(5, 'Employee', 'employee', 'employee', 'Employee', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `message_date_time`, `product_id`, `message`, `status`) VALUES
(23, 23, 9, '2020-03-05 14:58:45', 141, 'Hello\n', 'Customer'),
(24, 23, 9, '2020-03-05 19:31:48', 141, 'Hello\n', 'Seller'),
(25, 24, 9, '2020-03-05 15:02:38', 141, 'Hello hudson\n', 'Customer'),
(26, 24, 9, '2020-03-05 19:32:55', 141, 'Hello manish\n', 'Seller'),
(27, 24, 9, '2020-03-05 15:13:07', 141, 'Hello\n', 'Customer'),
(28, 24, 9, '2020-03-05 15:14:01', 141, 'Hi\n', 'Customer'),
(29, 24, 9, '2020-03-05 15:14:06', 141, 'Hello\n', 'Customer'),
(30, 23, 9, '2020-03-05 19:44:20', 141, 'Hello\n', 'Seller'),
(31, 24, 9, '2020-03-05 15:17:35', 141, 'Hello\n', 'Customer'),
(32, 24, 9, '2020-03-05 19:47:48', 141, 'Test message\n', 'Seller'),
(33, 24, 9, '2020-03-05 15:19:18', 141, 'Hello\n', 'Customer'),
(34, 24, 9, '2020-03-05 15:19:31', 141, 'aa\n', 'Customer'),
(35, 24, 9, '2020-03-05 15:21:01', 141, 'welcome\n', 'Customer'),
(36, 24, 9, '2020-03-05 19:51:15', 141, 'yesll\n', 'Seller'),
(37, 2, 25, '2024-09-21 19:38:58', 149, 'hello\n', 'Customer'),
(38, 2, 25, '2024-09-21 19:39:14', 149, 'i want to buy this phone\n', 'Customer'),
(39, 2, 25, '2024-09-21 19:39:52', 149, 'yes you can buy it\n', 'Seller'),
(40, 8, 25, '2024-09-21 20:49:26', 149, 'hello\n', 'Customer'),
(41, 28, 26, '2024-09-29 14:31:02', 151, 'bhai daam arektu koman\n', 'Customer'),
(42, 28, 26, '2024-09-29 14:33:30', 151, 'na bhai ek dam\n', 'Seller'),
(43, 8, 26, '2024-09-29 15:48:14', 152, 'kfsdjfkj\n', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_type`, `product_id`, `bidding_id`, `paid_amount`, `paid_date`, `status`) VALUES
(213, 123, 'bhhb', 213, 3123, 213.00, '2020-01-01', 'Active'),
(214, 7, 'Bid', 128, 3214, 4.50, '2020-02-05', 'Active'),
(215, 9, 'Bid', 128, 3215, 4.75, '2020-02-06', 'Active'),
(216, 2, 'Bid', 129, 3216, 0.26, '2020-02-13', 'Active'),
(217, 2, 'Bid', 129, 3217, 0.30, '2020-02-13', 'Active'),
(218, 2, 'Bid', 128, 3218, 5.00, '2020-02-13', 'Active'),
(219, 2, 'Bid', 128, 3219, 5.25, '2020-02-13', 'Active'),
(220, 2, 'Bid', 129, 3220, 0.40, '2020-02-13', 'Active'),
(221, 2, 'Bid', 143, 3221, 0.10, '2020-03-04', 'Active'),
(222, 2, 'Bid', 143, 3222, 0.12, '2020-03-04', 'Active'),
(223, 2, 'Bid', 143, 3223, 0.01, '2020-03-04', 'Active'),
(224, 9, 'Bid', 143, 3224, 0.01, '2020-03-04', 'Active'),
(225, 9, 'Bid', 143, 3225, 0.02, '2020-03-04', 'Active'),
(226, 23, 'Bid', 148, 3226, 0.10, '2020-03-05', 'Active'),
(227, 23, 'Bid', 148, 3227, 5.00, '2020-03-05', 'Active'),
(228, 23, 'Bid', 148, 3228, 15.00, '2020-03-05', 'Active'),
(229, 23, 'Bid', 148, 3229, 15.00, '2020-03-05', 'Active'),
(230, 23, 'Bid', 148, 3230, 15.00, '2020-03-05', 'Active'),
(231, 23, 'Bid', 148, 3231, 15.00, '2020-03-05', 'Active'),
(232, 23, 'Bid', 148, 3232, 15.00, '2020-03-05', 'Active'),
(233, 23, 'Bid', 148, 3233, 15.00, '2020-03-05', 'Active'),
(234, 23, 'Bid', 148, 3234, 15.00, '2020-03-05', 'Active'),
(235, 23, 'Bid', 148, 3235, 15.00, '2020-03-05', 'Active'),
(236, 23, 'Bid', 148, 3236, 15.00, '2020-03-05', 'Active'),
(237, 23, 'Bid', 148, 3237, 16.00, '2020-03-05', 'Active'),
(238, 23, 'Bid', 148, 3238, 17.00, '2020-03-05', 'Active'),
(239, 23, 'Bid', 148, 3239, 18.00, '2020-03-05', 'Active'),
(240, 23, 'Bid', 148, 3240, 18.00, '2020-03-05', 'Active'),
(241, 23, 'Bid', 148, 3241, 19.00, '2020-03-05', 'Active'),
(242, 23, 'Bid', 148, 3242, 19.00, '2020-03-05', 'Active'),
(243, 23, 'Bid', 148, 3243, 20.00, '2020-03-05', 'Active'),
(244, 2, 'Bid', 149, 3244, 480.25, '2024-09-21', 'Active'),
(245, 8, 'Bid', 149, 3245, 480.50, '2024-09-21', 'Active'),
(246, 28, 'Bid', 151, 3246, 650.25, '2024-09-29', 'Active'),
(247, 28, 'Bid', 151, 3247, 650.50, '2024-09-29', 'Active'),
(248, 8, 'Bid', 151, 3248, 650.58, '2024-09-29', 'Active'),
(249, 28, 'Bid', 153, 3249, 950.01, '2024-09-29', 'Active'),
(250, 28, 'Bid', 152, 3250, 450.20, '2024-10-02', 'Active'),
(251, 28, 'Bid', 152, 3251, 480.00, '2024-10-02', 'Active'),
(252, 28, 'Bid', 154, 3252, 10004.00, '2024-10-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(126, 7, 'Xiaomi Redmi Note 8', 16548, 'Xiaomi Redmi Note 8 is a mid-range that can impress the buyers with its stylish design. The device offers no bezels except for a thin chin. It offers an amazing viewing experience that knows no boundary. It also delivers stellar performance with the strong internal hardware along with long-hour battery backup coupled with Fast Charging technology.', 100.00, 0.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 10000.00, '2020024625xiaomi-redmi-note-8.jpg', '1', 'Excellent camerasGreat performanceGood battery backupFast Charging suppor', 'Xiami', 'Active'),
(127, 8, 'Lenovo Ideapad S145 8th Gen', 16549, 'Operating System: Pre-loaded Windows 10 Home with lifetime validity and Microsoft Office 2019\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 256 GB SSD\r\nDesign and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark\r\nThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\nInside the box: Laptop, Charger, User Manual | With Microsoft Office 2019\r\nPorts and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive', 1.00, 1.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 10000.00, '1160091601laptop.jpg', '1', 'Delivery in 7 - 8 days', 'Lenovo', 'Active'),
(128, 8, 'Canon EOS R Mirrorless Digital Camera', 16550, 'The first step in Canon\'s mirrorless evolution, the EOS R pairs a redeveloped lens mount and updated full-frame image sensor for a unique and sophisticated multimedia camera system. Revolving around the new RF lens mount, the EOS R is poised to be the means from which to make the most of a new series of lenses and optical technologies.', 1.00, 525.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 50000.00, '1249798823Camera.jpg', 'Mangalore', 'test', 'aishu', 'Active'),
(129, 9, 'Redmi Note 7S', 16548, 'With its 13 MP AI front camera, the Redmi Note 7S takes your selfie game to the next level, allowing you to click gorgeous and Instagram-worthy pictures effortlessly.', 25.00, 40.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 8999.00, '19660redmi note7.jpeg', '1 year', '3 Days', 'Redmi', 'Active'),
(138, 2, 'acerlaptoplapyto', 16549, 'this is lap', 100.00, 100.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 25000.00, '143159a749921556e059f5680ffc7ea8f145.jpeg', '', '3-4 Days', 'acer', 'Active'),
(139, 2, 'aaaaaaaaaaaaaaaaaaaa', 16549, 'asasasasas', 100.00, 100.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 25000.00, '22368cia-new-poster-759.jpeg', '', '4-5 days', 'lpo', 'Pending'),
(140, 9, 'OnePlus', 16548, '48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image', 1.00, 1.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 35000.00, '2969771ncRs6HzyL._SL1500_.jpg', '', '4-5 days', 'One Plus', 'Active'),
(141, 9, 'OnePlus T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 1.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 34999.00, '81871ncRs6HzyL._SL1500_.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(142, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 0.00, 0.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 35000.00, '866771ncRs6HzyL._SL1500_.jpg', '', '4-5 days', 'Oneplus', 'Active'),
(148, 0, 'Canon EOS 5D', 16550, 'The Canon EOS 5D Mark IV camera is made for people who take photography seriously. With features, such as the 30.4 MP Full-frame CMOS Sensor, Dual Pixel CMOS AF and 4K Movie Shooting, this camera not only delivers beautiful stills, but it also lets you take incredible videos.', 0.00, 15.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 35000.00, '18563canon.jpeg', '', '4-5 days', 'Canon', 'Active'),
(149, 25, 'iPhone 13 128 GB ', 16548, 'Finish\r\n(PRODUCT)RED\r\n\r\nStarlight\r\n\r\nMidnight\r\n\r\nBlue\r\n\r\nPink\r\n\r\nGreen\r\n\r\nCeramic Shield front, Glass back and aluminum design\r\n\r\nCapacity1\r\n128GB\r\n\r\n256GB\r\n\r\n512GB\r\n\r\nSize and Weight2\r\nWidth: 2.82 inches (71.5 mm)\r\n\r\nHeight: 5.78 inches (146.7 mm)\r\n\r\nDepth: 0.30 inch (7.65 mm)\r\n\r\nWeight: 6.14 ounces (174 grams)\r\n\r\nDisplay\r\nSuper Retina XDR display\r\n\r\n6.1?inch (diagonal) all?screen OLED display\r\n\r\n2532?by?1170-pixel resolution at 460 ppi\r\n\r\nHDR display\r\n\r\nTrue Tone\r\n\r\nWide color (P3)\r\n\r\nHaptic Touch\r\n\r\n2,000,000:1 contrast ratio (typical)\r\n\r\n800 nits max brightness (typical); 1200 nits peak brightness (HDR)\r\n\r\nFingerprint-resistant oleophobic coating\r\n\r\nSupport for display of multiple languages and characters simultaneously\r\n\r\nThe iPhone 13 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less).', 48000.00, 48050.00, '2024-09-22 08:52:40', '2024-09-23 08:52:40', 48000.00, '2038075457iphone 13.jpg', '', '3-4 Days', 'Apple inc', 'Active'),
(151, 26, 'ROG M16', 16549, 'Model: Asus ROG Zephyrus M16 GU603ZM\r\nProcessor: 12th Gen IntelÂ® Coreâ„¢ i7-12700H Processor 2.3 GHz\r\nGraphics: NVIDIAÂ® GeForce RTXâ„¢ 3060 Laptop GPU 6GB GDDR6\r\nRAM: 16GB DDR5-4800 SO-DIMM\r\nStorage: 512GB PCIeÂ® 4.0 NVMeâ„¢ M.2 Performance SSD\r\nDisplay: ROG Nebula Display, Refresh Rate:165Hz', 65000.00, 65058.00, '2024-09-29 14:14:00', '2024-09-30 22:00:00', 105000.00, '1376049538GU603ZM-7533.jpg', '', '4-5 days', 'Asus ', 'Active'),
(152, 26, 'Aquanaut', 16552, 'The 5261R does, however, retain some characteristics from the â€˜Luceâ€™ collection, such as the thinner butterfly clasp and strap, this time keeping the deeper embossed grooves. That being said, one could see the strap style instead as a nod to those used in the vintage era of Aquanaut, such as the collectable Ref. 5065. The 5261R also keeps the water resistance depth of 30 metres, instead of the 120 metres that its larger brothers are able to reach. This perhaps is the only major criticism of the watch on a non subjective basis. It is after all an Aquanaut and so should be equipped with a screw down crown at the very least.', 45000.00, 48000.00, '2024-10-01 00:01:00', '2024-10-03 14:01:00', 59999.00, '2140292824download.jpg', '', '4-5 days', 'patek philippe', 'Active'),
(153, 26, 'MacBook Pro M1', 16549, 'MacBook Pro M1 8/256GB 13-inch Space Gray\r\nThe Apple MacBook Pro M1 is for premium users who want a seamless experience in their life. This notebook has a powerful M1 chip that has an 8-core CPU. Its 8-core GPU will give you a smooth experience while doing high-quality video editing, coding, or any task that involves intensive graphics. It has 8 GB RAM that you can easily upgrade up to 16 GB anytime for better performance. Its 256 GB storage will make sure your MacBook runs fast. With its 61W USB-C Power Adapter, you can charge it within a short time. This MacBook has a flawless Space Gray finish grabbing the centre of attraction.', 95000.00, 95001.00, '2024-09-29 14:41:00', '2024-09-29 22:59:00', 120000.00, '18114500812324-41148.jpg', '', '4-5 days', 'Apple', 'Active'),
(154, 0, 'Dell Alienware X16 R1', 16549, 'Tech Specs\r\nProcessor\r\n13th Generation IntelÂ® Coreâ„¢ i9-13900HK (24 MB cache, 14 cores, up to 5.40 GHz Turbo)\r\n\r\nOperating System\r\nWindows 11 Pro, 64-bit\r\n\r\nGraphics Card\r\nDiscrete:\r\nNVIDIAÂ® GeForceÂ® RTXâ„¢ 4090, 16 GB GDDR6\r\n\r\n\r\nIntegrated:\r\nIntelÂ® UHD Graphics\r\n\r\nDisplay\r\n16-inch, FHD+ 1920 x 1200, 480 Hz, anti-glare, non-touch, 100% DCI-P3, 300 nits, wide-viewing angle\r\n\r\nMemory \r\n32 GB, LPDDR5, 6000 MHz, integrated, dual-channel\r\n\r\nStorage\r\n2 TB, M.2 2280, PCIe NVMe Gen4 x4, SSD + 2 TB, M.2 2280, PCIe NVMe Gen4 x4, SSD', 0.00, 9999.00, '2024-10-02 12:01:00', '2024-10-03 11:30:00', 399000.00, '1974462046download (1).jpg', '', '3-4 Days', 'DELL Inc.', 'Active'),
(155, 28, 'Apple iPad Pro 2022', 16548, 'The sixth-generation iPad Pro, is a line of iPad tablet computers developed and marketed by Apple Inc. It was announced on October 18, 2022, and was released on October 26, 2022.', 90000.00, 90000.00, '2024-10-03 12:59:00', '2024-10-04 12:59:00', 125000.00, '1378360187apple-ipad-pro-129-2022-1.jpg', '', '3-4 Days', 'Apple', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(3, 129, 2, '', 40.00, '2020-02-13', 'Pending'),
(4, 128, 2, '', 525.00, '2020-02-13', 'Pending'),
(5, 143, 9, '', 2.00, '2020-03-04', 'Pending'),
(6, 148, 23, '', 15.00, '2020-03-05', 'Pending'),
(7, 149, 8, '', 48050.00, '2024-09-21', 'Pending'),
(8, 151, 8, '', 65058.00, '2024-09-29', 'Pending'),
(9, 153, 28, '', 95001.00, '2024-09-29', 'Pending'),
(10, 154, 28, '', 9999.00, '2024-10-02', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3253;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1359;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16559;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
