-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 10:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proxima_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auths`
--

CREATE TABLE `tbl_auths` (
  `id` int(5) NOT NULL,
  `emp_id` varchar(15) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile_number` bigint(15) NOT NULL,
  `designation` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(2) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `registered_date` datetime NOT NULL,
  `last_logged_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_auths`
--

INSERT INTO `tbl_auths` (`id`, `emp_id`, `name`, `email`, `mobile_number`, `designation`, `password`, `role`, `status`, `deleted`, `registered_date`, `last_logged_in`) VALUES
(1, '9585001', 'Super Admin', 'superadmin@fbva.com', 0, '', 'a70267253ee50192d01454eb9271a7e41fe436937bc3c7e4fd14c4f0777f303cacc34831165ec30d2bf363e11ba19a1f3adbfa0d659866378e35fed228f80f15/Ajr/13/Ps07YiDNYtNuB4rzG7tnP123', 1, 'Active', 0, '2018-08-14 00:00:00', '2021-02-24 10:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_history`
--

CREATE TABLE `tbl_login_history` (
  `id` int(11) NOT NULL,
  `agent` text NOT NULL,
  `platform` text NOT NULL,
  `ip_address` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login_history`
--

INSERT INTO `tbl_login_history` (`id`, `agent`, `platform`, `ip_address`, `date_time`) VALUES
(1, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-12 09:19:06'),
(2, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-12 09:19:51'),
(3, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-12 10:44:07'),
(4, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-12 10:44:29'),
(5, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-12 10:54:43'),
(6, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-15 08:54:02'),
(7, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-15 08:54:25'),
(8, 'Chrome 88.0.4324.150', 'Windows 10', '::1', '2021-02-15 09:22:53'),
(9, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-16 08:40:03'),
(10, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-17 09:14:22'),
(11, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-18 09:15:42'),
(12, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-18 17:19:04'),
(13, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-19 09:08:00'),
(14, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-22 08:50:45'),
(15, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-22 16:51:27'),
(16, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-23 15:45:11'),
(17, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-23 17:06:39'),
(18, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-24 09:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(10) NOT NULL,
  `name` varchar(75) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(75) NOT NULL,
  `menu_type` varchar(15) NOT NULL,
  `header` varchar(15) NOT NULL DEFAULT 'Active',
  `footer` varchar(15) NOT NULL DEFAULT 'Active',
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `deleted` bigint(2) NOT NULL DEFAULT '0',
  `updated_date` date NOT NULL,
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `link`, `target`, `menu_type`, `header`, `footer`, `status`, `created_by`, `updated_by`, `created_date`, `deleted`, `updated_date`, `sort`) VALUES
(1, 'About', 'About', '_self', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-02-19', 0),
(2, 'SOLUTIONS', 'SOLUTIONS', '_blank', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-02-19', 0),
(3, 'PRODUCTS', 'Products', '_blank', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-02-19', 0),
(4, 'PODCAST  ', 'podcast', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '0000-00-00', 0),
(5, 'PUBLICATIONS', 'publications', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '0000-00-00', 0),
(6, 'GET IN TOUCH', 'get in touch', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '0000-00-00', 0),
(7, 'About us', 'about us', '_blank', 'Footer', 'Inactive', 'Active', 'Inactive', 0, 0, '2021-02-19', 1, '2021-02-19', 0),
(8, 'About us', 'About us', '_blank', 'Footer', 'Inactive', 'Active', 'Active', 0, 0, '2021-02-22', 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(25) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/KABCons\\/\",\"instagram\":\"https:\\/\\/instagram.com\\/kabconsultants?lang=en\",\"linkedin\":\"https:\\/\\/linkedin.com\\/kabconsultants?lang=en\",\"twitter\":\"https:\\/\\/www.twitter.com\\/kabconsultants9\\/\"}'),
(2, 'contact', '{\"mobile_number\":\"781-848-3867\",\"email\":\"info@proxima360.com\",\"details\":\"We\\u2019re available by phone (888.492.7297) and chat every day from 9 a.m.\\u201310 p.m. ET.\"}'),
(6, 'copyright', 'Copyright 2019-2021 Proxima360. All Rights Reserved.'),
(11, 'image', 'logo2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_solutions`
--

CREATE TABLE `tbl_solutions` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `alignment` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `link` varchar(250) NOT NULL,
  `short_desc` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `deleted` bigint(2) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_solutions`
--

INSERT INTO `tbl_solutions` (`id`, `image`, `title`, `alignment`, `target`, `type`, `link`, `short_desc`, `status`, `deleted`, `created_date`, `updated_date`) VALUES
(1, 'store14.jpg', 'Store Payroll Control and Tracking', 'Left', '_self', 'Image', 'store-payroll-control-and-tracking', 'Store Payroll Control and Tracking', 'Active', 0, '2021-02-19', '2021-02-23'),
(2, 'foot16.jpg', 'Revenue per Customer Footwear', 'Right', '_blank', 'Image', 'revenue-per-customer-footwear', 'Revenue per Customer Footwear', 'Active', 0, '2021-02-19', '2021-02-22'),
(4, 'merchant4.jpg', 'Store Merchandising Forecast', 'Right', '_blank', 'Image', 'store-merchandising-forecast', 'Store Merchandising Forecast', 'Active', 0, '2021-02-19', '2021-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `id` int(15) NOT NULL,
  `menu_name` varchar(150) NOT NULL,
  `sub_menu_name` varchar(150) NOT NULL,
  `sub_menu_link` varchar(150) NOT NULL,
  `menu_type` varchar(150) NOT NULL,
  `header` varchar(15) NOT NULL DEFAULT 'Active',
  `footer` varchar(15) NOT NULL DEFAULT 'Active',
  `sub_menu_target` varchar(75) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`id`, `menu_name`, `sub_menu_name`, `sub_menu_link`, `menu_type`, `header`, `footer`, `sub_menu_target`, `status`, `deleted`, `created_date`, `updated_date`) VALUES
(1, '1', 'About Us ', 'About Us ', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-02-19'),
(2, '1', 'Leadership', 'Leadership', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(3, '2', 'Stabilzation', 'Stabilzation', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(4, '2', 'Optimization', 'Optimization', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(5, '2', 'Enablement', 'Enablement', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(6, '2', 'End-to-end Solutions', 'End-to-end Solutions', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(7, '3', 'Adivino', 'adivino', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(8, '3', 'Rekount', 'rekount', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(9, '2', 'Allocation', 'allocation', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(10, '2', 'Revenue per customer footwear', 'revenue per customer footwear', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(11, '2', 'Store merchandising forecast', 'store merchandising forecast', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(12, '2', 'Store payroll control and tracking.', 'store payroll control and tracking.', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-02-19'),
(13, '7', 'About', 'about', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(14, '7', 'What We Do', 'what we do', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(15, '7', 'Careers', 'careers', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(16, '7', 'Contact', 'contact', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(17, '8', 'About', 'About', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-22', '0000-00-00'),
(18, '8', 'What We Do', 'What We Do', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-02-22', '0000-00-00'),
(19, '8', 'Careers', 'Careers', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-22', '0000-00-00'),
(20, '8', 'Contact', 'Contact', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-22', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_publications`
--

CREATE TABLE `tb_publications` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `deleted` bigint(2) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_publications`
--

INSERT INTO `tb_publications` (`id`, `image`, `title`, `short_description`, `long_description`, `status`, `created_date`, `deleted`, `updated_date`) VALUES
(3, 'blog144.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Inactive', '2021-02-19', 1, '0000-00-00'),
(4, 'blog149.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-02-19'),
(5, 'blog146.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '0000-00-00'),
(6, 'blog147.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 1, '0000-00-00'),
(7, 'blog150.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_auths`
--
ALTER TABLE `tbl_auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_publications`
--
ALTER TABLE `tb_publications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_auths`
--
ALTER TABLE `tbl_auths`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_publications`
--
ALTER TABLE `tb_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
