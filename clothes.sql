-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 02:27 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `message`) VALUES
('kkk', 'jjjj', 'jjjj'),
('omar', 'omarrashed', 'thank you for your efforts'),
('youssef', 'rashed', 'done'),
('youssef', 'rashed', 'done'),
('momo', 'halim', 'thank you'),
('omar', 'mmm', 'jjj'),
('hhh', '5555', 'yuuu'),
('omar', 'omar', 'shsysyys'),
('aaaa', 'aaa@gmail.com', 'send me'),
('send to me', 'salma@gmail.com', 'send to me'),
('', '', ''),
('', '', ''),
('omar', 'osama@gmail.com', 'call me');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `phone` int(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `phone`, `address`, `gender`, `age`, `email`, `password`) VALUES
(30, 'omar', 'mamdouh', 12002555, 'newvairo', 'Male', '2022-12-06', 'omar@gmail.com', '1234'),
(31, 'helmy', 'rashed', 10111111, 'amen shamsi', 'Male', '2022-12-06', 'ahmedhelmy', 'we'),
(52, 'omar', 'rashed', 102, 'amen shamsi', 'Male', '2022-12-13', 'omarrashed', '123'),
(53, 'omar', 'ahmed', 10, 'aj', 'Male', '2022-11-30', 'ahmed1', '123'),
(56, 'hamdy', 'ayman', 20, 'tagmoa', 'Male', '2022-12-02', 'hamdy', '123'),
(58, 'omar', 'rashed', 11111, 'hddy', 'Male', '2022-12-13', 'omarrashed', 'we'),
(59, 'omar', 'rashed', 1063316123, 'hegazsquare', 'Male', '2023-05-09', 'omar@gmail.com', '2345'),
(60, 'salma', 'sameh', 123456, 'hegaz', 'Female', '2023-05-15', 'salma@gmail.com', '12345'),
(61, 'omar', 'rashed', 123453356, 'hegaz', 'Male', '2023-05-14', 'rashed@gmail.com', '2345'),
(62, '', '', 0, '', '', '', '', ''),
(63, 'ali', 'nour', 123455678, 'merghany', 'Male', '2023-05-15', 'alinour@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `code` int(6) NOT NULL,
  `size` varchar(7) NOT NULL,
  `price` varchar(6) NOT NULL,
  `customerid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`email`, `password`) VALUES
('yarab', 'omar'),
('yarab', 'omar'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('omar', 'ahmed'),
('omar', 'ahmed'),
('', ''),
('', ''),
('omarmamdouh@gmail.com', '12345'),
('omarmamdouh@gmail.com', '12345'),
('omarmamdouh@gmail.com', '23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `customername` (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
