-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 12:45 PM
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
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `hire_date` date NOT NULL,
  `department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `user_id`, `job_title`, `salary`, `hire_date`, `department`) VALUES
(1, 2, 'Software Engineer', 5000.00, '2024-01-01', 'IT'),
(2, 1, 'Project Manager', 7000.00, '2023-05-15', 'Management'),
(3, 3, 'Data Analyst', 4500.00, '2024-03-20', 'Marketing'),
(4, 4, 'HR Specialist', 5500.00, '2023-08-10', 'HR'),
(5, 5, 'Marketing Engineer', 6000.00, '2024-02-25', 'Marketing'),
(6, 6, 'DevOps Engineer', 5500.00, '2024-04-01', 'IT'),
(7, 7, 'Accountant', 4000.00, '2023-11-30', 'Finance'),
(8, 8, 'Customer Support', 3500.00, '2023-12-15', 'Support'),
(9, 9, 'UI/UX Designer', 4800.00, '2024-01-10', 'Design'),
(10, 10, 'Network Engineer', 5300.00, '2024-01-25', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE orders(
  order_id int NOT NULL,
  user_id int NOT NULL,
  employee_id int NOT NULL,
  order_date date NOT NULL,
  order_total decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `employee_id`, `order_date`, `order_total`) VALUES
(1, 1, 1, '2024-01-15', 250.00),
(2, 2, 2, '2024-01-16', 450.50),
(3, 3, 3, '2024-01-17', 120.75),
(4, 1, 2, '2024-01-18', 300.00),
(5, 4, 1, '2024-01-19', 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Ahmed Ali', 'ahmed.ali@gmail.com'),
(2, 'Mhmed Hassan', 'mohamed.hassan@example.com'),
(3, 'Updated', 'updated.email@example.com'),
(4, 'Fatima Zayed', 'fatima.zayed@example.com'),
(5, 'Aisha Ahmed', 'aisha.ahmed@example.com'),
(6, 'Youssef Ibrahim', 'youssef.ibrahim@example.com'),
(7, 'Layla Sami', 'layla.sami@example.com'),
(8, 'Omar Adel', 'omar.adel@example.com'),
(9, 'Mariam Hani', 'mariam.hani@example.com'),
(10, 'Hussein Mustafa', 'hussein.mustafa@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
