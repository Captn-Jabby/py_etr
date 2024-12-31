-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 12:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_etr`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `phone`, `address`, `status`, `registration_date`) VALUES
(1, 'Jerome Millares', 'jmillares0945@yahoo.com', '09457554023', 'Caramutan, Villasis, Pangasinan', 'Inactive', '2024-12-23 21:58:54'),
(2, 'Temberlyn Jhoy', 'tem@yahoo.com', '09667265875', 'Lingayen, Pangasinan', 'Active', '2024-12-23 21:59:41'),
(3, 'Demi Dacpano', 'demi@gmail.com', '09556800080', 'Carosucan Sur, Asingan, Pangasinan', 'Active', '2024-12-23 22:00:10'),
(4, 'Angelita Sigua', 'angelitasigua@yahoo.com', '09165106550', 'Lipay, Villasis, Pangasinan', 'Inactive', '2024-12-23 22:00:46'),
(5, 'Lara Belle', 'larabell@gmail.com', '09556800150', 'San Nicolas, Pangasinan', 'Inactive', '2024-12-23 22:01:41'),
(6, 'Nicole Dalisay', 'nicoledalisaymaranan@gmail.com', '09776095312', 'Bayaoas, Urdaneta, Pangasinan\r\n', 'Active', '2024-12-23 22:02:22'),
(7, 'Khia Sim', 'simikha@gmail.com', '09457554099', 'Pampanga City, Philippines', 'Inactive', '2024-12-23 22:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `status` enum('Available','Out of Stock','Low Stock') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `category`, `status`) VALUES
(5, 'Jerome Millares', 'SARAP', 222.00, 225, 'Cute', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('regular','admin') NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `phone_number`, `address`) VALUES
(1, 'Jerome', 'Millares', 'jmillares0945@yahoo.com', 'JPM_000', 'admin', '09457554023', 'Caramutan, Villasis, Pangasinan'),
(2, 'Sana', 'Pumasa', 'sanapumasa00@yahoo.com', 'Sana_000', 'regular', '09667265875', 'Secret Village');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
