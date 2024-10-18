-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 06:52 PM
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
-- Database: `ozone`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `message` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `message`) VALUES
(1, 'Ahinsa nethmini', '0711234566', 'hellow'),
(4, 'Sagee Kodippili', '0717041756', 'ozone');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `result_2018` varchar(4) NOT NULL,
  `result_2019` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `name`, `subject`, `result_2018`, `result_2019`) VALUES
(1, 'Nilantha Jayasooriya', 'Physics', '40%', '60%'),
(2, 'Ruwan Darshana', 'Com.Maths', '45%', '55%'),
(3, 'Thamiraherath Jaysinghe', 'Chemistry', '35%', '47%'),
(4, 'Dhananjaya Ariyadasa', 'Biology', '28%', '42%');

-- --------------------------------------------------------

--
-- Table structure for table `teachert`
--

CREATE TABLE `teachert` (
  `tid` int(4) NOT NULL,
  `name` varchar(150) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `result_2018` varchar(5) NOT NULL,
  `result_2019` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachert`
--

INSERT INTO `teachert` (`tid`, `name`, `subject`, `result_2018`, `result_2019`) VALUES
(1, 'Manjula Sanjeewa', 'ICT', '40%', '47.5%'),
(2, 'Mahesh Hewanayaka', 'SFT', '28.5%', '60%'),
(3, 'Sameera Karunarathne', 'ET', '35%', '47.5%');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `school` varchar(200) NOT NULL,
  `year` varchar(5) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `school`, `year`, `contact`, `username`, `password`, `reg_date`) VALUES
(10, 'KODIPPILI SAGARIKA SEWWANDI', '480/1, 6th lane, Suhada Mawatha, Weliwita road, Kaduwela.', 'EMMV', '2018', '0717041726', 'admin', '123', '2024-10-18 04:13:48'),
(11, 'KODIPPILI SAGARIKA SEWWANDI', '480/1, 6th lane, Suhada Mawatha, Weliwita road, Kaduwela.', 'hgfi', '2018', '0717041726', 'Shaggy', '12345', '2024-10-18 04:48:27'),
(12, 'KODIPPILI SAGARIKA SEWWANDI', '480/1, 6th lane, Suhada Mawatha, Weliwita road, Kaduwela.', 'hgfi', '2018', '0717041726', 'admins', '1234', '2024-10-18 07:53:20'),
(13, 'KODIPPILI SAGARIKA SEWWANDI', '480/1, 6th lane, Suhada Mawatha, Weliwita road, Kaduwela.', 'hgfi', '2018', '0717041726', 'user', '12345', '2024-10-18 08:27:05'),
(14, 'KODIPPILI SAGARIKA SEWWANDI', '480/1, 6th lane, Suhada Mawatha, Weliwita road, Kaduwela.', 'hgfi', '2018', '0717041726', 'users', '123456', '2024-10-18 08:36:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `teachert`
--
ALTER TABLE `teachert`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachert`
--
ALTER TABLE `teachert`
  MODIFY `tid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
