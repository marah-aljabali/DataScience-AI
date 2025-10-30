-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 02:21 PM
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
-- Database: `projectstracker1`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `Location`) VALUES
(1, 'IT', 'Cairo'),
(2, 'HR', 'Alexandria'),
(3, 'Marketing', 'Giza'),
(4, 'Sales', 'Giza'),
(5, 'Finance', 'Alexandria'),
(6, 'IT', 'Cairo'),
(7, 'HR', 'Alexandria'),
(8, 'Finance', 'Giza'),
(9, 'Marketing', 'Cairo'),
(10, 'Sales', 'Alexandria'),
(11, 'Research', 'Giza'),
(12, 'Customer Support', 'Cairo'),
(13, 'Operations', 'Alexandria'),
(14, 'Legal', 'Cairo'),
(15, 'Logistics', 'Giza'),
(16, 'Procurement', 'Cairo'),
(17, 'Administration', 'Alexandria'),
(18, 'Public Relations', 'Cairo'),
(19, 'Training', 'Giza'),
(20, 'Engineering', 'Cairo'),
(21, 'Security', 'Alexandria'),
(22, 'QA', 'Cairo'),
(23, 'Innovation', 'Giza'),
(24, 'Data Science', 'Cairo'),
(25, 'AI Lab', 'Alexandria'),
(26, 'IT', 'Cairo'),
(27, 'HR', 'Alexandria'),
(28, 'Finance', 'Giza'),
(29, 'Marketing', 'Cairo'),
(30, 'Sales', 'Alexandria'),
(31, 'Research', 'Giza'),
(32, 'Customer Support', 'Cairo'),
(33, 'Operations', 'Alexandria'),
(34, 'Legal', 'Cairo'),
(35, 'Logistics', 'Giza'),
(36, 'Procurement', 'Cairo'),
(37, 'Administration', 'Alexandria'),
(38, 'Public Relations', 'Cairo'),
(39, 'Training', 'Giza'),
(40, 'Engineering', 'Cairo'),
(41, 'Security', 'Alexandria'),
(42, 'QA', 'Cairo'),
(43, 'Innovation', 'Giza'),
(44, 'Data Science', 'Cairo'),
(45, 'AI Lab', 'Alexandria');

-- --------------------------------------------------------

--
-- Table structure for table `employeeprojects`
--

CREATE TABLE `employeeprojects` (
  `EmployeeProjectID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `HoursWorked` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `employeeprojects`
--

INSERT INTO `employeeprojects` (`EmployeeProjectID`, `EmployeeID`, `ProjectID`, `Role`, `HoursWorked`) VALUES
(1, 1, 1, 'Developer', 120),
(2, 3, 1, 'Tester', 80),
(3, 7, 1, 'System Analyst', 100),
(4, 2, 2, 'HR Specialist', 60),
(5, 8, 2, 'HR Assistant', 40),
(6, 4, 3, 'Marketing Coordinator', 100),
(7, 10, 3, 'Content Creator', 70),
(8, 1, 4, 'Ai Team Lead', 150),
(9, 5, 4, 'Senior ML Engineer', 90),
(10, 6, 4, 'ML Engineer', 70),
(14, 11, 5, 'DevOps Engineer', 120),
(15, 12, 6, 'Cloud Engineer', 150),
(16, 13, 7, 'AI Specialist', 140);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `HireDate` date NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `ManagerID` int(11) DEFAULT NULL,
  `JobTitle` varchar(100) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT 5000.00,
  `CreatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `Email`, `Phone`, `HireDate`, `DepartmentID`, `ManagerID`, `JobTitle`, `Salary`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'Baraa', 'Abu Salllout', 'baraasallout@gmail.com', '01123970285', '2021-04-08', NULL, 1, 'Technical Team Leader', 5500.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(2, 'Sara', 'Khaled', 'sara.khaled@example.com', '01098765432', '2022-12-01', 2, 2, 'HR Specialist', 5000.00, '2025-08-18 14:59:39', '2025-08-18 14:59:39'),
(3, 'Mohamed', 'Nabil', 'mohamed.nabil@example.com', '01222244455', '2021-06-15', 25, 1, 'Software Engineer', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(4, 'Laila', 'Hussein', 'laila.hussein@example.com', '01145678901', '2023-03-20', 3, 3, 'Marketing Specialist', 5000.00, '2025-08-18 14:59:39', '2025-08-18 14:59:39'),
(5, 'Omar', 'Yousef', 'omar.yousef@example.com', '01011122334', '2022-09-10', 10, 10, 'Sales Representative', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(6, 'Noor', 'Hassan', 'noor.hassan@example.com', '01033344455', '2023-04-05', 4, 4, 'Junior Sales Representative', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(7, 'Hani', 'Salem', 'hani.salem@example.com', '01266677788', '2021-11-20', 40, 1, 'System Analyst', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(8, 'Dina', 'Samir', 'dina.samir@example.com', '01199900011', '2023-06-01', 2, 2, 'HR Assistant', 5000.00, '2025-08-18 14:59:39', '2025-08-18 14:59:39'),
(9, 'Alaa', 'Hamed', 'alaa.hamed@example.com', '01088899900', '2023-02-14', 25, 1, 'Junior Developer', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(10, 'Farah', 'Yassin', 'farah.yassin@example.com', '01233344455', '2023-07-20', 9, 9, 'Content Creator', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(11, 'Kareem', 'Ali', 'kareem.ali@example.com', '01011112222', '2024-01-15', 25, 1, 'DevOps Engineer', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(12, 'Aya', 'Mohsen', 'aya.mohsen@example.com', '01022223333', '2024-02-20', 20, 20, 'Cloud Engineer', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(13, 'Hassan', 'Omar', 'hassan.omar@example.com', '01033334444', '2024-03-10', 26, 1, 'AI Specialist', 5000.00, '2025-08-18 14:59:39', '2025-08-18 15:08:46'),
(35, 'Ahmed', 'Ali', 'ahmed.ali@example.com', '01011110001', '2022-01-10', 26, 1, 'Software Engineer', 6000.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(36, 'Yousef', 'Hassan', 'yousef.hassan@example.com', '01011110002', '2022-02-15', 45, 1, 'Data Analyst', 6200.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(37, 'Omar', 'Mahmoud', 'omar.mahmoud@example.com', '01011110003', '2022-03-20', 2, 2, 'HR Specialist', 5000.00, '2025-08-18 15:03:22', '2025-08-18 15:03:22'),
(38, 'Aya', 'Tarek', 'aya.tarek@example.com', '01011110004', '2023-04-12', 27, 2, 'HR Assistant', 4800.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(39, 'Laila', 'Adel', 'laila.adel@example.com', '01011110005', '2021-06-01', 44, 3, 'Financial Analyst', 7000.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(40, 'Hani', 'Othman', 'hani.othman@example.com', '01011110006', '2021-07-10', 29, 4, 'Marketing Specialist', 5500.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(41, 'Rami', 'Nasser', 'rami.nasser@example.com', '01011110007', '2023-05-22', 30, 5, 'Sales Rep', 4900.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(42, 'Mona', 'Saad', 'mona.saad@example.com', '01011110008', '2023-07-01', 4, 4, 'Sales Rep', 5100.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(43, 'Fadi', 'Khalil', 'fadi.khalil@example.com', '01011110009', '2022-08-11', 31, 6, 'Research Analyst', 6500.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(44, 'Nour', 'Gamal', 'nour.gamal@example.com', '01011110010', '2022-09-13', 32, 7, 'Support Specialist', 4600.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(45, 'Salma', 'Ibrahim', 'salma.ibrahim@example.com', '01011110011', '2022-11-21', NULL, 8, 'Operations Officer', 5200.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(46, 'Tamer', 'Sami', 'tamer.sami@example.com', '01011110012', '2023-01-01', 14, 14, 'Legal Advisor', 8000.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(47, 'Huda', 'Farid', 'huda.farid@example.com', '01011110013', '2023-02-01', 15, 15, 'Logistics Coordinator', 5600.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(48, 'Karim', 'Yassin', 'karim.yassin@example.com', '01011110014', '2021-09-15', 36, 11, 'Procurement Officer', 5800.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(49, 'Rania', 'Mostafa', 'rania.mostafa@example.com', '01011110015', '2021-10-20', NULL, 12, 'Admin Officer', 4900.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(50, 'Samer', 'Ashraf', 'samer.ashraf@example.com', '01011110016', '2022-05-05', NULL, 13, 'PR Specialist', 5300.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(51, 'Hossam', 'Fouad', 'hossam.fouad@example.com', '01011110017', '2023-06-06', 6, 6, 'Trainer', 5000.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(52, 'Nada', 'Kamel', 'nada.kamel@example.com', '01011110018', '2023-07-07', 26, 15, 'Engineer', 7200.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(53, 'Amr', 'Reda', 'amr.reda@example.com', '01011110019', '2022-08-08', NULL, 16, 'Security Officer', 4500.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46'),
(54, 'Yara', 'Lotfi', 'yara.lotfi@example.com', '01011110020', '2023-09-09', 6, 6, 'QA Engineer', 6000.00, '2025-08-18 15:03:22', '2025-08-18 15:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `ManagerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `HireDate` date NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`ManagerID`, `FirstName`, `LastName`, `Email`, `Phone`, `HireDate`, `DepartmentID`) VALUES
(1, 'Baraa', 'Sallout', 'baraa@example.com', '01012345678', '2020-01-10', 1),
(2, 'Mona', 'Saeed', 'mona.saeed@example.com', '01098765432', '2019-12-01', 2),
(3, 'Khaled', 'Nasser', 'khaled.nasser@example.com', '01234567890', '2018-06-15', 3),
(4, 'Salma', 'Hassan', 'salma.hassan@example.com', '01112345678', '2021-03-20', 4),
(5, 'Youssef', 'Mahmoud', 'youssef.mahmoud@example.com', '01011223344', '2017-09-10', 5),
(6, 'Rasha', 'Fathi', 'rasha.fathi@example.com', '01222220006', '2020-06-01', 6),
(7, 'Ola', 'Hamdy', 'ola.hamdy@example.com', '01222220007', '2020-07-01', 7),
(8, 'Samir', 'Hafez', 'samir.hafez@example.com', '01222220008', '2020-08-01', 8),
(9, 'Nadia', 'Khalaf', 'nadia.khalaf@example.com', '01222220009', '2020-09-01', 9),
(10, 'Hussein', 'Zaki', 'hussein.zaki@example.com', '01222220010', '2020-10-01', 10),
(11, 'Omar', 'Zaher', 'omar.zaher@example.com', '01222220011', '2020-11-01', 11),
(12, 'Eman', 'Lotfi', 'eman.lotfi@example.com', '01222220012', '2020-12-01', 12),
(13, 'Kareem', 'Farouk', 'kareem.farouk@example.com', '01222220013', '2021-01-01', 13),
(14, 'Yasmin', 'Gad', 'yasmin.gad@example.com', '01222220014', '2021-02-01', 14),
(15, 'Fouad', 'Mansour', 'fouad.mansour@example.com', '01222220015', '2021-03-01', 15),
(16, 'Salwa', 'Amin', 'salwa.amin@example.com', '01222220016', '2021-04-01', 16),
(17, 'Tamer', 'Lotfi', 'tamer.lotfi@example.com', '01222220017', '2021-05-01', 17),
(18, 'Aya', 'Ismail', 'aya.ismail@example.com', '01222220018', '2021-06-01', 18),
(19, 'Hassan', 'Sami', 'hassan.sami@example.com', '01222220019', '2021-07-01', 19),
(20, 'Nour', 'Aziz', 'nour.aziz@example.com', '01222220020', '2021-08-01', 20);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Budget` decimal(15,2) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `LastUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectID`, `ProjectName`, `StartDate`, `EndDate`, `Budget`, `DepartmentID`, `LastUpdated`) VALUES
(1, 'Website Development', '2023-02-01', '2023-05-01', 50000.00, 14, '2025-08-18 15:08:46'),
(2, 'Employee Onboarding', '2023-01-15', '2023-03-01', 15000.00, 7, '2025-08-18 15:08:46'),
(3, 'Social Media Campaign', '2023-04-01', '2023-06-30', 200000.00, 3, '2025-08-18 15:10:56'),
(4, 'Ai project', '2023-03-01', '2023-12-01', 75000.00, 24, '2025-08-18 15:10:56'),
(5, 'Cybersecurity Upgrade', '2024-01-01', '2024-06-01', 10000.00, 26, '2025-08-18 15:08:46'),
(6, 'Cloud Migration', '2024-02-01', '2024-12-18', 120000.00, 1, '2024-12-09 02:36:44'),
(7, 'AI Optimization', '2024-03-01', '2024-08-01', 100000.00, 24, '2025-08-18 15:10:56'),
(14, 'ERP Implementation', '2023-01-01', '2023-06-01', 120000.00, 1, '2025-08-18 15:10:56'),
(15, 'Recruitment Portal', '2023-02-01', '2023-07-01', 50000.00, 1, '2025-08-18 15:10:56'),
(16, 'Financial Dashboard', '2023-03-01', '2023-08-01', 80000.00, 5, '2025-08-18 15:08:46'),
(17, 'Marketing Campaign', '2023-04-01', '2023-09-01', 60000.00, 3, '2025-08-18 15:10:56'),
(18, 'Sales CRM', '2023-05-01', '2023-10-01', 70000.00, 4, '2025-08-18 15:08:46'),
(19, 'AI Research', '2023-06-01', '2023-11-01', 150000.00, 24, '2025-08-18 15:10:56'),
(20, 'Support Ticketing', '2023-07-01', '2023-12-01', 40000.00, 12, '2025-08-18 15:08:46'),
(21, 'Operations Workflow', '2023-08-01', '2024-01-01', 90000.00, 41, '2025-08-18 15:08:46'),
(22, 'Legal Tracker', '2023-09-01', '2024-02-01', 30000.00, 14, '2025-08-18 15:10:56'),
(23, 'Logistics Platform', '2023-10-01', '2024-03-01', 110000.00, 15, '2025-08-18 15:10:56'),
(24, 'Procurement App', '2023-11-01', '2024-04-01', 75000.00, 1, '2025-08-18 15:10:56'),
(25, 'Admin Automation', '2023-12-01', '2024-05-01', 85000.00, 36, '2025-08-18 15:08:46'),
(26, 'PR Campaign', '2024-01-01', '2024-06-01', 65000.00, 3, '2025-08-18 15:10:56'),
(27, 'Training Portal', '2024-02-01', '2024-07-01', 55000.00, 1, '2025-08-18 15:10:56'),
(28, 'Engineering Tool', '2024-03-01', '2024-08-01', 130000.00, 1, '2025-08-18 15:10:56'),
(29, 'Security System', '2024-04-01', '2024-09-01', 95000.00, 1, '2025-08-18 15:10:56'),
(30, 'QA Automation', '2024-05-01', '2024-10-01', 105000.00, 1, '2025-08-18 15:10:56'),
(31, 'Innovation Hub', '2024-06-01', '2024-11-01', 120000.00, 9, '2025-08-18 15:08:46'),
(32, 'Data Lake', '2024-07-01', '2024-12-01', 200000.00, 24, '2025-08-18 15:10:56'),
(33, 'AI Chatbot', '2024-08-01', '2025-01-01', 175000.00, 24, '2025-08-18 15:10:56'),
(34, 'ERP Implementation', '2023-01-01', '2023-06-01', 120000.00, 1, '2025-08-18 15:10:56'),
(35, 'Recruitment Portal', '2023-02-01', '2023-07-01', 50000.00, 1, '2025-08-18 15:10:56'),
(36, 'Financial Dashboard', '2023-03-01', '2023-08-01', 80000.00, 5, '2025-08-18 15:08:46'),
(37, 'Marketing Campaign', '2023-04-01', '2023-09-01', 60000.00, 3, '2025-08-18 15:10:56'),
(38, 'Sales CRM', '2023-05-01', '2023-10-01', 70000.00, 4, '2025-08-18 15:10:56'),
(39, 'AI Research', '2023-06-01', '2023-11-01', 150000.00, 24, '2025-08-18 15:10:56'),
(40, 'Support Ticketing', '2023-07-01', '2023-12-01', 40000.00, 12, '2025-08-18 15:10:56'),
(41, 'Operations Workflow', '2023-08-01', '2024-01-01', 90000.00, 1, '2025-08-18 15:08:46'),
(42, 'Legal Tracker', '2023-09-01', '2024-02-01', 30000.00, 14, '2025-08-18 15:10:56'),
(43, 'Logistics Platform', '2023-10-01', '2024-03-01', 110000.00, 15, '2025-08-18 15:10:56'),
(44, 'Procurement App', '2023-11-01', '2024-04-01', 75000.00, 1, '2025-08-18 15:10:56'),
(45, 'Admin Automation', '2023-12-01', '2024-05-01', 85000.00, 45, '2025-08-18 15:08:46'),
(46, 'PR Campaign', '2024-01-01', '2024-06-01', 65000.00, 3, '2025-08-18 15:10:56'),
(47, 'Training Portal', '2024-02-01', '2024-07-01', 55000.00, 1, '2025-08-18 15:10:56'),
(48, 'Engineering Tool', '2024-03-01', '2024-08-01', 130000.00, 1, '2025-08-18 15:10:56'),
(49, 'Security System', '2024-04-01', '2024-09-01', 95000.00, 1, '2025-08-18 15:10:56'),
(50, 'QA Automation', '2024-05-01', '2024-10-01', 105000.00, 1, '2025-08-18 15:10:56'),
(51, 'Innovation Hub', '2024-06-01', '2024-11-01', 120000.00, 29, '2025-08-18 15:08:46'),
(52, 'Data Lake', '2024-07-01', '2024-12-01', 200000.00, 24, '2025-08-18 15:10:56'),
(53, 'AI Chatbot', '2024-08-01', '2025-01-01', 175000.00, 24, '2025-08-18 15:08:46'),
(54, 'ERP Implementation', '2023-01-01', '2023-06-01', 120000.00, 1, '2025-08-18 15:10:56'),
(55, 'Recruitment Portal', '2023-02-01', '2023-07-01', 50000.00, 1, '2025-08-18 15:10:56'),
(56, 'Financial Dashboard', '2023-03-01', '2023-08-01', 80000.00, 28, '2025-08-18 15:08:46'),
(57, 'Marketing Campaign', '2023-04-01', '2023-09-01', 60000.00, 3, '2025-08-18 15:10:56'),
(58, 'Sales CRM', '2023-05-01', '2023-10-01', 70000.00, 4, '2025-08-18 15:10:56'),
(59, 'AI Research', '2023-06-01', '2023-11-01', 150000.00, 24, '2025-08-18 15:08:46'),
(60, 'Support Ticketing', '2023-07-01', '2023-12-01', 40000.00, 12, '2025-08-18 15:08:46'),
(61, 'Operations Workflow', '2023-08-01', '2024-01-01', 90000.00, 33, '2025-08-18 15:08:46'),
(62, 'Legal Tracker', '2023-09-01', '2024-02-01', 30000.00, 14, '2025-08-18 15:08:46'),
(63, 'Logistics Platform', '2023-10-01', '2024-03-01', 110000.00, 15, '2025-08-18 15:10:56'),
(64, 'Procurement App', '2023-11-01', '2024-04-01', 75000.00, 1, '2025-08-18 15:10:56'),
(65, 'Admin Automation', '2023-12-01', '2024-05-01', 85000.00, 32, '2025-08-18 15:08:46'),
(66, 'PR Campaign', '2024-01-01', '2024-06-01', 65000.00, 3, '2025-08-18 15:10:56'),
(67, 'Training Portal', '2024-02-01', '2024-07-01', 55000.00, 1, '2025-08-18 15:10:56'),
(68, 'Engineering Tool', '2024-03-01', '2024-08-01', 130000.00, 1, '2025-08-18 15:10:56'),
(69, 'Security System', '2024-04-01', '2024-09-01', 95000.00, 1, '2025-08-18 15:10:56'),
(70, 'QA Automation', '2024-05-01', '2024-10-01', 105000.00, 1, '2025-08-18 15:10:56'),
(71, 'Innovation Hub', '2024-06-01', '2024-11-01', 120000.00, 18, '2025-08-18 15:04:56'),
(72, 'Data Lake', '2024-07-01', '2024-12-01', 200000.00, 24, '2025-08-18 15:10:56'),
(73, 'AI Chatbot', '2024-08-01', '2025-01-01', 175000.00, 24, '2025-08-18 15:10:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD PRIMARY KEY (`EmployeeProjectID`),
  ADD UNIQUE KEY `uq_emp_proj` (`EmployeeID`,`ProjectID`),
  ADD KEY `FK_EmployeeProjects_Employee` (`EmployeeID`),
  ADD KEY `FK_EmployeeProjects_Project` (`ProjectID`),
  ADD KEY `idx_emp_proj_role` (`ProjectID`,`EmployeeID`,`Role`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `FK_Employee_Department` (`DepartmentID`),
  ADD KEY `FK_Employee_Manager` (`ManagerID`),
  ADD KEY `idx_employees_mgr_dept` (`ManagerID`,`DepartmentID`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`ManagerID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `FK_Manager_Department` (`DepartmentID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `FK_Project_Department` (`DepartmentID`),
  ADD KEY `idx_projects_dept_date` (`DepartmentID`,`StartDate`,`EndDate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  MODIFY `EmployeeProjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `ManagerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeeprojects`
--
ALTER TABLE `employeeprojects`
  ADD CONSTRAINT `FK_EmployeeProjects_Employee` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `FK_EmployeeProjects_Project` FOREIGN KEY (`ProjectID`) REFERENCES `projects` (`ProjectID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_Employee_Department` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `FK_Employee_Manager` FOREIGN KEY (`ManagerID`) REFERENCES `managers` (`ManagerID`);

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `FK_Manager_Department` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK_Project_Department` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
