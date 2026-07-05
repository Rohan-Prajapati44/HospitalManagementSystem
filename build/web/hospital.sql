-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2026 at 07:09 AM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `doctor_id`, `appointment_date`, `status`) VALUES
(2, 13, 3, '2026-04-05', 'Done'),
(3, 12, 3, '2026-04-24', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `name`, `amount`, `description`, `created_at`) VALUES
(1, 'Vishnu', 500, 'online', '2026-04-09 12:04:49'),
(2, 'Rubi Yadav', 1000, 'online', '2026-04-09 12:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `specialization`, `mobile`, `email`, `created_at`) VALUES
(2, 'rohan prajapati', 'Cardiology', '01234567890', 'ram@gmail.com', '2026-04-08 11:54:21'),
(3, 'Dr. Ramesh Pandey', 'MBBS', '6787986787', 'ramesh@gmail.com', '2026-04-09 11:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `gender`, `mobile`, `disease`, `address`) VALUES
(2, 'Anuj', 20, 'Male', '3456787656', 'maleriya , fiver', 'Gazipur'),
(3, 'ram', 22, 'Male', '', 'maleriya', 'bhadohi'),
(4, 'sonam', 23, 'Female', '3456787656', 'maleriya', 'bhadohi'),
(5, 'Shreya Pandey', 18, 'Female', '7687654567', 'Fibur', 'varanasi'),
(6, 'Rubi', 19, 'Female', '01234567890', '', 'vns\r\ntrdyr'),
(7, 'sita', 12, 'Female', '06307061501', 'hareniya', 'sonbarsa, chaubeypur , varanasi\r\ntrdyr'),
(8, 'sita', 12, 'Female', '06307061501', 'hareniya', 'sonbarsa, chaubeypur , varanasi\r\ntrdyr'),
(9, 'ramesh', 222, 'Male', '06307061501', 'hareniya', 'sonbarsa, chaubeypur , varanasi\r\ntrdyr'),
(10, 'sani', 32, 'Male', '01234567890', '', 'vns\r\ntrdyr'),
(11, 'deepak', 12, 'Male', '01234567890', '', 'vns\r\ntrdyr'),
(12, 'rubi yadav', 19, 'Female', '7458683534', 'Fiber', 'Varanasi'),
(13, 'Vishnu', 12, 'Male', '2345657690', 'headEich', 'Varanasi'),
(14, 'vishnu prajapati', 15, 'Male', '2345654576', 'headEich', 'Varanasi'),
(15, 'vishnu prajapati', 15, 'Male', '2345654576', 'headEich', 'Varanasi'),
(16, 'sunil yadav', 44, 'Male', '8676875676', 'headEich', 'jaunpur'),
(18, 'rr', 323, 'Male', '124567890', 'maleriya , fiver', 'Gazipur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
