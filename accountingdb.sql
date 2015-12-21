-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2015 at 07:10 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accountingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ap`
--

CREATE TABLE IF NOT EXISTS `ap` (
`biller_id` int(3) unsigned NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `date_billed` date NOT NULL,
  `date_due` date NOT NULL,
  `expense_type` enum('Electric','Water','Plumbing','') NOT NULL,
  `ap_amount` varchar(20) NOT NULL,
  `ar_patient_id` int(3) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ap`
--

INSERT INTO `ap` (`biller_id`, `company_name`, `date_billed`, `date_due`, `expense_type`, `ap_amount`, `ar_patient_id`) VALUES
(1, 'AIG', '2015-12-02', '2015-12-09', 'Electric', '1000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ar`
--

CREATE TABLE IF NOT EXISTS `ar` (
`patient_id` int(3) unsigned NOT NULL,
  `patient_fname` varchar(30) NOT NULL,
  `patient_lname` varchar(30) NOT NULL,
  `patient_mname` varchar(30) NOT NULL,
  `date_admitted` date NOT NULL,
  `hospital_fee` varchar(10) NOT NULL,
  `professional_fee` varchar(10) NOT NULL,
  `discount_type` enum('Senior Citizen','Health Care') NOT NULL,
  `discount_rate` varchar(4) NOT NULL,
  `discount_amount` varchar(10) NOT NULL,
  `ar_discounted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE IF NOT EXISTS `cash` (
`entry_id` int(3) unsigned NOT NULL,
  `entry_date` varchar(20) NOT NULL,
  `transaction_type` enum('Payment','Collection') NOT NULL,
  `ar_received` varchar(20) NOT NULL,
  `collection_type` enum('Cash','Card') NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `payment_id` varchar(10) NOT NULL,
  `ap_paid` varchar(20) NOT NULL,
  `collection_id` int(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1450544494),
('m130524_201442_init', 1450544507);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fayeg', 'r0U-L71Rf6Ecf6ZHJT7LBxWy175WQhjg', '$2y$13$Qp2azsZscbBk1LsrYCxZG.5t2JLkJ.osWq34sDUhss.LrOVDSQrsO', NULL, 'fayeganda@gmail.com', 10, 1450545093, 1450545093);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ap`
--
ALTER TABLE `ap`
 ADD PRIMARY KEY (`biller_id`), ADD KEY `biller_id` (`biller_id`), ADD KEY `ar_patient_id` (`ar_patient_id`);

--
-- Indexes for table `ar`
--
ALTER TABLE `ar`
 ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
 ADD PRIMARY KEY (`entry_id`), ADD KEY `payment_id` (`payment_id`), ADD KEY `payment_id_2` (`payment_id`), ADD KEY `collection_id` (`collection_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ap`
--
ALTER TABLE `ap`
MODIFY `biller_id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ar`
--
ALTER TABLE `ar`
MODIFY `patient_id` int(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
MODIFY `entry_id` int(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
