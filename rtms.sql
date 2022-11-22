-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2019 at 06:16 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.0.33-0ubuntu0.16.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rtms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Ayush', '1234'),
(2, 'Nitin', '1234'),
(3, 'Samman', '1234'),
(4, 'Saksham', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `username` text NOT NULL,
  `train` text NOT NULL,
  `sourse` text NOT NULL,
  `destination` text NOT NULL,
  `date` text NOT NULL,
  `sit` text NOT NULL,
  `cost` text NOT NULL,
  `bank` text NOT NULL,
  `ac` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`, `description`) VALUES
(1, 'Jaipur', 'xoss'),
(2, 'Delhi', 'beautiful Station'),
(3, 'Kolkata', 'beautiful Station'),
(5, 'Lucknow', 'beautiful Station'),
(9, 'Chandigarh', 'Awesome');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `place1` text NOT NULL,
  `place2` text NOT NULL,
  `route` text NOT NULL,
  `time` text NOT NULL,
  `vip` int(11) NOT NULL,
  `normal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `place1`, `place2`, `route`, `time`, `vip`, `normal`) VALUES
(12,'Jaipur Express' ,'Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 2200, 107),
(12, 'Jaipur Express','Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 3200, 20),
(12, 'Jaipur Express','Chandigarh', 'Jaipur', 'Chandigarh-Jaipur','7 AM', 2400, 60),
(12, 'Jaipur Express','Chandigarh', 'Jaipur', 'Chandigarh-Jaipur','7 AM', 1200, 100),
(12, 'Jaipur Express','Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 500, 200),
(12, 'Kolkata Express','Jaipur', 'Kolkata','Jaipur-Kolkata' ,'7 AM', 1434, 243),
(12, 'Kolkata Express','Jaipur', 'Kolkata','Jaipur-Kolkata' ,'7 AM', 1434, 243),
(12, 'Kolkata Express','Jaipur', 'Kolkata','Jaipur-Kolkata' ,'7 AM', 2900, 15),
(12, 'Kolkata Express','Jaipur', 'Kolkata', 'Jaipur-Kolkata','7 AM', 2100, 40),
(12, 'Rajdhani Express','Jaipur', 'Kolkata','Jaipur-Kolkata' ,'7 AM', 1500, 120),
(12, 'Rajdhani Express','Jaipur', 'Kolkata', 'Jaipur-Kolkata','7 AM', 800, 250),
(12, 'Rajdhani Express','Kolkata', 'Lucknow','Kolkata-Lucknow' ,'7 AM', 934, 322),
(12, 'Rajdhani Express','Kolkata', 'Lucknow', 'Kolkata-Lucknow','7 AM', 3100, 30),
(12,'Rajdhani Express' ,'Kolkata', 'Lucknow', 'Kolkata-Lucknow','7 AM', 1900, 30),
(12, 'Rajdhani Express','Kolkata', 'Lucknow','Kolkata-Lucknow' ,'7 AM', 1700, 150),
(12, 'Rajdhani Express','Kolkata', 'Lucknow','Kolkata-Lucknow' ,'7 AM', 700, 220),
(12, 'Rajdhani Express','Lucknow', 'Delhi','Lucknow-Delhi' ,'7 AM', 344, 326),
(12, 'Rajdhani Express','Lucknow', 'Delhi','Lucknow-Delhi' ,'7 AM', 2750, 20),
(12, 'Rajdhani Express','Lucknow', 'Delhi','Lucknow-Delhi' ,'7 AM', 2350, 60),
(12,'Rajdhani Express' ,'Lucknow', 'Delhi','Lucknow-Delhi' ,'7 AM', 1100, 118),
(12, 'Rajdhani Express','Lucknow', 'Delhi','Lucknow-Delhi' ,'7 AM', 900, 180),
(18, 'Rajdhani Express','Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 2420, 50),
(18, 'Rajdhani Express','Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 1700, 20),
(18, 'Rajdhani Express','Chandigarh', 'Jaipur','Chandigarh-Jaipur' ,'7 AM', 750, 120),
(18, 'Rajdhani Express','Jaipur', 'Delhi','Jaipur-Delhi' ,'7 AM', 2700, 20),
(18, 'Shatabdi Express','Jaipur', 'Delhi', 'Jaipur-Delhi','7 AM', 1200, 20),
(18, 'Shatabdi Express','Jaipur', 'Delhi', 'Jaipur-Delhi','7 AM', 900, 150),
(20,'Shatabdi Express' ,'Delhi', 'Jaipur', 'Delhi-Jaipur','7 AM', 4500, 20),
(20,'Shatabdi Express' ,'Delhi', 'Jaipur', 'Delhi-Jaipur','7 AM', 3200, 50),
(20,'Shatabdi Express' ,'Delhi', 'Jaipur', 'Delhi-Jaipur','7 AM', 2700, 50),
(20, 'Shatabdi Express','Delhi', 'Jaipur', 'Delhi-Jaipur','7 AM', 900, 300);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `fullname` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `bankname` text NOT NULL,
  `acn` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`fullname`, `username`, `address`, `mobile`, `bankname`, `acn`, `password`, `email`) VALUES
('Nitin Bhist', 'nitin71', 'Delhi', '01752804620', 'SBI', '123123', '123', 'nitin71@gmail.com'),
('Ayush Verma', 'ayush71', 'Delhi', '01752804620', 'PNB', '123123', '123', 'ayush71@gmail.com'),
('Samman Sarkar', 'samman71', 'Delhi', '01752804620', 'ICICI', '123123', '123', 'samman71@gmail.com'),
('Saksham Singh', 'saksham71', 'Delhi', '01752804620', 'SBI', '123123', '123', 'saksham71@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
