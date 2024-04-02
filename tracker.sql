-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 04:33 PM
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
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `D_id` int(11) NOT NULL,
  `D_name` varchar(255) NOT NULL,
  `P_id` int(11) NOT NULL,
  `D_start_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`D_id`, `D_name`, `P_id`, `D_start_date`) VALUES
(1, 'Match Move', 1, '2024-03-01 19:50:27'),
(2, 'Layout', 1, '0000-00-00 00:00:00'),
(3, 'ROTO', 1, '0000-00-00 00:00:00'),
(4, 'Clean-up', 1, '0000-00-00 00:00:00'),
(5, 'Matte-paint', 1, '0000-00-00 00:00:00'),
(6, 'Motion Graphics', 1, '0000-00-00 00:00:00'),
(7, 'Match Move', 2, '0000-00-00 00:00:00'),
(8, 'ROTO', 2, '0000-00-00 00:00:00'),
(9, 'Layout', 2, '0000-00-00 00:00:00'),
(10, 'Clean-up', 2, '0000-00-00 00:00:00'),
(11, 'Motion Graphics', 2, '0000-00-00 00:00:00'),
(12, 'Render', 2, '0000-00-00 00:00:00'),
(13, 'FX', 1, '0000-00-00 00:00:00'),
(14, 'Render', 1, '0000-00-00 00:00:00'),
(15, 'Lightining', 1, '0000-00-00 00:00:00'),
(16, 'Compositing', 1, '0000-00-00 00:00:00'),
(17, 'Match Move', 3, '0000-00-00 00:00:00'),
(18, 'Layout', 3, '0000-00-00 00:00:00'),
(19, 'ROTO', 3, '0000-00-00 00:00:00'),
(20, 'Motion Graphics', 3, '0000-00-00 00:00:00'),
(21, 'Matte-paint', 3, '0000-00-00 00:00:00'),
(22, 'Lightining', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newproject`
--

CREATE TABLE `tbl_newproject` (
  `P_id` int(11) NOT NULL,
  `P_name` varchar(255) NOT NULL,
  `P_description` varchar(300) NOT NULL,
  `P_startDate` date NOT NULL,
  `P_departments` varchar(300) NOT NULL,
  `P_status` tinyint(1) NOT NULL,
  `P_created_at` datetime NOT NULL,
  `P_updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_newproject`
--

INSERT INTO `tbl_newproject` (`P_id`, `P_name`, `P_description`, `P_startDate`, `P_departments`, `P_status`, `P_created_at`, `P_updated_at`) VALUES
(1, 'Animal', 'Animal is a 2023 Hindi action, crime, and drama film about a hardened son who returns home to take revenge on those who threaten his father\'s life.', '2023-02-08', 'Match Move, Layout, ROTO, Clean-up, Matte-paint, Motion Graphics, FX, Render, Lightining, Compositing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Salaar', 'The film explores themes of friendship, determination, and brotherhood, and is set in a dystopian world with high-stakes action and political drama. Some say it\'s an unabashed celebration of Prabhas\' stardom, while others say it\'s a riveting watch for those who enjoy grand narratives.', '2023-01-11', 'Match Move, ROTO, Layout, Clean-up, Motion Graphics, Render', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'KGF', 'KGF stands for Kolar Gold Fields, a gold mine in the Kolar district of Karnataka, India, about 90 kilometers from Bengaluru.', '2020-02-04', 'Match Move, Layout, ROTO, Motion Graphics, Matte-paint, Lightining', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_login`
--

CREATE TABLE `tracker_login` (
  `login_id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracker_login`
--

INSERT INTO `tracker_login` (`login_id`, `firstName`, `lastName`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad', 'Karadiya', 'mohammad@gmail.com', '1234', 'admin', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43'),
(2, 'Asad', 'Shaikh', 'asad@gmail.com', '1234', 'admin', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43'),
(3, 'Ahmed', 'Mansuri', 'ahmed@gmail.com', '1234', 'Production', 1, '2024-02-25 06:00:43', '2024-02-25 06:00:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `tbl_newproject`
--
ALTER TABLE `tbl_newproject`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `tracker_login`
--
ALTER TABLE `tracker_login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `D_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_newproject`
--
ALTER TABLE `tbl_newproject`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tracker_login`
--
ALTER TABLE `tracker_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
