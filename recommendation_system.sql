-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2021 at 05:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recommendation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(12, 'Arnon'),
(13, 'Rahim'),
(14, 'Mary'),
(15, 'Sherlock');

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

CREATE TABLE `user_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `user_id`, `product_name`, `product_rating`) VALUES
(1, 12, 'Loreal Paris Men Facewash', '4.0'),
(2, 13, 'X box Controller 360', '5.0'),
(3, 12, 'Kemei km 800 Trimmer', '4.0'),
(4, 12, 'Game Trigger', '3.0'),
(5, 13, 'Cosrx facewash ', '2.0'),
(6, 13, 'Samsung J7 mobile cover', '4.0'),
(7, 14, 'Fair & Lovely Cream', '1.0'),
(8, 14, 'Appex Sneaker', '5.0'),
(9, 14, 'Dairy Milk Silk', '5.0'),
(10, 15, 'Magnifying glass', '4.0'),
(11, 15, 'Leather Coat Black', '5.0'),
(12, 15, 'Bata Boots', '2.0'),
(13, 12, 'X box Controller 360', '3.0'),
(14, 12, 'Samsung J7 mobile cover', '1.0'),
(15, 13, 'Loreal Paris Men Facewash', '5.0'),
(16, 13, 'Kemei km 800 Trimmer', '1.0'),
(17, 12, 'Dairy Milk Silk', '5.0'),
(18, 13, 'Appex Sneaker', '3.0'),
(19, 14, 'Game Trigger', '4.0'),
(20, 14, 'Cosrx facewash ', '4.0'),
(21, 15, 'Loreal Paris Men Facewash', '1.0'),
(22, 15, 'X box Controller 360', '4.0'),
(23, 15, 'Fair & Lovely Cream', '1.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_products`
--
ALTER TABLE `user_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_products`
--
ALTER TABLE `user_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
