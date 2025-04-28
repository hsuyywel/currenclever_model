-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2025 at 01:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currenclever`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget_estimations`
--

CREATE TABLE `budget_estimations` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `predicted_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget_estimations`
--

INSERT INTO `budget_estimations` (`id`, `user_email`, `month`, `year`, `category`, `predicted_amount`, `created_at`) VALUES
(1, 'hsuyeywel@gmail.com', 6, 2025, 'Food', 10.00, '2025-04-24 17:57:34'),
(2, 'hsuyeywel@gmail.com', 6, 2025, 'Groceries', 99.00, '2025-04-24 17:57:34'),
(3, 'hsuyeywel@gmail.com', 6, 2025, 'Fashion', 12.00, '2025-04-24 17:57:34'),
(4, 'hsuyeywel@gmail.com', 6, 2025, 'Leisures', 5.00, '2025-04-24 17:57:34'),
(5, 'hsuyeywel@gmail.com', 6, 2025, 'Accommodation', 0.00, '2025-04-24 17:57:34'),
(6, 'hsuyeywel@gmail.com', 6, 2025, 'Insurance', 350.00, '2025-04-24 17:57:34'),
(7, 'hsuyeywel@gmail.com', 6, 2025, 'Miscellaneous', 0.00, '2025-04-24 17:57:34'),
(8, 'hsuyeywel@gmail.com', 7, 2025, 'Food', 2.60, '2025-04-24 17:58:16'),
(9, 'hsuyeywel@gmail.com', 7, 2025, 'Groceries', 25.74, '2025-04-24 17:58:16'),
(10, 'hsuyeywel@gmail.com', 7, 2025, 'Fashion', 3.12, '2025-04-24 17:58:16'),
(11, 'hsuyeywel@gmail.com', 7, 2025, 'Leisures', 1.30, '2025-04-24 17:58:16'),
(12, 'hsuyeywel@gmail.com', 7, 2025, 'Accommodation', 74.00, '2025-04-24 17:58:16'),
(13, 'hsuyeywel@gmail.com', 7, 2025, 'Insurance', 91.00, '2025-04-24 17:58:16'),
(14, 'hsuyeywel@gmail.com', 7, 2025, 'Miscellaneous', 0.00, '2025-04-24 17:58:16'),
(15, 'hsuyeywel@gmail.com', 8, 2025, 'Food', 2.60, '2025-04-24 18:50:13'),
(16, 'hsuyeywel@gmail.com', 8, 2025, 'Groceries', 25.74, '2025-04-24 18:50:13'),
(17, 'hsuyeywel@gmail.com', 8, 2025, 'Fashion', 3.12, '2025-04-24 18:50:13'),
(18, 'hsuyeywel@gmail.com', 8, 2025, 'Leisures', 1.30, '2025-04-24 18:50:13'),
(19, 'hsuyeywel@gmail.com', 8, 2025, 'Accommodation', 74.00, '2025-04-24 18:50:13'),
(20, 'hsuyeywel@gmail.com', 8, 2025, 'Insurance', 91.00, '2025-04-24 18:50:13'),
(21, 'hsuyeywel@gmail.com', 8, 2025, 'Miscellaneous', 0.00, '2025-04-24 18:50:13'),
(22, 'hsuyeywel@gmail.com', 5, 2025, 'Food', 2124.09, '2025-04-24 18:59:37'),
(23, 'hsuyeywel@gmail.com', 5, 2025, 'Groceries', 138.60, '2025-04-24 18:59:37'),
(24, 'hsuyeywel@gmail.com', 5, 2025, 'Fashion', 62.60, '2025-04-24 18:59:37'),
(25, 'hsuyeywel@gmail.com', 5, 2025, 'Leisures', 127.50, '2025-04-24 18:59:37'),
(26, 'hsuyeywel@gmail.com', 5, 2025, 'Accommodation', 2163.00, '2025-04-24 18:59:37'),
(27, 'hsuyeywel@gmail.com', 5, 2025, 'Insurance', 0.00, '2025-04-24 18:59:37'),
(28, 'hsuyeywel@gmail.com', 5, 2025, 'Miscellaneous', 40.00, '2025-04-24 18:59:37'),
(29, 'hsuyeywel@gmail.com', 4, 2025, 'Food', 2073.03, '2025-04-24 18:59:45'),
(30, 'hsuyeywel@gmail.com', 4, 2025, 'Groceries', 121.20, '2025-04-24 18:59:45'),
(31, 'hsuyeywel@gmail.com', 4, 2025, 'Fashion', 86.60, '2025-04-24 18:59:45'),
(32, 'hsuyeywel@gmail.com', 4, 2025, 'Leisures', 127.50, '2025-04-24 18:59:45'),
(33, 'hsuyeywel@gmail.com', 4, 2025, 'Accommodation', 2163.00, '2025-04-24 18:59:45'),
(34, 'hsuyeywel@gmail.com', 4, 2025, 'Insurance', 0.00, '2025-04-24 18:59:45'),
(35, 'hsuyeywel@gmail.com', 4, 2025, 'Miscellaneous', 40.00, '2025-04-24 18:59:45'),
(36, 'hsuyeywel@gmail.com', 3, 2025, 'Food', 2155.00, '2025-04-24 19:03:26'),
(37, 'hsuyeywel@gmail.com', 3, 2025, 'Groceries', 127.50, '2025-04-24 19:03:26'),
(38, 'hsuyeywel@gmail.com', 3, 2025, 'Fashion', 59.60, '2025-04-24 19:03:26'),
(39, 'hsuyeywel@gmail.com', 3, 2025, 'Leisures', 127.50, '2025-04-24 19:03:26'),
(40, 'hsuyeywel@gmail.com', 3, 2025, 'Accommodation', 2132.34, '2025-04-24 19:03:26'),
(41, 'hsuyeywel@gmail.com', 3, 2025, 'Insurance', 0.00, '2025-04-24 19:03:26'),
(42, 'hsuyeywel@gmail.com', 3, 2025, 'Miscellaneous', 40.00, '2025-04-24 19:03:26'),
(43, 'hsuyeywel@gmail.com', 11, 2024, 'Food', 1093.07, '2025-04-24 19:11:18'),
(44, 'hsuyeywel@gmail.com', 11, 2024, 'Groceries', 120.00, '2025-04-24 19:11:18'),
(45, 'hsuyeywel@gmail.com', 11, 2024, 'Fashion', 40.00, '2025-04-24 19:11:18'),
(46, 'hsuyeywel@gmail.com', 11, 2024, 'Leisures', 0.00, '2025-04-24 19:11:18'),
(47, 'hsuyeywel@gmail.com', 12, 2024, 'Food', 1091.35, '2025-04-24 19:11:18'),
(48, 'hsuyeywel@gmail.com', 11, 2024, 'Accommodation', 0.00, '2025-04-24 19:11:18'),
(49, 'hsuyeywel@gmail.com', 12, 2024, 'Groceries', 120.00, '2025-04-24 19:11:18'),
(50, 'hsuyeywel@gmail.com', 12, 2024, 'Fashion', 99.20, '2025-04-24 19:11:18'),
(51, 'hsuyeywel@gmail.com', 11, 2024, 'Insurance', 0.00, '2025-04-24 19:11:18'),
(52, 'hsuyeywel@gmail.com', 11, 2024, 'Miscellaneous', 0.00, '2025-04-24 19:11:18'),
(53, 'hsuyeywel@gmail.com', 12, 2024, 'Leisures', 94.35, '2025-04-24 19:11:18'),
(54, 'hsuyeywel@gmail.com', 12, 2024, 'Accommodation', 466.20, '2025-04-24 19:11:18'),
(55, 'hsuyeywel@gmail.com', 12, 2024, 'Insurance', 0.00, '2025-04-24 19:11:18'),
(56, 'hsuyeywel@gmail.com', 12, 2024, 'Miscellaneous', 29.60, '2025-04-24 19:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_email`, `amount`, `currency`, `date`, `category`, `note`, `created_at`) VALUES
(1029, 'hsuyeywel@gmail.com', 5.78, 'GBP', '2024-09-05', 'Food', 'Meal out', '2024-09-04 23:00:00'),
(1030, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-09-09', 'Fashion', 'Fashion purchase from Zara', '2024-09-08 23:00:00'),
(1031, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-09-09', 'Groceries', 'Groceries from Lidl', '2024-09-08 23:00:00'),
(1032, 'hsuyeywel@gmail.com', 6.26, 'GBP', '2024-09-11', 'Food', 'Meal out', '2024-09-10 23:00:00'),
(1033, 'hsuyeywel@gmail.com', 12.19, 'GBP', '2024-09-15', 'Food', 'Meal out', '2024-09-14 23:00:00'),
(1034, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-09-16', 'Groceries', 'Groceries from Chinese shop', '2024-09-15 23:00:00'),
(1035, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-09-23', 'Fashion', 'Fashion purchase from Zara', '2024-09-22 23:00:00'),
(1036, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-09-23', 'Groceries', 'Groceries from Tesco', '2024-09-22 23:00:00'),
(1037, 'hsuyeywel@gmail.com', 10.04, 'GBP', '2024-09-28', 'Food', 'Meal out', '2024-09-27 23:00:00'),
(1038, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-09-30', 'Groceries', 'Groceries from Chinese shop', '2024-09-29 23:00:00'),
(1039, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2024-10-01', 'Leisures', 'Laundry service', '2024-09-30 23:00:00'),
(1040, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-10-01', 'Leisures', 'Mobile bill', '2024-09-30 23:00:00'),
(1041, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2024-10-01', 'Leisures', 'ChatGPT subscription', '2024-09-30 23:00:00'),
(1042, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2024-10-01', 'Accommodation', 'Accommodation', '2024-09-30 23:00:00'),
(1043, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2024-10-01', 'Leisures', 'Monthly bus pass', '2024-09-30 23:00:00'),
(1044, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-10-01', 'Leisures', 'Spotify subscription', '2024-09-30 23:00:00'),
(1045, 'hsuyeywel@gmail.com', 18.74, 'GBP', '2024-10-02', 'Food', 'Meal out', '2024-10-01 23:00:00'),
(1046, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-10-07', 'Groceries', 'Groceries from Chinese shop', '2024-10-06 23:00:00'),
(1047, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-10-07', 'Fashion', 'Fashion purchase from H&M', '2024-10-06 23:00:00'),
(1048, 'hsuyeywel@gmail.com', 80.00, 'GBP', '2024-10-10', 'Fashion', 'Skincare from Sephora', '2024-10-09 23:00:00'),
(1049, 'hsuyeywel@gmail.com', 20.43, 'GBP', '2024-10-11', 'Food', 'Meal out', '2024-10-10 23:00:00'),
(1050, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-10-14', 'Groceries', 'Groceries from Lidl', '2024-10-13 23:00:00'),
(1051, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2024-10-15', 'Miscellaneous', 'Household essentials', '2024-10-14 23:00:00'),
(1052, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-10-21', 'Groceries', 'Groceries from Chinese shop', '2024-10-20 23:00:00'),
(1053, 'hsuyeywel@gmail.com', 25.41, 'GBP', '2024-10-21', 'Food', 'Meal out', '2024-10-20 23:00:00'),
(1054, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-10-21', 'Fashion', 'Fashion purchase from H&M', '2024-10-20 23:00:00'),
(1055, 'hsuyeywel@gmail.com', 25.95, 'GBP', '2024-10-25', 'Food', 'Meal out', '2024-10-24 23:00:00'),
(1056, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-10-28', 'Groceries', 'Groceries from Lidl', '2024-10-28 00:00:00'),
(1057, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2024-11-01', 'Leisures', 'Monthly bus pass', '2024-11-01 00:00:00'),
(1058, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2024-11-01', 'Accommodation', 'Accommodation', '2024-11-01 00:00:00'),
(1059, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2024-11-01', 'Leisures', 'Laundry service', '2024-11-01 00:00:00'),
(1060, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-11-01', 'Accommodation', 'University fee', '2024-11-01 00:00:00'),
(1061, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-11-01', 'Leisures', 'Mobile bill', '2024-11-01 00:00:00'),
(1062, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2024-11-01', 'Leisures', 'ChatGPT subscription', '2024-11-01 00:00:00'),
(1063, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-11-01', 'Leisures', 'Spotify subscription', '2024-11-01 00:00:00'),
(1064, 'hsuyeywel@gmail.com', 17.81, 'GBP', '2024-11-03', 'Food', 'Meal out', '2024-11-03 00:00:00'),
(1065, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-11-04', 'Fashion', 'Fashion purchase from H&M', '2024-11-04 00:00:00'),
(1066, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-11-04', 'Groceries', 'Groceries from Chinese shop', '2024-11-04 00:00:00'),
(1067, 'hsuyeywel@gmail.com', 12.55, 'GBP', '2024-11-05', 'Food', 'Meal out', '2024-11-05 00:00:00'),
(1068, 'hsuyeywel@gmail.com', 7.96, 'GBP', '2024-11-11', 'Food', 'Meal out', '2024-11-11 00:00:00'),
(1069, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-11-11', 'Groceries', 'Groceries from Lidl', '2024-11-11 00:00:00'),
(1070, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2024-11-15', 'Miscellaneous', 'Household essentials', '2024-11-15 00:00:00'),
(1071, 'hsuyeywel@gmail.com', 11.54, 'GBP', '2024-11-17', 'Food', 'Meal out', '2024-11-17 00:00:00'),
(1072, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-11-18', 'Fashion', 'Fashion purchase from H&M', '2024-11-18 00:00:00'),
(1073, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-11-18', 'Groceries', 'Groceries from Chinese shop', '2024-11-18 00:00:00'),
(1074, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-11-25', 'Groceries', 'Groceries from Chinese shop', '2024-11-25 00:00:00'),
(1075, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-12-01', 'Leisures', 'Spotify subscription', '2024-12-01 00:00:00'),
(1076, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2024-12-01', 'Leisures', 'Laundry service', '2024-12-01 00:00:00'),
(1077, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2024-12-01', 'Leisures', 'Mobile bill', '2024-12-01 00:00:00'),
(1078, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2024-12-01', 'Leisures', 'ChatGPT subscription', '2024-12-01 00:00:00'),
(1079, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2024-12-01', 'Accommodation', 'Accommodation', '2024-12-01 00:00:00'),
(1080, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2024-12-01', 'Leisures', 'Monthly bus pass', '2024-12-01 00:00:00'),
(1081, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-12-01', 'Accommodation', 'University fee', '2024-12-01 00:00:00'),
(1082, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-12-02', 'Fashion', 'Fashion purchase from Zara', '2024-12-02 00:00:00'),
(1083, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-12-02', 'Groceries', 'Groceries from Tesco', '2024-12-02 00:00:00'),
(1084, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-12-09', 'Groceries', 'Groceries from Tesco', '2024-12-09 00:00:00'),
(1085, 'hsuyeywel@gmail.com', 80.00, 'GBP', '2024-12-10', 'Fashion', 'Skincare from Sephora', '2024-12-10 00:00:00'),
(1086, 'hsuyeywel@gmail.com', 13.49, 'GBP', '2024-12-10', 'Food', 'Meal out', '2024-12-10 00:00:00'),
(1087, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2024-12-15', 'Miscellaneous', 'Household essentials', '2024-12-15 00:00:00'),
(1088, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-12-16', 'Groceries', 'Groceries from Lidl', '2024-12-16 00:00:00'),
(1089, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-12-16', 'Fashion', 'Fashion purchase from Zara', '2024-12-16 00:00:00'),
(1090, 'hsuyeywel@gmail.com', 6.14, 'GBP', '2024-12-16', 'Food', 'Meal out', '2024-12-16 00:00:00'),
(1091, 'hsuyeywel@gmail.com', 23.37, 'GBP', '2024-12-19', 'Food', 'Meal out', '2024-12-19 00:00:00'),
(1092, 'hsuyeywel@gmail.com', 22.97, 'GBP', '2024-12-20', 'Food', 'Meal out', '2024-12-20 00:00:00'),
(1093, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-12-23', 'Groceries', 'Groceries from Chinese shop', '2024-12-23 00:00:00'),
(1094, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2024-12-30', 'Groceries', 'Groceries from Lidl', '2024-12-30 00:00:00'),
(1095, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2024-12-30', 'Fashion', 'Fashion purchase from H&M', '2024-12-30 00:00:00'),
(1096, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2025-01-01', 'Leisures', 'ChatGPT subscription', '2025-01-01 00:00:00'),
(1097, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2025-01-01', 'Accommodation', 'Accommodation', '2025-01-01 00:00:00'),
(1098, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-01-01', 'Leisures', 'Spotify subscription', '2025-01-01 00:00:00'),
(1099, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2025-01-01', 'Leisures', 'Laundry service', '2025-01-01 00:00:00'),
(1100, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-01-01', 'Accommodation', 'University fee', '2025-01-01 00:00:00'),
(1101, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2025-01-01', 'Leisures', 'Monthly bus pass', '2025-01-01 00:00:00'),
(1102, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-01-01', 'Leisures', 'Mobile bill', '2025-01-01 00:00:00'),
(1103, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-01-06', 'Groceries', 'Groceries from Lidl', '2025-01-06 00:00:00'),
(1104, 'hsuyeywel@gmail.com', 9.03, 'GBP', '2025-01-06', 'Food', 'Meal out', '2025-01-06 00:00:00'),
(1105, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-01-13', 'Groceries', 'Groceries from Tesco', '2025-01-13 00:00:00'),
(1106, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-01-13', 'Fashion', 'Fashion purchase from Zara', '2025-01-13 00:00:00'),
(1107, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2025-01-15', 'Miscellaneous', 'Household essentials', '2025-01-15 00:00:00'),
(1108, 'hsuyeywel@gmail.com', 13.81, 'GBP', '2025-01-18', 'Food', 'Meal out', '2025-01-18 00:00:00'),
(1109, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-01-20', 'Groceries', 'Groceries from Lidl', '2025-01-20 00:00:00'),
(1110, 'hsuyeywel@gmail.com', 6.94, 'GBP', '2025-01-22', 'Food', 'Meal out', '2025-01-22 00:00:00'),
(1111, 'hsuyeywel@gmail.com', 18.18, 'GBP', '2025-01-25', 'Food', 'Meal out', '2025-01-25 00:00:00'),
(1112, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-01-27', 'Fashion', 'Fashion purchase from H&M', '2025-01-27 00:00:00'),
(1113, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-01-27', 'Groceries', 'Groceries from Chinese shop', '2025-01-27 00:00:00'),
(1114, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-02-01', 'Leisures', 'Spotify subscription', '2025-02-01 00:00:00'),
(1115, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2025-02-01', 'Leisures', 'ChatGPT subscription', '2025-02-01 00:00:00'),
(1116, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-02-01', 'Leisures', 'Mobile bill', '2025-02-01 00:00:00'),
(1117, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2025-02-01', 'Leisures', 'Laundry service', '2025-02-01 00:00:00'),
(1118, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-02-01', 'Accommodation', 'University fee', '2025-02-01 00:00:00'),
(1119, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2025-02-01', 'Accommodation', 'Accommodation', '2025-02-01 00:00:00'),
(1120, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2025-02-01', 'Leisures', 'Monthly bus pass', '2025-02-01 00:00:00'),
(1121, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-02-03', 'Groceries', 'Groceries from Tesco', '2025-02-03 00:00:00'),
(1122, 'hsuyeywel@gmail.com', 5.79, 'GBP', '2025-02-08', 'Food', 'Meal out', '2025-02-08 00:00:00'),
(1123, 'hsuyeywel@gmail.com', 20.43, 'GBP', '2025-02-09', 'Food', 'Meal out', '2025-02-09 00:00:00'),
(1124, 'hsuyeywel@gmail.com', 13.62, 'GBP', '2025-02-10', 'Food', 'Meal out', '2025-02-10 00:00:00'),
(1125, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-02-10', 'Groceries', 'Groceries from Lidl', '2025-02-10 00:00:00'),
(1126, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-02-10', 'Fashion', 'Fashion purchase from Zara', '2025-02-10 00:00:00'),
(1127, 'hsuyeywel@gmail.com', 80.00, 'GBP', '2025-02-10', 'Fashion', 'Skincare from Sephora', '2025-02-10 00:00:00'),
(1128, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2025-02-15', 'Miscellaneous', 'Household essentials', '2025-02-15 00:00:00'),
(1129, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-02-17', 'Groceries', 'Groceries from Tesco', '2025-02-17 00:00:00'),
(1130, 'hsuyeywel@gmail.com', 6.89, 'GBP', '2025-02-22', 'Food', 'Meal out', '2025-02-22 00:00:00'),
(1131, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-02-24', 'Fashion', 'Fashion purchase from H&M', '2025-02-24 00:00:00'),
(1132, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-02-24', 'Groceries', 'Groceries from Tesco', '2025-02-24 00:00:00'),
(1133, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-03-01', 'Leisures', 'Spotify subscription', '2025-03-01 00:00:00'),
(1134, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2025-03-01', 'Leisures', 'ChatGPT subscription', '2025-03-01 00:00:00'),
(1135, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-03-01', 'Leisures', 'Mobile bill', '2025-03-01 00:00:00'),
(1136, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2025-03-01', 'Leisures', 'Laundry service', '2025-03-01 00:00:00'),
(1137, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2025-03-01', 'Leisures', 'Monthly bus pass', '2025-03-01 00:00:00'),
(1138, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2025-03-01', 'Accommodation', 'Accommodation', '2025-03-01 00:00:00'),
(1139, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-03-01', 'Accommodation', 'University fee', '2025-03-01 00:00:00'),
(1140, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-03-03', 'Groceries', 'Groceries from Chinese shop', '2025-03-03 00:00:00'),
(1141, 'hsuyeywel@gmail.com', 15.82, 'GBP', '2025-03-05', 'Food', 'Meal out', '2025-03-05 00:00:00'),
(1142, 'hsuyeywel@gmail.com', 11.75, 'GBP', '2025-03-09', 'Food', 'Meal out', '2025-03-09 00:00:00'),
(1143, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-03-10', 'Groceries', 'Groceries from Lidl', '2025-03-10 00:00:00'),
(1144, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-03-10', 'Fashion', 'Fashion purchase from H&M', '2025-03-10 00:00:00'),
(1145, 'hsuyeywel@gmail.com', 11.92, 'GBP', '2025-03-12', 'Food', 'Meal out', '2025-03-12 00:00:00'),
(1146, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2025-03-15', 'Miscellaneous', 'Household essentials', '2025-03-15 00:00:00'),
(1147, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-03-17', 'Groceries', 'Groceries from Tesco', '2025-03-17 00:00:00'),
(1148, 'hsuyeywel@gmail.com', 12.17, 'GBP', '2025-03-20', 'Food', 'Meal out', '2025-03-20 00:00:00'),
(1149, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-03-24', 'Fashion', 'Fashion purchase from H&M', '2025-03-24 00:00:00'),
(1150, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-03-24', 'Groceries', 'Groceries from Lidl', '2025-03-24 00:00:00'),
(1151, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-03-31', 'Groceries', 'Groceries from Tesco', '2025-03-30 23:00:00'),
(1152, 'hsuyeywel@gmail.com', 630.00, 'GBP', '2025-04-01', 'Accommodation', 'Accommodation', '2025-03-31 23:00:00'),
(1153, 'hsuyeywel@gmail.com', 85.50, 'GBP', '2025-04-01', 'Leisures', 'Monthly bus pass', '2025-03-31 23:00:00'),
(1154, 'hsuyeywel@gmail.com', 14.00, 'GBP', '2025-04-01', 'Leisures', 'Laundry service', '2025-03-31 23:00:00'),
(1155, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-04-01', 'Leisures', 'Mobile bill', '2025-03-31 23:00:00'),
(1156, 'hsuyeywel@gmail.com', 18.00, 'GBP', '2025-04-01', 'Leisures', 'ChatGPT subscription', '2025-03-31 23:00:00'),
(1157, 'hsuyeywel@gmail.com', 5.00, 'GBP', '2025-04-01', 'Leisures', 'Spotify subscription', '2025-03-31 23:00:00'),
(1158, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-04-01', 'Accommodation', 'University fee', '2025-03-31 23:00:00'),
(1159, 'hsuyeywel@gmail.com', 6.49, 'GBP', '2025-04-06', 'Food', 'Meal out', '2025-04-05 23:00:00'),
(1160, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-04-07', 'Groceries', 'Groceries from Lidl', '2025-04-06 23:00:00'),
(1161, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-04-07', 'Fashion', 'Fashion purchase from H&M', '2025-04-06 23:00:00'),
(1162, 'hsuyeywel@gmail.com', 80.00, 'GBP', '2025-04-10', 'Fashion', 'Skincare from Sephora', '2025-04-09 23:00:00'),
(1163, 'hsuyeywel@gmail.com', 24.65, 'GBP', '2025-04-10', 'Food', 'Meal out', '2025-04-09 23:00:00'),
(1164, 'hsuyeywel@gmail.com', 23.99, 'GBP', '2025-04-13', 'Food', 'Meal out', '2025-04-12 23:00:00'),
(1165, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-04-14', 'Groceries', 'Groceries from Tesco', '2025-04-13 23:00:00'),
(1166, 'hsuyeywel@gmail.com', 40.00, 'GBP', '2025-04-15', 'Miscellaneous', 'Household essentials', '2025-04-14 23:00:00'),
(1167, 'hsuyeywel@gmail.com', 30.00, 'GBP', '2025-04-21', 'Groceries', 'Groceries from Lidl', '2025-04-20 23:00:00'),
(1168, 'hsuyeywel@gmail.com', 20.00, 'GBP', '2025-04-21', 'Fashion', 'Fashion purchase from H&M', '2025-04-20 23:00:00'),
(1169, 'hsuyeywel@gmail.com', 20.60, 'GBP', '2025-04-25', 'Food', 'Meal out', '2025-04-24 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `user_email`, `amount`, `currency`, `date`, `note`, `created_at`) VALUES
(1, 'hsuyeywel@gmail.com', 300.00, 'GBP', '2025-04-02', 'refund', '2025-04-23 22:28:35'),
(2, 'hsuyeywel@gmail.com', 455.00, 'GBP', '2025-04-25', 'first week salary', '2025-04-23 22:29:21'),
(3, 'hsuyeywel@gmail.com', 200.00, 'GBP', '2024-04-07', 'salary', '2025-04-23 22:38:57'),
(45, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-09-01', 'Family support - School fee', '2024-08-31 23:00:00'),
(46, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2024-09-01', 'Family support - Rent', '2024-08-31 23:00:00'),
(47, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-09-06', 'Bi-weekly part-time job', '2024-09-05 23:00:00'),
(48, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-09-20', 'Bi-weekly part-time job', '2024-09-19 23:00:00'),
(49, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2024-09-30', 'Freelance project income', '2024-09-29 23:00:00'),
(50, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-10-01', 'Family support - School fee', '2024-09-30 23:00:00'),
(51, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2024-10-01', 'Family support - Rent', '2024-09-30 23:00:00'),
(52, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-10-04', 'Bi-weekly part-time job', '2024-10-03 23:00:00'),
(53, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-10-18', 'Bi-weekly part-time job', '2024-10-17 23:00:00'),
(54, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2024-10-27', 'Freelance project income', '2024-10-26 23:00:00'),
(55, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-11-01', 'Bi-weekly part-time job', '2024-11-01 00:00:00'),
(56, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-11-01', 'Family support - School fee', '2024-11-01 00:00:00'),
(57, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2024-11-01', 'Family support - Rent', '2024-11-01 00:00:00'),
(58, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-11-15', 'Bi-weekly part-time job', '2024-11-15 00:00:00'),
(59, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2024-11-28', 'Freelance project income', '2024-11-28 00:00:00'),
(60, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-11-29', 'Bi-weekly part-time job', '2024-11-29 00:00:00'),
(61, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2024-12-01', 'Family support - School fee', '2024-12-01 00:00:00'),
(62, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2024-12-01', 'Family support - Rent', '2024-12-01 00:00:00'),
(63, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-12-13', 'Bi-weekly part-time job', '2024-12-13 00:00:00'),
(64, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2024-12-27', 'Bi-weekly part-time job', '2024-12-27 00:00:00'),
(65, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2024-12-31', 'Freelance project income', '2024-12-31 00:00:00'),
(66, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-01-01', 'Family support - School fee', '2025-01-01 00:00:00'),
(67, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2025-01-01', 'Family support - Rent', '2025-01-01 00:00:00'),
(68, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-01-10', 'Bi-weekly part-time job', '2025-01-10 00:00:00'),
(69, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-01-24', 'Bi-weekly part-time job', '2025-01-24 00:00:00'),
(70, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2025-01-31', 'Freelance project income', '2025-01-31 00:00:00'),
(71, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-02-01', 'Family support - School fee', '2025-02-01 00:00:00'),
(72, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2025-02-01', 'Family support - Rent', '2025-02-01 00:00:00'),
(73, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-02-07', 'Bi-weekly part-time job', '2025-02-07 00:00:00'),
(74, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-02-21', 'Bi-weekly part-time job', '2025-02-21 00:00:00'),
(75, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2025-02-27', 'Freelance project income', '2025-02-27 00:00:00'),
(76, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-03-01', 'Family support - School fee', '2025-03-01 00:00:00'),
(77, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2025-03-01', 'Family support - Rent', '2025-03-01 00:00:00'),
(78, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-03-07', 'Bi-weekly part-time job', '2025-03-07 00:00:00'),
(79, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-03-21', 'Bi-weekly part-time job', '2025-03-21 00:00:00'),
(80, 'hsuyeywel@gmail.com', 400.00, 'GBP', '2025-03-27', 'Freelance project income', '2025-03-27 00:00:00'),
(81, 'hsuyeywel@gmail.com', 1533.00, 'GBP', '2025-04-01', 'Family support - School fee', '2025-03-31 23:00:00'),
(82, 'hsuyeywel@gmail.com', 700.00, 'GBP', '2025-04-01', 'Family support - Rent', '2025-03-31 23:00:00'),
(83, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-04-04', 'Bi-weekly part-time job', '2025-04-03 23:00:00'),
(84, 'hsuyeywel@gmail.com', 440.00, 'GBP', '2025-04-18', 'Bi-weekly part-time job', '2025-04-17 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `dob`, `occupation`, `university`, `company`, `created_at`) VALUES
(14, 'Hsu Ye', '7386808509', 'hsuyeywel@gmail.com', '$2y$10$AwkgOvtQ/USOS25jDhVOvu9gm5m7H.0ls8crr.KJN6RkmLLqVQlh.', '2004-09-12', 'Full Time Student', 'UWE', '', '2025-04-15 22:37:13'),
(16, 'Thuta Sann', '97572487678', 'thutasann2002@gmail.com', '$2y$10$3dZlhNQwwhXpe/IpV9yar..9B2U2V5nwLYD404yQtW.UJreBzb3GS', '2024-02-28', 'Full Time Employed', '', 'AI', '2025-04-15 22:38:19'),
(17, 'Thuta', '0967832433', 'thuta@gmail.com', '$2y$10$.gIlSXDtfNAem0bfVxxxPu9bT0e99LrX1IOm8w8O3EZjIxux9sodm', '1999-12-27', 'Full Time Student', 'uwe', '', '2025-04-15 22:42:23'),
(18, 'Daisy', '096782345332', 'daisy@gmail.com', '$2y$10$DQq9j9Jy6sBa3AvFX7s.1OEOTaxz1Q/Oth1RBcVKfm8XDatOAmvEW', '2025-04-01', 'Full Time Student', 'uwe', '', '2025-04-15 22:49:40'),
(20, 'Daisy', '096782345332', 'daisy123@gmail.com', '$2y$10$nRi/uCtjhF8LAeb8laMsL.A2EXB3Opa0gRHtyvn4EYf/a4VcuXEYK', '2025-04-01', 'Full Time Student', 'uwe', '', '2025-04-15 22:51:11'),
(21, 'Lemon', '0956789234', 'lemon@gmail.com', '$2y$10$YVJa6ZQfD4rkO9UV3HkafOQJOl5rRzVsr5TXx4GCVxNilDYNV2C6C', '2022-02-01', 'Full Time Employed', '', 'UWE', '2025-04-15 22:53:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget_estimations`
--
ALTER TABLE `budget_estimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget_estimations`
--
ALTER TABLE `budget_estimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1170;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
