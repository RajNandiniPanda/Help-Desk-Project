-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 05:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itdesksupport`
--

-- --------------------------------------------------------

--
-- Table structure for table `complain_description_details`
--

CREATE TABLE `complain_description_details` (
  `complain_desc_id` int(11) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `complain_type` varchar(200) NOT NULL,
  `complain_description` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_description_details`
--

INSERT INTO `complain_description_details` (`complain_desc_id`, `complain_id`, `complain_type`, `complain_description`, `status`) VALUES
(1, 5, '', 'wires not working', 'Active'),
(2, 2, '', 'not working', 'Active'),
(3, 4, '', 'connection Problem', 'Active'),
(5, 3, '', 'function Problem', 'Active'),
(8, 6, '', '12345', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `complain_type_details`
--

CREATE TABLE `complain_type_details` (
  `complain_id` int(11) NOT NULL,
  `complain_type` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complain_type_details`
--

INSERT INTO `complain_type_details` (`complain_id`, `complain_type`, `status`) VALUES
(2, 'cable', 'Active'),
(3, 'HR', 'Active'),
(4, 'IT', 'Active'),
(5, 'Admin', 'Active'),
(6, 'Executive', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department_details`
--

CREATE TABLE `department_details` (
  `dept_id` int(11) NOT NULL,
  `department_name` text NOT NULL,
  `status` text NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_details`
--

INSERT INTO `department_details` (`dept_id`, `department_name`, `status`) VALUES
(5, 'Admin', 'active'),
(9, 'IT', 'active'),
(10, 'HR', 'active'),
(11, 'Cable', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `it_team_details`
--

CREATE TABLE `it_team_details` (
  `it_team_id` int(11) NOT NULL,
  `it_employee_name` varchar(200) NOT NULL,
  `it_user_name` varchar(200) NOT NULL,
  `it_password` varchar(200) NOT NULL,
  `it_email_id` varchar(200) NOT NULL,
  `it_mobile_no` int(11) NOT NULL,
  `it_create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `it_status` varchar(200) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_team_details`
--

INSERT INTO `it_team_details` (`it_team_id`, `it_employee_name`, `it_user_name`, `it_password`, `it_email_id`, `it_mobile_no`, `it_create_time`, `it_status`) VALUES
(1, 'Raj Nandini ', 'rajj__', 'bshbvjsk', 'raj@gmail.com', 65893223, '2024-08-27 14:26:20', ''),
(2, 'johny', 'john_', 'hvgcdfy', 'john@gmail.com', 7854342, '2024-08-27 14:42:22', ''),
(3, 'john', 'john_', 'yguuyghu', 'john@gmail.com', 7854342, '2024-08-27 14:47:18', 'active'),
(4, 'Erica', 'erica_', 'erica1234', 'erica@gmail.com', 89745289, '2024-09-06 10:51:19', 'active'),
(5, 'Smith', 'smith_', '987654321', 'smith@gmail.com', 87956423, '2024-09-06 10:52:50', 'active'),
(6, 'Jerry', 'jerry_', 'jerry678', 'jerry@gmail.com', 896753423, '2024-09-06 10:54:12', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `uname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_details`
--

CREATE TABLE `member_details` (
  `member_id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `aname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cno` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_details`
--

INSERT INTO `member_details` (`member_id`, `uname`, `aname`, `email`, `cno`, `password`) VALUES
(2, 'rajnandini_', 'Raj Nandini', 'rajnandinipanda21@gmail.com', '1234567890', 'raj@05'),
(11, '_joe', 'joee', 'joe@gmail.com', '8976654456', 'poiu');

-- --------------------------------------------------------

--
-- Table structure for table `new_complain_details`
--

CREATE TABLE `new_complain_details` (
  `new_complain_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `complain_desc_id` int(11) NOT NULL,
  `it_team_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `complain_date` date NOT NULL DEFAULT current_timestamp(),
  `complain_time` time NOT NULL DEFAULT current_timestamp(),
  `resolve_date` date NOT NULL DEFAULT current_timestamp(),
  `resolve_time` time NOT NULL DEFAULT current_timestamp(),
  `complain_status` varchar(200) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_complain_details`
--

INSERT INTO `new_complain_details` (`new_complain_id`, `user_id`, `dept_id`, `complain_id`, `complain_desc_id`, `it_team_id`, `email_id`, `complain_date`, `complain_time`, `resolve_date`, `resolve_time`, `complain_status`) VALUES
(22, 1, 9, 3, 5, 3, 0, '2024-09-02', '15:49:24', '2024-09-02', '15:49:24', 'resolve'),
(26, 8, 10, 6, 8, 5, 0, '2024-09-06', '11:11:54', '2024-09-06', '11:11:54', 'pending'),
(28, 9, 5, 2, 2, 4, 0, '2024-09-20', '21:46:45', '2024-09-20', '21:46:45', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `employee_name` varchar(200) NOT NULL,
  `employee_ip` varchar(200) NOT NULL,
  `system_name` varchar(200) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `dept_id`, `employee_name`, `employee_ip`, `system_name`, `mobile_no`, `email_id`, `create_time`, `status`) VALUES
(1, 9, 'Raj Nandini', '23.785.98', 'Ascer', 8795645, 'rajnandini@gmail.com', '0000-00-00 00:00:00', 'Active'),
(8, 10, 'joeee', '783.4654.90', 'vivo', 457901234, 'joe@gmail.com', '0000-00-00 00:00:00', 'Active'),
(9, 5, 'Tom Harry', '346.97.9', 'HP', 2147483647, 'tom@gmail.com', '2024-09-06 10:45:37', 'Active'),
(10, 11, 'Harry', '412.85.8', 'macbook', 78954239, 'harry@gmail.com', '2024-09-06 10:46:32', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain_description_details`
--
ALTER TABLE `complain_description_details`
  ADD PRIMARY KEY (`complain_desc_id`),
  ADD UNIQUE KEY `complain_id` (`complain_id`);

--
-- Indexes for table `complain_type_details`
--
ALTER TABLE `complain_type_details`
  ADD PRIMARY KEY (`complain_id`),
  ADD UNIQUE KEY `complain_type` (`complain_type`);

--
-- Indexes for table `department_details`
--
ALTER TABLE `department_details`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `it_team_details`
--
ALTER TABLE `it_team_details`
  ADD PRIMARY KEY (`it_team_id`);

--
-- Indexes for table `member_details`
--
ALTER TABLE `member_details`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `new_complain_details`
--
ALTER TABLE `new_complain_details`
  ADD PRIMARY KEY (`new_complain_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `it_team_id` (`it_team_id`),
  ADD UNIQUE KEY `dept_id` (`dept_id`),
  ADD UNIQUE KEY `complain_id` (`complain_id`),
  ADD KEY `new_complain_details_ibfk_3` (`complain_desc_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain_description_details`
--
ALTER TABLE `complain_description_details`
  MODIFY `complain_desc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complain_type_details`
--
ALTER TABLE `complain_type_details`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department_details`
--
ALTER TABLE `department_details`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `it_team_details`
--
ALTER TABLE `it_team_details`
  MODIFY `it_team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member_details`
--
ALTER TABLE `member_details`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `new_complain_details`
--
ALTER TABLE `new_complain_details`
  MODIFY `new_complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complain_description_details`
--
ALTER TABLE `complain_description_details`
  ADD CONSTRAINT `complain_description_details_ibfk_1` FOREIGN KEY (`complain_id`) REFERENCES `complain_type_details` (`complain_id`) ON UPDATE CASCADE;

--
-- Constraints for table `new_complain_details`
--
ALTER TABLE `new_complain_details`
  ADD CONSTRAINT `new_complain_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `new_complain_details_ibfk_2` FOREIGN KEY (`it_team_id`) REFERENCES `it_team_details` (`it_team_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `new_complain_details_ibfk_3` FOREIGN KEY (`complain_desc_id`) REFERENCES `complain_description_details` (`complain_desc_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `new_complain_details_ibfk_4` FOREIGN KEY (`dept_id`) REFERENCES `department_details` (`dept_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `new_complain_details_ibfk_5` FOREIGN KEY (`complain_id`) REFERENCES `complain_description_details` (`complain_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department_details` (`dept_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
