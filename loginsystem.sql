-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2017 at 08:01 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `memberdetails`
--

CREATE TABLE `memberdetails` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `docapp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberdetails`
--

INSERT INTO `memberdetails` (`fname`, `lname`, `email`, `contact`, `docapp`) VALUES
('Rohan', 'khandare', 'rohan@gmail.com', 'M 100', 'T 101'),
('Yasharth', 'Prasad', 'yasharth.k01@gmail.com', 'M 101', 'T 102'),
('Vedant', 'khule', 'vedant69@gmail.com', 'M 102', 'T 103');

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `Package`
--

CREATE TABLE `Package` (
  `Package_id` varchar(40) NOT NULL,
  `Package_name` varchar(40) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Package`
--

INSERT INTO `Package` (`Package_id`, `Package_name`, `Amount`) VALUES
('P 121', 'preliminary', 800),
('P 122', 'Wt. gain', 1500),
('P 123', 'Wt.loss', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `Payment_id` varchar(10) NOT NULL,
  `Amount` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`Payment_id`, `Amount`, `customer_id`, `payment_type`) VALUES
('Pay 301', 1500, 'M 201', 'cash'),
('Pay 302', 800, 'M 202', 'card'),
('Pay 303', 1000, 'M 203', 'cheque'),
('Pay 304', 1500, 'M 204', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `Trainer`
--

CREATE TABLE `Trainer` (
  `Trainer_id` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `phone` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Trainer`
--

INSERT INTO `Trainer` (`Trainer_id`, `Name`, `phone`) VALUES
('T 101', 'Rakesh', 12365489),
('T 102', 'Ravi', 21365789),
('T 103', 'wasim', 123564789),
('T 104', 'Sameer', 12536987);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `memberdetails`
--
ALTER TABLE `memberdetails`
  ADD PRIMARY KEY (`contact`);

--
-- Indexes for table `Package`
--
ALTER TABLE `Package`
  ADD PRIMARY KEY (`Package_id`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`Payment_id`);

--
-- Indexes for table `Trainer`
--
ALTER TABLE `Trainer`
  ADD PRIMARY KEY (`Trainer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
