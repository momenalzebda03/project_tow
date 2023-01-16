-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 09:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_image`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_email`
--

CREATE TABLE `table_email` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `masseg` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `table_email`
--

INSERT INTO `table_email` (`id`, `name`, `email`, `masseg`) VALUES
(1, 'mouhmed', 'mouhmed@.com', ''),
(2, 'alaa', 'alaa@.com', ''),
(3, 'momen', 'momen@.com', 'كيف حالك يا مؤمت بهات');

-- --------------------------------------------------------

--
-- Table structure for table `table_iamge`
--

CREATE TABLE `table_iamge` (
  `id` int(11) NOT NULL,
  `image1` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `iamge2` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `table_iamge`
--

INSERT INTO `table_iamge` (`id`, `image1`, `iamge2`) VALUES
(1, 'shuffle-01.jpg', 'shuffle-02.jpg'),
(2, 'shuffle-03.jpg', 'shuffle-04.jpg'),
(3, 'shuffle-05.jpg', 'shuffle-06.jpg'),
(4, 'shuffle-02.jpg', ''),
(5, 'shuffle-08.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_price`
--

CREATE TABLE `table_price` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `table_price`
--

INSERT INTO `table_price` (`id`, `price`) VALUES
(1, 17),
(2, 27),
(3, 80),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `table_vido`
--

CREATE TABLE `table_vido` (
  `id` int(11) NOT NULL,
  `vido` varchar(200) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `table_vido`
--

INSERT INTO `table_vido` (`id`, `vido`) VALUES
(1, 'Pigeon Toady How You Like Me Now.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_email`
--
ALTER TABLE `table_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_iamge`
--
ALTER TABLE `table_iamge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_price`
--
ALTER TABLE `table_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_vido`
--
ALTER TABLE `table_vido`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_email`
--
ALTER TABLE `table_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_iamge`
--
ALTER TABLE `table_iamge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_price`
--
ALTER TABLE `table_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_vido`
--
ALTER TABLE `table_vido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
