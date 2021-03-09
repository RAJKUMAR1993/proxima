-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 09:56 AM
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
-- Database: `proxima`
--

-- --------------------------------------------------------

--
-- Table structure for table `fdm_va_auths`
--

CREATE TABLE `fdm_va_auths` (
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
-- Dumping data for table `fdm_va_auths`
--

INSERT INTO `fdm_va_auths` (`id`, `emp_id`, `name`, `email`, `mobile_number`, `designation`, `password`, `role`, `status`, `deleted`, `registered_date`, `last_logged_in`) VALUES
(1, '1234', 'Super Admin', 'superadmin@fbva.com', 0, '', 'a0c652a6b16e14de2539571e91bbbaaf2ac6abebcafd1dd5f926567845ee11d7eff2319e62188c3fcc26f36a78fdf7f3497c7eb3d4b0d85ee5574bb8e867c49fZwfvB4rU7zzwtDibmXPFlbCnFh59IXnb', 1, 'Active', 0, '2018-08-14 00:00:00', '2018-12-06 15:30:10');

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
(1, '9585001', 'Super Admin', 'superadmin@fbva.com', 0, '', 'a70267253ee50192d01454eb9271a7e41fe436937bc3c7e4fd14c4f0777f303cacc34831165ec30d2bf363e11ba19a1f3adbfa0d659866378e35fed228f80f15/Ajr/13/Ps07YiDNYtNuB4rzG7tnP123', 1, 'Active', 0, '2018-08-14 00:00:00', '2021-02-15 09:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer_description`
--

CREATE TABLE `tbl_footer_description` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer_menu`
--

CREATE TABLE `tbl_footer_menu` (
  `id` int(10) NOT NULL,
  `name` varchar(75) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(75) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) NOT NULL,
  `created_date` date NOT NULL,
  `meta_keyword` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_description` text NOT NULL,
  `deleted` bigint(2) NOT NULL DEFAULT '0',
  `updated_date` date NOT NULL,
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer_menu`
--

INSERT INTO `tbl_footer_menu` (`id`, `name`, `link`, `target`, `status`, `created_by`, `updated_by`, `created_date`, `meta_keyword`, `meta_title`, `meta_description`, `deleted`, `updated_date`, `sort`) VALUES
(1, 'Products', 'Products', '_self', 'Active', 0, 0, '2021-02-12', '', '', '', 0, '0000-00-00', 0),
(2, 'Solutions', 'Solutions', '_self', 'Active', 0, 0, '2021-02-12', '', '', '', 0, '0000-00-00', 0),
(3, 'About us', 'About us', '_self', 'Active', 0, 0, '2021-02-12', '', '', '', 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer_submenu`
--

CREATE TABLE `tbl_footer_submenu` (
  `id` int(15) NOT NULL,
  `menu_name` varchar(150) NOT NULL,
  `sub_menu_name` varchar(150) NOT NULL,
  `sub_menu_link` varchar(150) NOT NULL,
  `sub_menu_target` varchar(75) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer_submenu`
--

INSERT INTO `tbl_footer_submenu` (`id`, `menu_name`, `sub_menu_name`, `sub_menu_link`, `sub_menu_target`, `status`, `deleted`, `created_date`, `updated_date`) VALUES
(1, '1', 'Adivino', 'Adivino', '_self', 'Active', 0, '2021-02-12', '0000-00-00'),
(2, '1', 'Rekount', 'Rekount', '_self', 'Active', 0, '2021-02-12', '0000-00-00'),
(3, '2', 'Allocation', 'Allocation', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(4, '2', 'Revenue per customer footwear', 'Revenue per customer footwear', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(5, '2', 'Store merchandising forecast', 'Store merchandising forecast', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(6, '2', 'Store payroll control and tracking', 'Store payroll control and tracking', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(7, '3', 'About', 'About', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(8, '3', 'What We Do ', 'What We Do ', '_blank', 'Active', 0, '2021-02-12', '0000-00-00'),
(9, '3', 'Careers', 'Careers', '_blank', 'Active', 0, '2021-02-12', '2021-02-12'),
(10, '3', 'Contact', 'Contact', '_blank', 'Active', 0, '2021-02-12', '2021-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homepage_sociallinks`
--

CREATE TABLE `tbl_homepage_sociallinks` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_homepage_sociallinks`
--

INSERT INTO `tbl_homepage_sociallinks` (`id`, `type`, `links`) VALUES
(1, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/KABCons\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/kabconsultants?lang=en\",\"google\":\"\",\"pinterest\":\"https:\\/\\/in.pinterest.com\\/kabconsultants\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/kabconsultants9\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/channel\\/UCCSHy_7D-6S1H_vxzCd2sIg\"}'),
(2, 'contact', '{\"mobile_number\":\"781-848-3867\",\"email\":\"info@proxima360.com\",\"details\":\"We\\u2019re available by phone (888.492.7297) and chat every day from 9 a.m.\\u201310 p.m. ET.\"}');

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
(7, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-15 08:54:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fdm_va_auths`
--
ALTER TABLE `fdm_va_auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_auths`
--
ALTER TABLE `tbl_auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer_description`
--
ALTER TABLE `tbl_footer_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer_menu`
--
ALTER TABLE `tbl_footer_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer_submenu`
--
ALTER TABLE `tbl_footer_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_homepage_sociallinks`
--
ALTER TABLE `tbl_homepage_sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fdm_va_auths`
--
ALTER TABLE `fdm_va_auths`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_auths`
--
ALTER TABLE `tbl_auths`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_footer_description`
--
ALTER TABLE `tbl_footer_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_footer_menu`
--
ALTER TABLE `tbl_footer_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_footer_submenu`
--
ALTER TABLE `tbl_footer_submenu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_homepage_sociallinks`
--
ALTER TABLE `tbl_homepage_sociallinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
