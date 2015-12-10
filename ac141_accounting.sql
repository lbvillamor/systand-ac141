-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2016 at 04:21 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ac141_accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `hsptl_expenses`
--

CREATE TABLE IF NOT EXISTS `hsptl_expenses` (
  `id` int(9) NOT NULL,
  `company_name` text NOT NULL,
  `expense_acct` text NOT NULL,
  `amount_payable` int(10) NOT NULL,
  `amount_paid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hsptl_revenue`
--

CREATE TABLE IF NOT EXISTS `hsptl_revenue` (
  `id` int(9) NOT NULL,
  `patient_name` text NOT NULL,
  `amt_outstanding` int(10) NOT NULL,
  `amt_paid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hsptl_expenses`
--
ALTER TABLE `hsptl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsptl_revenue`
--
ALTER TABLE `hsptl_revenue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hsptl_expenses`
--
ALTER TABLE `hsptl_expenses`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hsptl_revenue`
--
ALTER TABLE `hsptl_revenue`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
