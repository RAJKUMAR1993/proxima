-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 04:34 PM
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
(1, '1234', 'Proxima', 'superadmin@proxima.com', 0, '', '668a33560bd99b6d2bb43c9bae162a185db8537bd429ed4527919ab89b3a7d9c11b2291a3785e6ab7a4548023eabec9ea5040050016f6f39f4bc4e022ec36482030TtLJiUA412xZMY/75alrrencmDfbQ', 1, 'Active', 0, '2018-08-14 00:00:00', '2021-03-12 16:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blocks`
--

CREATE TABLE `tbl_blocks` (
  `id` int(11) NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `block_id` varchar(150) NOT NULL,
  `attributes` text NOT NULL,
  `content` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blocks`
--

INSERT INTO `tbl_blocks` (`id`, `block_name`, `block_id`, `attributes`, `content`, `status`) VALUES
(1, 'Homepage Banner', 'home_page_banner', '', '<section id=\"banner\"><div class=\"container\"><div class=\"ban-img\"> <img src=\"assets/front/images/banner.jpg\" class=\"img-fluid\" /><div class=\"ban-text\"><p>RETAIL</p><h1>Human Powered Machine Learning for <span>Finance</span> </h1><a href=\"#\"> See what it can do for you. <i class=\"fa fa-arrow-circle-down\" aria-hidden=\"true\"></i> </a> </div></div></div></section>', 'Active'),
(2, 'Retail FP&A Solution', 'retail_fpa_solution', '', '<section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row \"><div class=\"col-lg-7 col-md-6 \"><div class=\"content colour-1\" ><h2> Retail FP&A Solution</h2><h3><strong>Enhancing Financial Decisions with Machine Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6 \"><div class=\"content12 colour-3\"><div class=\"leftcorner\"></div><div class=\"rightcorner\"></div> <img src=\"assets/front/images/advino.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"#\"><img src=\"assets/front/images/arrow.png\"/></a></span><h2> ADIVINO</h2><h3> Human Powered Machine Learning for Finance</h3></div></div></div></div></div></div></div> </section>', 'Active'),
(3, 'Quote', 'quote', '', '<section id=\"quote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-1\"><h2>“Whether it’s Retail Finance, Merchandising, Planning, or Distribution, Every Decision Fundametally relies on Accurately Forecasting the Demand for the Products.”</h2> <address> - Head, Data Science, MIT </address></div></div></div> </section>', 'Active'),
(4, 'Consult Request', 'consult_request', '', '<section id=\"simply\"><div class=\"container\"><div class=\"simply\"><div class=\"row\"><div class=\"col-lg-9 col-md-9\"><h1>We Create Solutions that Simplifies Your Retail Operational Landscape</h1></div><div class=\"col-lg-3 col-md-3\"><a href=\"#\"> <button class=\"btn btn-outline-light btn-lg\">Request for consult </button> </a></div></div><div class=\"clearfix\"></div></div></div> </section>', 'Active'),
(5, 'Solutions & Services', 'solutions_services', '', '<section id=\"solutions\"></section>', 'Active'),
(6, 'About Us', 'about_us', '', '<section id=\"abt\"><div class=\"container abb\"><div class=\"row\"><div class=\"col-lg-12 col-md-12 \"><div class=\"row \"><div class=\"col-lg-6 col-md-6 \"><div class=\"bo\" ><h2>About Us</h2><p>Proxima360 is a high impact solutions management consulting company. We address critical business needs within the complex retail landscape. Our holistic approach in implementing retail solutions will optimize operations and improve revenue.</p> <a href=\"#\"> Check out Our Journey <i class=\"fa fa-arrow-circle-right\" aria-hidden=\"true\"></i> </a></div></div><div class=\"col-lg-5 col-md-6 offset-1\"><div class=\"content12 colour-2\"> <a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\"> <img src=\"assets/front/images/abt-bg.png\" class=\"img-fluid\"/></a><div class=\"modal fade\" id=\"myModal\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\"><div class=\"modal-dialog\" role=\"document\"><div class=\"modal-content\"><div class=\"modal-body\"> <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"> <span aria-hidden=\"true\">&times;</span> </button><div class=\"embed-responsive embed-responsive-16by9\"> <iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/SSqenk1uLLw\" allowscriptaccess=\"always\" allow=\"autoplay\"></iframe></div></div></div></div></div></div></div></div></div></div></div></div> </section>', 'Active'),
(7, 'CEO Quote', 'ceo_quote', '', '<div class=\"col-lg-5 col-md-12 \"><div class=\"ceo-bg\"> <img src=\"assets/front/images/anil.png\" class=\" img-fluid\" /><blockquote> I believe in offering creative solutions for complex problems to our customers. <span class=\"\"> <strong>Anil Varghese</strong> <br/> <strong>CEO</strong> </span></blockquote><div class=\"clearfix\"></div></div></div>', 'Active'),
(8, 'Podcast Link', 'podcast_link', '', '<div class=\"col-lg-5 col-md-12 offset-2\"><div class=\"retail\"><div class=\"retext\"><h2>Retail Corner Podcast</h2><h3> Innovation <span>.</span> Entrepreneurs <span>.</span> Technology</h3> <a href=\"#\"> <button class=\"pro-btn \">Visit Our Podcast</button> </a></div> <img src=\"assets/front/images/carlos.png\" class=\"img-fluid\" /><div class=\"clearfix\"></div></div></div>', 'Active'),
(9, 'Publications', 'publications', '', '<section id=\"blog\"><div class=\"container\"><h1>Proxima360 Publications</h1><div class=\"row\"><div class=\"col-lg-4 col-md-12 jasgrid\"><div class=\"box-item\"><div class=\"box-post\"> <span class=\"label label-success\"> <a href=\"#\" rel=\"tag\">Retail</a> </span><h3 class=\"post-title\"> <a href=\"#\"> End to one-day black Friday shopping deals? </a></h3> <span class=\"meta\"> <span><i class=\"glyphicon glyphicon-comment\"></i> <a href=\"#\">No Comments</a></span> <span><i class=\"glyphicon glyphicon-time\"></i> Oct 28, 2020</span> </span></div> <img src=\"assets/front/images/blog1.jpg\" alt=\"\" class=\"img-fluid\"></div></div><div class=\"col-lg-4 col-md-12 jasgrid\"><div class=\"box-item\"><div class=\"box-post\"> <span class=\"label label-success\"> <a href=\"#\" rel=\"tag\">Retail</a> </span><h3 class=\"post-title\"> <a href=\"#\"> End to one-day black Friday shopping deals? </a></h3> <span class=\"meta\"> <span><i class=\"glyphicon glyphicon-comment\"></i> <a href=\"#\">No Comments</a></span> <span><i class=\"glyphicon glyphicon-time\"></i> Oct 28, 2020</span> </span></div> <img src=\"assets/front/images/blog1.jpg\" alt=\"\" class=\"img-fluid\"></div></div><div class=\"col-lg-4 col-md-12 jasgrid\"><div class=\"box-item\"><div class=\"box-post\"> <span class=\"label label-success\"> <a href=\"#\" rel=\"tag\">Retail</a> </span><h3 class=\"post-title\"> <a href=\"#\"> End to one-day black Friday shopping deals? </a></h3> <span class=\"meta\"> <span><i class=\"glyphicon glyphicon-comment\"></i> <a href=\"#\">No Comments</a></span> <span><i class=\"glyphicon glyphicon-time\"></i> Oct 28, 2020</span> </span></div> <img src=\"assets/front/images/blog1.jpg\" alt=\"\" class=\"img-fluid\"></div></div></div></div> </section>', 'Active'),
(10, 'Solutions Banner', 'solutions_banner', '', '<section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\" /><div class=\"solban-text\"><h1>Inventory Allocation</h1><p>How retailers can gain competetive edge?</p></div></div> </section>', 'Active'),
(11, 'Solutions Problem', 'solutions_problem', '', '<section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS & Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i class=\"fa fa-file-pdf-o\" aria-hidden=\"true\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section>', 'Active'),
(12, 'solutions', 'solutions', '', '<section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\" /><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6 \"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\" /><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6 \"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\" /><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant & repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section>', 'Active'),
(13, 'Solutions Lets Talk Now', 'solutions_talk_now', '', '<section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</strong></span></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\" black_box \">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\" /></div></div></div> </section>', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `blogs_inner_image` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `short_desc` longtext NOT NULL,
  `long_desc` longtext NOT NULL,
  `posted_by` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `blog_link` varchar(255) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `update_date` date NOT NULL,
  `deleted` bigint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `image`, `blogs_inner_image`, `category`, `short_desc`, `long_desc`, `posted_by`, `title`, `blog_link`, `status`, `created_date`, `update_date`, `deleted`) VALUES
(3, 'uploads/blog/blog1130.jpg', 'uploads/blog/916.jpg', 'Adipisicing elit', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(4, 'uploads/blog/blog1127.jpg', 'uploads/blog/913.jpg', 'Sed do', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(5, 'uploads/blog/blog1133.jpg', 'uploads/blog/919.jpg', 'Eiusmod', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(6, 'uploads/blog/blog1125.jpg', 'uploads/blog/911.jpg', 'Mockup', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(7, 'uploads/blog/blog1131.jpg', 'uploads/blog/917.jpg', 'Ut enim ad minim', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.\r\n\r\n', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(9, 'uploads/blog/blog1129.jpg', 'uploads/blog/915.jpg', 'Veniam, quis nostrud', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `deleted` bigint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(1, 'Lorem ipsum', 'Active', '2021-03-02', '0000-00-00', 0),
(2, 'Dolor sit amet', 'Active', '2021-03-02', '0000-00-00', 0),
(3, 'Adipisicing elit', 'Active', '2021-03-02', '0000-00-00', 0),
(4, 'Sed do', 'Active', '2021-03-02', '0000-00-00', 0),
(5, 'Eiusmod', 'Active', '2021-03-02', '0000-00-00', 0),
(6, 'Mockup', 'Active', '2021-03-02', '0000-00-00', 0),
(7, 'Ut enim ad minim', 'Active', '2021-03-02', '0000-00-00', 0),
(8, 'Veniam, quis nostrud', 'Active', '2021-03-02', '0000-00-00', 0),
(12, 'Adipisicing elit', 'Active', '2021-03-03', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_date` date NOT NULL,
  `deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `purpose`, `message`, `created_date`, `deleted`) VALUES
(1, 'For Retail Corner podcast’s general/guest enquiry.', 'social@proxima360.com', 'What is your pet\'s name?', 'Looking to talk more with us regarding the Services/Solutions we offer, or you are having issues with your current Oracle retail implementation. Fill out the short form below and our sales professionals will get in touch with you.\r\n\r\n', '2021-03-09', 0),
(2, 'sfsaf', 'superadmin@proxima.com', 'What is your pet\'s name?', 'safsadfvsa', '2021-03-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(10) NOT NULL,
  `img_name` text NOT NULL,
  `gallery_type` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `img_name`, `gallery_type`, `status`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`) VALUES
(383, 'uploads/gallery/1.jpg-cropped.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 1, 0),
(384, 'uploads/gallery/register.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(385, 'uploads/gallery/register1.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(386, 'uploads/gallery/1.jpg-cropped1.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(387, 'uploads/gallery/end-end.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(388, 'uploads/gallery/abt-img.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(389, 'uploads/gallery/abt-img1.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(390, 'uploads/gallery/logo.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(391, 'uploads/gallery/abt-bg.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(392, 'uploads/gallery/allocation.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(393, 'uploads/gallery/foot.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(394, 'uploads/gallery/logo.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(395, 'uploads/gallery/end-end1.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(396, 'uploads/gallery/blog1.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(397, 'uploads/gallery/rekount.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(398, 'uploads/gallery/t-2.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(399, 'uploads/gallery/banner.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(400, 'uploads/gallery/agero.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(401, 'uploads/gallery/s3.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(402, 'uploads/gallery/s1.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(403, 'uploads/gallery/card-img.png', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(404, 'uploads/gallery/blog11.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(405, 'uploads/gallery/adivino.jpg', '', 'Active', '2021-02-24', '0000-00-00', 1, 0, 0),
(406, 'uploads/gallery/superAdmin.jpg', '', 'Active', '2021-02-25', '0000-00-00', 1, 0, 0),
(407, 'uploads/gallery/123453.jpg', '', 'Active', '2021-02-25', '0000-00-00', 1, 0, 0),
(408, 'uploads/gallery/podcast-ban.jpg', '', 'Active', '2021-03-01', '0000-00-00', 1, 0, 0),
(409, 'uploads/gallery/followers.gif', '', 'Active', '2021-03-01', '0000-00-00', 1, 0, 0),
(410, 'uploads/gallery/audience.jpg', '', 'Active', '2021-03-01', '0000-00-00', 1, 0, 0),
(411, 'uploads/gallery/purpose.jpg', '', 'Active', '2021-03-01', '0000-00-00', 1, 0, 0),
(412, 'uploads/gallery/abt-ban.png', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(413, 'uploads/gallery/company.png', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(414, 'uploads/gallery/devavrat.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(415, 'uploads/gallery/youtube.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(416, 'uploads/gallery/pod.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(417, 'uploads/gallery/spot.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(418, 'uploads/gallery/gm.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(419, 'uploads/gallery/sachin.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(420, 'uploads/gallery/host.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 1, 0),
(421, 'uploads/gallery/advino-solution.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(422, 'uploads/gallery/advino-solution1.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(423, 'uploads/gallery/advino-solution2.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(424, 'uploads/gallery/retail-fin-planning.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(425, 'uploads/gallery/Home-banner-1549x876-1.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(426, 'uploads/gallery/anil-varghese-450x526.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(427, 'uploads/gallery/about-us-bg-515x289.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(428, 'uploads/gallery/company1.png', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(429, 'uploads/gallery/Proxima360-adivino-banner-1504x1016.png', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(430, 'uploads/gallery/dashboard-licen-559x374.png', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(431, 'uploads/gallery/contact-banner.jpg', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(432, 'uploads/gallery/build-applications-551x367.png', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(433, 'uploads/gallery/enhance-labour-licen-551x367.png', '', 'Active', '2021-03-09', '0000-00-00', 1, 0, 0),
(434, 'uploads/gallery/adivino-logo-500x130.png', '', 'Active', '2021-03-10', '0000-00-00', 1, 0, 0),
(435, 'uploads/gallery/about-us-banner-1504x1014.png', '', 'Active', '2021-03-10', '0000-00-00', 1, 0, 0);

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
(18, 'Chrome 86.0.4240.75', 'Windows 10', '::1', '2021-02-24 09:00:51'),
(19, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-02-24 09:15:18'),
(20, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-02-25 09:16:49'),
(21, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-02-25 14:03:40'),
(22, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-02-25 15:03:14'),
(23, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-03-02 08:54:36'),
(24, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-03-03 08:53:31'),
(25, 'Chrome 89.0.4389.72', 'Windows 10', '183.82.103.60', '2021-03-03 17:22:10'),
(26, 'Firefox 85.0', 'Windows 10', '183.82.103.60', '2021-03-03 19:15:34'),
(27, 'Firefox 86.0', 'Windows 10', '96.230.43.240', '2021-03-03 19:25:18'),
(28, 'Firefox 86.0', 'Windows 10', '96.230.43.240', '2021-03-04 03:08:35'),
(29, 'Firefox 85.0', 'Windows 10', '183.82.103.60', '2021-03-04 15:00:53'),
(30, 'Chrome 88.0.4324.190', 'Windows 10', '96.230.43.240', '2021-03-05 19:58:09'),
(31, 'Chrome 88.0.4324.190', 'Windows 10', '96.230.43.240', '2021-03-06 17:03:38'),
(32, 'Chrome 88.0.4324.190', 'Windows 10', '96.230.43.240', '2021-03-07 21:50:20'),
(33, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-08 10:56:42'),
(34, 'Chrome 89.0.4389.72', 'Android', '183.82.103.60', '2021-03-08 10:56:46'),
(35, 'Chrome 88.0.4324.190', 'Windows 10', '183.83.173.85', '2021-03-08 12:13:06'),
(36, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-08 12:52:18'),
(37, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-08 13:40:26'),
(38, 'Chrome 88.0.4324.190', 'Windows 10', '72.74.252.63', '2021-03-08 15:05:15'),
(39, 'Chrome 88.0.4324.190', 'Windows 10', '183.82.103.60', '2021-03-09 10:23:51'),
(40, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-09 10:45:46'),
(41, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-09 11:25:42'),
(42, 'Chrome 88.0.4324.190', 'Windows 10', '72.74.252.63', '2021-03-09 15:36:42'),
(43, 'Chrome 88.0.4324.190', 'Windows 10', '183.82.103.60', '2021-03-09 16:57:13'),
(44, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-09 17:43:16'),
(45, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-10 09:29:06'),
(46, 'Chrome 88.0.4324.190', 'Windows 10', '183.82.103.60', '2021-03-10 09:55:16'),
(47, 'Chrome 88.0.4324.190', 'Windows 10', '183.82.103.60', '2021-03-10 13:54:27'),
(48, 'Chrome 88.0.4324.190', 'Windows 10', '72.74.252.63', '2021-03-10 14:59:19'),
(49, 'Chrome 89.0.4389.72', 'Windows 10', '183.82.103.60', '2021-03-10 20:47:25'),
(50, 'Chrome 90.0.4430.11', 'Windows 10', '183.82.103.60', '2021-03-10 21:20:08'),
(51, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-11 07:09:17'),
(52, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-11 14:07:39'),
(53, 'Chrome 88.0.4324.190', 'Windows 10', '183.83.173.85', '2021-03-11 16:44:24'),
(54, 'Chrome 89.0.4389.82', 'Windows 10', '::1', '2021-03-12 09:20:26'),
(55, 'Chrome 89.0.4389.82', 'Windows 10', '::1', '2021-03-12 15:13:04');

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
(2, 'Solutions', 'SOLUTIONS', '_blank', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-03-09', 0),
(3, 'Products', 'Products', '_blank', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-03-09', 0),
(4, 'Podcast', 'podcast', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-10', 0),
(5, 'News & Views', 'publications', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-10', 0),
(6, 'Contact us', 'contact', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-10', 0),
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
(1, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/instagram.com\\/\",\"linkedin\":\"https:\\/\\/linkedin.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\"}'),
(2, 'contact', '{\"mobile_number\":\"781-848-3867\",\"email\":\"sales@proxima360.com\",\"details\":\" \"}'),
(6, 'copyright', 'Copyright 2019-2021 Proxima360. All Rights Reserved.'),
(11, 'image', 'logo2.png'),
(12, 'contact_email', 'social@proxima360.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(5) NOT NULL,
  `page_name` varchar(150) NOT NULL,
  `route` varchar(255) NOT NULL,
  `page_layout` varchar(50) NOT NULL,
  `html` text NOT NULL,
  `css` text NOT NULL,
  `form_ref` varchar(75) DEFAULT NULL,
  `meta_title` varchar(750) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_by` int(10) NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0',
  `status` varchar(25) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `page_name`, `route`, `page_layout`, `html`, `css`, `form_ref`, `meta_title`, `meta_keyword`, `meta_description`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`, `status`) VALUES
(129, 'test', 'test', '', '<section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row\"><div class=\"col-lg-7 col-md-6\"><div class=\"content colour-1\"><h2> Retail FP&amp;A Solution</h2><h3><strong>Enhancing Financial Decisions with Machine Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6\"><div class=\"content12 colour-3\"><div class=\"leftcorner\"></div><div class=\"rightcorner\"></div> <img src=\"assets/front/images/advino.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"#\"><img src=\"assets/front/images/arrow.png\"/></a></span><h2> ADIVINO</h2><h3> Human Powered Machine Learning for Finance</h3></div></div></div></div></div></div></div> </section><div class=\"col-lg-5 col-md-12\"><div class=\"ceo-bg\"> <img src=\"assets/front/images/anil.png\" class=\"img-fluid\"/><blockquote> I believe in offering creative solutions for complex problems to our customers. <span> <strong>Anil Varghese</strong> <br/> <strong>CEO</strong> </span></blockquote><div class=\"clearfix\"></div></div></div>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.social ul li{display:inline;padding:0px 5px;}.social ul li a{color:#333;}.social ul li a:hover{color:red;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(130, 'Home', 'home', '', '<div class=\"clearfix\">\n</div><section id=\"banner\">\n  \n</section><section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row\"><div class=\"col-lg-7 col-md-6\"><div class=\"content colour-1\"><h2 id=\"imwew\"> Retail FP&amp;A Solution\n              </h2><h3><strong id=\"iechg\">Enhancing Financial\n                  Decisions with Machine\n                  Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6\"><div class=\"content12 colour-3\"><div class=\"leftcorner\">\n              </div><div class=\"rightcorner\">\n              </div><img src=\"http://13.233.31.254/proxima/uploads/gallery/retail-fin-planning.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"#\"><img src=\"assets/front/images/arrow.png\"/></a></span><h2> ADIVINO \n                </h2><h3> Human Powered Machine Learning for Finance \n                </h3></div></div></div></div></div></div></div></section><section id=\"quote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-1\"><h2 id=\"i6v4m\"><p id=\"in4rx\">“Whether it is retail finance, merchandising, planning, or distribution, every decision fundametally relies on accurately forecasting the demand for the product.”\n          </p></h2><address id=\"i6vm6\">\n          - Head, Data Science, MIT\n        </address></div></div></div></section><section id=\"simply\"><div class=\"container\"><div class=\"simply\"><div class=\"row\"><div class=\"col-lg-9 col-md-9\"><h1 id=\"i42rp\">We Create Solutions that Simplifies Your Retail Operational Landscape \n          </h1></div><div class=\"col-lg-3 col-md-3\"><a href=\"#\"><button class=\"btn btn-outline-light btn-lg\">Request for consult </button></a></div></div><div class=\"clearfix\">\n      </div></div></div></section><section id=\"solutions\">\n</section><section id=\"abt\"><div class=\"container abb\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><div class=\"row\"><div class=\"col-lg-6 col-md-6\"><div class=\"bo\"><h2 id=\"ipn3f\">About Us\n              </h2><p id=\"ie3yq\">Proxima360 is a high impact solutions management consulting company. We address critical business needs within the complex retail landscape. Our holistic approach in implementing retail solutions will optimize operations and improve revenue. \n              </p><a href=\"#\" id=\"il51i\"> Check out Our Journey <i aria-hidden=\"true\" class=\"fa fa-arrow-circle-right\">\n                </i> </a></div></div><div class=\"col-lg-5 col-md-6 offset-1\"><div class=\"content12 colour-2\"><a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\" id=\"in40d\"> <img src=\"http://13.233.31.254/proxima/uploads/gallery/abt-bg.png\" class=\"img-fluid\"/></a><div id=\"myModal\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\" class=\"modal fade\"><div role=\"document\" class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-body\"><button type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\" class=\"close\"> <span aria-hidden=\"true\">×</span> </button><!-- 16:9 aspect ratio --><div class=\"embed-responsive embed-responsive-16by9\"><iframe allowfullscreen=\"allowfullscreen\" src=\"https://www.youtube.com/embed/SSqenk1uLLw?\" allowscriptaccess=\"always\" allow=\"autoplay\" class=\"embed-responsive-item\"></iframe></div></div></div></div></div></div><!--<a href=\"#\" data-toggle=\"modal\"  data-target=\"#myModal\">   <img src=\"images/abt-bg.png\"  class=\"img-fluid\"/></a>--></div></div></div></div></div></section><section id=\"ceo\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-5 col-md-12\"><div class=\"ceo-bg\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/anil-varghese-450x526.png\" class=\"img-fluid\"/><blockquote> I believe in offering creative solutions for complex problems to our customers. \n            <span> <strong>Anil Varghese</strong> <br/><strong>CEO</strong> </span></blockquote><div class=\"clearfix\">\n          </div></div></div><div class=\"col-lg-6 col-md-12 offset-1\"><div class=\"retail\"><div class=\"retext\"><h2>Retail Corner Podcast\n            </h2><h3> Innovation \n              <span>.</span> Entrepreneurs \n              <span>.</span> Technology \n            </h3><a href=\"#\"><button class=\"pro-btn\">Visit Our Podcast</button></a></div><img src=\"assets/front/images/carlos.png\" class=\"img-fluid\"/><div class=\"clearfix\">\n          </div></div></div></div></div></section><div class=\"container\"><h1 id=\"i0nsas\">News &amp; Views\n  </h1></div><section id=\"blog\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.btn.btn-outline-light.btn-lg{float:none;position:absolute;top:28px;left:51px;font-size:21.5px;}.simply{background-color:#203149;}.col-lg-10.col-md-12.offset-1{font-size:16px;}#imwew{font-weight:500;font-size:24px;}#iechg{font-size:46px;}#i6v4m{font-weight:300;font-size:37px;text-align:center;color:#a4a0a0;}#i6vm6{font-weight:300;font-size:18px;}#i42rp{font-size:25px;}#ipn3f{font-size:30px;}#ie3yq{font-size:20px;}#in4rx{font-size:36px;font-weight:200;}#i0nsas{text-align:left;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(131, 'Allocation', 'allocation', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iuos\">Inventory Allocation\n      </h1><p id=\"i9y6\">How retailers can gain competetive edge?\n      </p></div></div></section><section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1 id=\"i29sj\">Problem\n        </h1><h2 id=\"iqe1k\">Top 3 Allocation Issues \n          <br/><strong>Retailers are facing today<span>. </span></strong></h2><ol><li id=\"iijvl\"> Inability to allocate using size demographics.\n          </li><br/><li id=\"ik67j\"> Repetitive data entry.\n          </li><br/><li id=\"ivdp1\"> Extensive labor hours for manual workaround. \n          </li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iz2ea\">Merchandising Forecast</a></li><li><a href=\"advino\" id=\"iryqk\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"i9fbs\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"ijeyf\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"ixb8k\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"is2y1\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"irbal\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\">\n            </i><a href=\"#\"> Download Brochure </a></p></div></div></div></div></section><section id=\"sol\"><div class=\"container\"><h1> Solutions \n    </h1><div class=\"sol-bg\"><h2 id=\"ielmp\"><strong draggable=\"true\" id=\"iwwqg\">How</strong> Proxima360 \n        <strong draggable=\"true\" id=\"i22w2\">is solving these issues<span draggable=\"true\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/build-applications-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"iuqfc\"> Build Applications with \n                Custom Screens. \n              </h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"i3343\">AI based size profiling to distribute  merchandise brick-n-mortar stores. \n            </li><br/><li id=\"i73m2\">Built-in complex grouping of stores and items based on size profiling.</li></ul></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"ixbmg\">System to upload spreadhseets directly into the allocation without having to key-in parameters.</li><br/><li id=\"ij89ha\">Custom dashboards to monitor workflow and increase efficiency.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/dashboard-licen-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators. \n              </h4></div></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/enhance-labour-licen-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency. \n              </h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ikc6i2\">Increase efficiency at the warehouse and stores by enhancing crossdock and receiving operations.</li><br/><li id=\"iwxjzw\">Reduced redundant and repetitive processes by automating related workflows.</li></ul></div></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"i4h335\">Let us help you have the \n            right merchandise at the \n            right place<span>.</span></strong></h1><div class=\"clearfix\">\n        </div><a href=\"#\"><button class=\"black_box\">Let’s Talk Now</button></a><p class=\"pull-right\"><strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\">\n        </div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#iijvl{font-weight:200;font-size:30px;}#ik67j{font-weight:400;}#i9y6{font-size:24px;font-weight:200;}#iqe1k{font-size:37px;}#i3343{font-size:24px;}#i73m2{font-size:24px;}#i22w2{font-size:36px;}#ielmp{font-size:36px;font-weight:400;}#iwwqg{font-size:36px;}#ixbmg{font-size:24px;}#ij89ha{font-size:24px;}#ikc6i2{font-size:24px;}#iwxjzw{font-size:24px;}#i4h335{font-size:60px;}#iuqfc{font-size:25px;font-weight:700;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(132, 'Stabilzation', 'stabilzation', '', '<div class=\"row\"><div class=\"cell\" id=\"ihyv\"><img id=\"itplg\" src=\"http://localhost/proxima/uploads/gallery/foot.jpg\" class=\"img-fluid\"/></div></div><div class=\"row\" id=\"ihvh\"><div class=\"cell\" id=\"iykk\"><section class=\"bdg-sect\"><h1 class=\"heading\">Insert title <a href=\"\" class=\"link\">herefgthftr</a></h1><p class=\"paragraph\">Lorem ipsum dolor sit <a href=\"\" class=\"link\">amet, consectetur adipiscing elit, sed do eiusmod</a> tempor incididunt ut labore et dolore magna aliqua</p></section></div><div class=\"cell\" id=\"i2ig\"></div></div><div class=\"row\"><div class=\"cell\"></div><div class=\"cell\"></div><div class=\"cell\"></div></div><div class=\"row\"><div class=\"cell\" id=\"i07rv\"></div><div class=\"cell\" id=\"iwizb\"></div></div>', '* { box-sizing: border-box; } body {margin: 0;}.row{display:table;padding:10px;width:100%;}.cell{width:8%;display:table-cell;height:75px;}#i07rv{width:30%;}#iwizb{width:70%;}#itplg{color:black;}@media (max-width: 768px){.cell{width:100%;display:block;}}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(133, 'About Us', 'about-us', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/about-us-banner-1504x1014.png\" class=\"img-fluid\"/></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><h1 id=\"igtbb\"><p id=\"i6upj\">We are retail experts. We are a consulting company, which can envision a product, implement a solution or blueprint your retail roadmap. If you are serious about retail innovation, allow our team of top minds to help you.\n          </p></h1></div></div></div></section><div class=\"container\"><div class=\"head1\"><div class=\"row1s\"><div class=\"col-lg-10\"><h1> The \n          <span>Story</span>.\n        </h1></div></div></div></div><section id=\"story\" class=\"ps-timeline-sec\">\n</section><div class=\"container\"><div class=\"head1\"><div class=\"row1s\"><div class=\"col-lg-10\"><h1> The \n          <span>Team</span>.\n        </h1></div></div></div></div><section id=\"team\">\n</section><section id=\"about\"><div class=\"container\"><div class=\"head1\"><div class=\"row1\"><div class=\"col-lg-10\"><h1 id=\"iebnb\"> The \n            <span id=\"i8kz8\">Company</span>.\n          </h1></div></div></div><div class=\"row no-gutters row-eq-height\"><div class=\"col-lg-6 text-center\"><div class=\"get\"><a href=\"#\"><button class=\"get_box\"> Get in Touch </button></a><img src=\"http://13.233.31.254/proxima/uploads/gallery/company.png\" class=\"img-fluid\"/></div></div><div id=\"ivgw9s\" class=\"col-lg-6\"><div class=\"red\"><p id=\"iaheg\">Proxima360 is an IT consulting company\n            with focus on retail like no other. We \n            strive on bringing together the best \n            talent pool depending on your business \n            needs. We understand that every \n            business has different needs and \n            operating budgets. We specialize on \n            catering a retail solution that meets your \n            business needs and budget. We are \n            here to guide your business as a lifeline \n            to select the best technical products and\n            implement the most productive and cost \n            effective method.\n          </p><p id=\"iwmse\">Our team of experts is ready to help you \n            develop strategies for not only surviving, \n            but thriving in the future. \n          </p></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.fade-scale .modal-dialog{position:absolute;left:0;right:0;top:50%;transform:translateY(-50%) !important;}.team-border .member-name, .team-border .member-job{color:#f80000 !important;font-weight:600;}.modal-body a{padding:7px 0px 0px 13px;background:#f80000 !important;color:#ffffff !important;width:37px;height:37px;border-radius:50px;display:inline-block;}.modal-body p{padding:20px 0px;}#igtbb{font-size:41px;}#iebnb{font-size:36px;}#i6upj{font-size:36px;font-weight:200;}#iaheg{font-size:24px;text-align:left;font-weight:300;}#iwmse{font-size:24px;font-weight:300;}#ivgw9s{background:#f80000;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(134, 'Podcast', 'podcast', '', '<section id=\"inbanner\"><div class=\"container\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/podcast-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"podbtm\"><div class=\"container\"><div id=\"podbord\"><div class=\"row\"><div class=\"col-lg-12 col-md-12 text-center\"><h2 id=\"ifok\"><span id=\"i2bemo\"> A deeply informative bi-weekly podcast. We cover current retail landscape, best of breed products\n              and retail business best practices. Tune in to listen to retail experts and community thinkers on retail \n              industries current trajectory as well as future projections.\n            </span></h2></div></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/followers.gif\" id=\"io84e\"/><h3>Followers \n          </h3><p>Global\n            <br/>\n            (5k+)\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/audience.jpg\" id=\"i173l\"/><h3>Audience\n          </h3><p>Retail Executives, \n            <br/>\n            Entreprenuers &amp; Enthusiasts\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/purpose.jpg\" id=\"ip9u4\"/><h3>Purpose \n          </h3><p>Information for Retail Innovative\n            <br/>\n            Practices and Solutions\n          </p></div></div></div></div></section><section id=\"podbtn\"><div class=\"container\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">All Episodes</button></a></div><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">Be Our Guest</button></a></div><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">Our Guest List</button></a></div></div></div></section><section id=\"feature\">\n</section><section id=\"podshare\"><div class=\"container text-center\"><div class=\"head1\"><h1 id=\"ikqluy\"> Check Full Episodes On \n      </h1></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-2\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/pod.jpg\" id=\"ix3jzu\"/></div><div class=\"col-lg-2\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/spot.jpg\" id=\"i7kreg\"/></div><div class=\"col-lg-2\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/gm.jpg\" id=\"iua52h\"/></div><div class=\"col-lg-2\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/youtube.jpg\" id=\"issg53\"/></div></div></div></section><section id=\"aired\"><div class=\"container\"><div class=\"head1\"><h1 id=\"idtaqe\">Recently \n        <span>Aired</span></h1></div><div class=\"row\"><div class=\"col-lg-8\"><div class=\"embed-responsive embed-responsive-16by9\"><iframe src=\"https://www.podbean.com/media/player/multi?playlist=http%3A%2F%2Fplaylist.podbean.com%2F8475955%2Fplaylist_multi.xml&vjs=1&size=430&skin=9&episode_list_bg=%23ffffff&bg_left=%23203149&bg_mid=%232B5691&bg_right=%23F69595&podcast_title_color=%23FC8B8B&episode_title_color=%23ffffff&auto=0&share=0&fonts=Helvetica&download=1&rtl=0&show_playlist_recent_number=4\" title=\"Retail Corner: New Normal in Retail Technology & Business\" scrolling=\"no\" id=\"in674m\" width=\"100%\" height=\"350px\" class=\"embed-responsive-item\"></iframe></div></div><div class=\"col-lg-4\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/sachin.jpg\" class=\"img-fluid\"/></div></div></div></section><section id=\"host\">\n</section><section id=\"newsletter\"><div class=\"container\"><div class=\"newsletter\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-6 text-center\"><h2>Subscribe to our Newsletter\n          </h2><p>Get latest news and information on our episodes\n          </p><div class=\"input-group\"><input type=\"email\" placeholder=\"Enter your email\" class=\"form-control\"/><span class=\"input-group-btn\"><button type=\"submit\" class=\"btn\"> Subscribe </button></span></div><h3 id=\"i46gwh\">Guest Enquiries: Send email to retailcorner@proxima360.com\n          </h3></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.head h1{margin-bottom:42px;}#demo img{width:100%;height:100%;}.newsletter{padding:80px 0;background:#fff url(\"assets/front/images/news-bg.jpg\") left bottom repeat-x;}.newsletter .content{margin:0 auto;text-align:center;z-index:2;}.newsletter h2{color:#203149;margin-bottom:10px;}.newsletter p{color:#203149;margin-bottom:40px;font-size:20px;}.newsletter h3{color:#fff;margin-bottom:0px;font-size:25px;margin-top:40px;}.newsletter .form-control{height:50px;border-color:#ffffff;border-radius:0;border:solid 1px #333;}.newsletter .content.form-control:focus{box-shadow:none;border:2px solid #243c4f;}.newsletter .btn{width:243px;height:50px;background:#f80000;border:0px solid #000;outline:1px solid #fff;outline-offset:-9px;font-size:27px;color:#fff;margin:0px 0px 0px 10px;}.newsletter .btn:hover{background:#203149;}iframe{height:473px !important;}.black_box{font-size:36px;}#in674m{border:none;}#i46gwh{color:#fdfdfd;}#ifok{font-weight:500;font-size:30px;}#idtaqe{font-size:36px;}#ikqluy{font-size:36px;}#i2bemo{font-weight:normal;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(135, 'Publications', 'publications', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"assets/front/images/blog-ban.jpg\" class=\"img-fluid\"/></div></section><br/><br/><section id=\"blog_pages\" class=\"padding-top cvb\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(136, 'Inner Blog', 'inner-blog', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"assets/front/images/blog-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"blog-details\" class=\"padding-top\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-9 col-sm-7\"><div class=\"row\"><div class=\"col-md-12 col-sm-12\"><div id=\"single-blog\" class=\"single-blog blog-details two-column\">\n            </div></div></div></div><div class=\"col-md-3 col-sm-5\"><div class=\"sidebar blog-sidebar\"><div id=\"post\" class=\"sidebar-item recent\">\n          </div><div id=\"categories\" class=\"sidebar-item categories\">\n          </div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}.ssbats-social-share-buttons a{display:inline-block;color:#333333;background-color:#ffffff;text-decoration:none;font-size:14px;font-weight:400;border:1px solid #999999;padding:2px 10px;border-radius:4px;margin:5px 5px 5px 0;cursor:pointer;box-shadow:1px 1px 2px rgba(0,0,0,.25);transition:150ms ease-in-out;}.ssbats-social-share-buttons a span:before{content:\'\';width:14px;height:14px;display:inline-block;font-weight:400;margin-right:5px;margin-bottom:-1px;background-repeat:none;filter:invert(100%) brightness(20%);transition:150ms ease-in-out;}.ssbats-social-share-buttons a.ssbats-share-facebook span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/facebook.svg\');}.ssbats-social-share-buttons a.ssbats-share-twitter span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/twitter.svg\');}.ssbats-social-share-buttons a.ssbats-share-linkedin span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/linkedin.svg\');}.ssbats-social-share-buttons a.ssbats-share-pinterest span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/pinterest.svg\');}.ssbats-social-share-buttons a.ssbats-share-tumblr span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/tumblr.svg\');}.ssbats-social-share-buttons a.ssbats-share-reddit span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/reddit.svg\');}.ssbats-social-share-buttons a.ssbats-share-whatsapp span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/whatsapp.svg\');}.ssbats-social-share-buttons a.ssbats-share-telegram span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/telegram.svg\');}.ssbats-social-share-buttons a.ssbats-share-pocket span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/pocket.svg\');}.ssbats-social-share-buttons a:hover{background-color:#333333;color:#ffffff;box-shadow:0 0 6px rgba(0,0,0,.5);}.ssbats-social-share-buttons a:hover span:before{filter:invert(100%);}.ssbats-social-share-buttons a.ssbats-share-facebook:hover{background-color:#1877f2;border-color:#1877f2;}.ssbats-social-share-buttons a.ssbats-share-twitter:hover{background-color:#1da1f2;border-color:#1da1f2;}.ssbats-social-share-buttons a.ssbats-share-linkedin:hover{background-color:#0077b5;border-color:#0077b5;}.ssbats-social-share-buttons a.ssbats-share-pinterest:hover{background-color:#bd081c;border-color:#bd081c;}.ssbats-social-share-buttons a.ssbats-share-tumblr:hover{background-color:#36465d;border-color:#36465d;}.ssbats-social-share-buttons a.ssbats-share-reddit:hover{background-color:#ff4500;border-color:#ff4500;}.ssbats-social-share-buttons a.ssbats-share-whatsapp:hover{background-color:#25d366;border-color:#25d366;}.ssbats-social-share-buttons a.ssbats-share-telegram:hover{background-color:#2ca5e0;border-color:#2ca5e0;}.ssbats-social-share-buttons a.ssbats-share-pocket:hover{background-color:#ef3f56;border-color:#ef3f56;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(137, 'Adivino', 'advino', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/Proxima360-adivino-banner-1504x1016.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1 id=\"idy2\"><strong id=\"ijev\">What if you can tweak your</strong><span id=\"iwm86\"> finance \n          forecast model </span><strong id=\"i61y3\">to match your</strong><br/><strong id=\"i0bk5\">real-world experience</strong><br/><strong id=\"ifdpd\">and objectives?</strong></h1><p id=\"i36xa\"> Get your FP&amp;A <span draggable=\"true\" data-highlightable=\"1\" id=\"iwzzj\">machine learning </span> assistant. \n      </p><a href=\"#\"><button class=\"prod_box\">REQUEST A DEMO</button></a></div></div></section><section id=\"pro-head\"><h1><strong id=\"icacg\">adivino (<span id=\"iehab\">ah-dee-bee-noh</span>)</strong><br/>\n    The \n    <strong id=\"ihhe3\">fortune-teller</strong> for your retail business.\n  </h1></section><section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3 id=\"iz0d8\"><strong id=\"iljzt\"> Machine learning assisted </strong><br/>\n            cash-flow forecasting\n            <strong>.</strong></h3><p id=\"i275j\">Let your strategies and finance objectives\n            be an input to the forecast model\n            to generate cash-flow goals.\n          </p><a href=\"#\"><button class=\"red_box\">I need demo</button></a></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3 id=\"ixize\"><strong id=\"iabcn\">Generate</strong> sales forecast\n            <br/><strong id=\"igevf\">for unprecedented times.</strong></h3><p id=\"i0ttu\">Trust your experience and adjust forecast \n            model parameters to figure out forecasted \n            sales to optimally allocate merchandise.\n          </p><a href=\"#\"><button class=\"red_box\">Get me access</button></a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3 id=\"icq3v\"><strong id=\"ins5c\">Generate smart strategies\n              for</strong> payments \n            <strong id=\"ik5jb\">and</strong> collections.\n          </h3><p>Determine optimal payment and collection \n            strategies to meet cash-flow goals and \n            deadlines.\n          </p><a href=\"#\"><button class=\"red_box\"> Can we talk? </button></a></div></div></div></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-11 col-md-12 offset-1\"><h1 id=\"irovkj\">\n          You’ve got a <strong id=\"i4yfru\">database?</strong> We got the connectors. \n          <br/><strong>Dashboard</strong> of your choice? No problem. \n          <br/>\n          Quick and easy setup. \n          <strong id=\"igye5i\">SaaS</strong> at its best.\n        </h1></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/adivino-logo-500x130.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail \n          <strong>Experts.</strong><br/><strong>Powered by</strong> MIT \n          <strong>Data Scientists.</strong></h2><div class=\"clearfix\">\n        </div><br/><br/><a href=\"#\"><button class=\"black_box\">Get in Touch</button></a><div class=\"clearfix\">\n        </div></div></div></div></section><br/><br/>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#ijev{font-size:55px;font-weight:700;}#iwm86{font-size:55px;}#i61y3{font-size:55px;}#i0bk5{font-size:55px;}#ifdpd{font-size:55px;}#i36xa{font-weight:400;margin:0 0 -39px 0;padding:29px 0 0 0;font-size:28px;}#icacg{font-weight:300;}#ihhe3{font-weight:300;}#iljzt{font-size:40px;font-weight:600;}#iz0d8{font-size:40px;}#ixize{font-size:40px;}#iabcn{font-size:40px;font-weight:600;}#igevf{font-size:40px;font-weight:600;}#icq3v{font-size:40px;}#ins5c{font-size:40px;font-weight:600;}#ik5jb{font-size:38px;font-weight:400;}#irovkj{font-size:50px;}#i4yfru{font-size:50px;}#igye5i{font-size:50px;}#idy2{margin:23.45px 0 23.45px 0;}#i275j{font-size:24px;}#i0ttu{font-size:27px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(138, 'Contact', 'contact', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://13.233.31.254/proxima/uploads/gallery/contact-banner.jpg\" class=\"img-fluid\"/></div></section><section class=\"contact-page-section\"><div class=\"container cb\"><h2 id=\"iprg\">Looking to talk more with us regarding the Services/Solutions we offer, or having issues with your current retail implementation. Use your preferred choice to contact us.\n    </h2><div id=\"i1zkj\">\n    </div><div class=\"inner-container\"><div class=\"row clearfix\"><!--Info Column--><div class=\"info-column col-md-5 col-sm-12 col-xs-12\"><div class=\"info-content\"><h3 id=\"invqs\">Sales Enquiries\n            </h3><p id=\"ir4pm\">Call: +1 781-381-4101\n              <br/>\n              Email: \n              <a href=\"mailto:sales@proxima360.com\">sales@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"iefwj\">Podcast\n            </h3><p id=\"ita43\">For Retail Corner podcast’s general/guest\n              enquiry.\n            </p><br/><p id=\"i83hv\">Email: \n              <a href=\"mailto:retailcorner@proxima360.com\">retailcorner@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"i0c76\">Media\n            </h3><p id=\"iym8l\">Email: \n              <a href=\"mailto:social@proxima360.com\">social@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"iff6j\">Location\n            </h3><p id=\"idt8x\">UNITED STATES\n            </p><p id=\"iwl9m\">325 wood rd. suite 103, Braintree, MA 02184\n            </p><div id=\"icx8e\">\n            </div><p id=\"i3s7n\">INDIA\n            </p><p id=\"ixrap\">Divine Hive Space, Whitefield Road, Near Ramalayam, Kondapur, Hyderabad-500084\n            </p></div></div><!--Form Column--><div class=\"col-md-7 col-sm-12 col-xs-12\"><div class=\"contact-form\"><h3 id=\"i3al6\">Give your retail business wings of fire.\n              <br/>\n              Get in touch with us.\n            </h3><div id=\"message\">\n            </div><form method=\"post\" action=\"\" id=\"contact-form\"><div class=\"row clearfix\"><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"i6g0b\">Name: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12\"><input type=\"text\" name=\"name\" value=\"\" required id=\"i9iyi\" class=\"form-control\"/></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"ijzye\">Email: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12\"><input type=\"email\" name=\"email\" value=\"\" required class=\"form-control\"/></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"i7xkp\">Purpose: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12s\"><div class=\"input-group\"><select name=\"purpose\" id=\"sel1\" class=\"form-control\"><option value=\"Please Select Security Question\">Please Select Security Question</option><option value=\"Which is your favorite movie?\">Which is your favorite movie?</option><option value=\"What is your pet\'s name?\">What is your pet&#039;s name?</option><option value=\"What is the name of your village?\">What is the name of your village?</option></select></div></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"ivvqk\">Message: </label></div><div class=\"form-group col-md-9 col-sm-12 co-xs-12\"><textarea name=\"message\"></textarea></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><div id=\"image_captcha\" class=\"form-group col-md-10 col-sm-12 co-xs-12\">\n                  </div></div><div class=\"form-group col-md-9 col-sm-12 co-xs-12\"><input type=\"text\" id=\"captcha1\" name=\"captcha\" class=\"form-control\"/></div><div class=\"form-group col-md-9 offset-3 col-sm-12 co-xs-12\"><button type=\"submit\" class=\"black_box\"><p id=\"ikd1dh\">Submit\n                    </p></button></div></div></form></div></div></div></div></div></section>', '', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(139, 'Store merchandising forecast', 'store-merchandising-forecast', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1>Inventory Allocation</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(140, 'POS & Square', 'pos-&-square', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iqu4\">POS &amp; Square</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive');
INSERT INTO `tbl_pages` (`id`, `page_name`, `route`, `page_layout`, `html`, `css`, `form_ref`, `meta_title`, `meta_keyword`, `meta_description`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`, `status`) VALUES
(141, 'POS and Square', 'pos-and-square', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"ip4i\">POS &amp; Square</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(142, 'Merchandising Forecast', 'merchandising-forecast', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"izhj\">Merchandising Forecast</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(143, 'Revenue Per Customer', 'revenue-per-customer', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"i72b\">Revenue Per Customer Footwear</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(144, 'Retail Accounting', 'retail-accounting', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iu38\">Retail Accounting</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(145, 'Payroll Tracking', 'payroll-tracking', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"i14u\">Payroll Tracking</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(146, 'E-Commerce', 'e-commerce', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"ify4\">E-Commerce</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"ikzwt\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iztbj\">Merchandise Forecast</a></li><li><a href=\"\" id=\"ilzm7\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(147, 'ReKount', 'rekount', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/adivino-banner.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1><strong>What if you can tweak your</strong> <span>finance forecast model </span> <strong>to match your</strong> <br/> <strong>real-world experience</strong> <br/> <strong>and objectives?</strong></h1><p> Get your FP&amp;A a <span> machine learning </span> assistant.</p> <a href=\"#\"> <button class=\"prod_box\">REQUEST A DEMO</button> </a></div></div> </section> <section id=\"pro-head\"><h1><strong>adivino (<span>ah-dee-bee-noh</span>)</strong><br/> The <strong>fortune-teller</strong> for your retail business.</h1> </section> <section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3> <strong> Machine learning assisted </strong><br/> cash-flow forecasting<strong>.</strong></h3><p>Let your strategies and finance objectives be an input to the forecast model to generate cash-flow goals.</p> <a href=\"#\"> <button class=\"red_box\">I need demo</button> </a></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3> <strong>Generate</strong> sales forecast<br/> <strong>for unprecedented times.</strong></h3><p>Trust your experience and adjust forecast model parameters to figure out forecasted sales to optimally allocate merchandise.</p> <a href=\"#\"> <button class=\"red_box\">Get me access</button> </a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong>Generate smart strategies for</strong> payments <strong>and</strong> collections.</h3><p>Determine optimal payment and collection strategies to meet cash-flow goals and deadlines.</p> <a href=\"#\"> <button class=\"red_box\"> Can we talk? </button> </a></div></div></div></div> </section> <section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1><strong>You’ve got a database?</strong> We got the connectors. <br/> Dashboard of your choice? No problem. <br/> Quick and easy setup. <strong>SaaS at its best.</strong></h1></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"> <img src=\"assets/front/images/adivino-logo.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail <strong>Experts.</strong><br/> <strong>Powered by</strong> MIT <strong>Data Scientists.</strong></h2><div class=\"clearfix\"></div> <br/> <br/> <a href=\"#\"> <button class=\"black_box\">Get in Touch</button> </a><div class=\"clearfix\"></div></div></div></div> </section> <br/> <br/>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(148, 'Adivino', 'adivino', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/adivino-banner.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1><strong>What if you can tweak your</strong> <span>finance forecast model </span> <strong>to match your</strong> <br/> <strong>real-world experience</strong> <br/> <strong>and objectives?</strong></h1><p> Get your FP&amp;A a <span> machine learning </span> assistant.</p> <a href=\"#\"> <button class=\"prod_box\">REQUEST A DEMO</button> </a></div></div> </section> <section id=\"pro-head\"><h1><strong>adivino (<span>ah-dee-bee-noh</span>)</strong><br/> The <strong>fortune-teller</strong> for your retail business.</h1> </section> <section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3> <strong> Machine learning assisted </strong><br/> cash-flow forecasting<strong>.</strong></h3><p>Let your strategies and finance objectives be an input to the forecast model to generate cash-flow goals.</p> <a href=\"#\"> <button class=\"red_box\">I need demo</button> </a></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3> <strong>Generate</strong> sales forecast<br/> <strong>for unprecedented times.</strong></h3><p>Trust your experience and adjust forecast model parameters to figure out forecasted sales to optimally allocate merchandise.</p> <a href=\"#\"> <button class=\"red_box\">Get me access</button> </a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong>Generate smart strategies for</strong> payments <strong>and</strong> collections.</h3><p>Determine optimal payment and collection strategies to meet cash-flow goals and deadlines.</p> <a href=\"#\"> <button class=\"red_box\"> Can we talk? </button> </a></div></div></div></div> </section> <section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1><strong>You’ve got a database?</strong> We got the connectors. <br/> Dashboard of your choice? No problem. <br/> Quick and easy setup. <strong>SaaS at its best.</strong></h1></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"> <img src=\"assets/front/images/adivino-logo.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail <strong>Experts.</strong><br/> <strong>Powered by</strong> MIT <strong>Data Scientists.</strong></h2><div class=\"clearfix\"></div> <br/> <br/> <a href=\"#\"> <button class=\"black_box\">Get in Touch</button> </a><div class=\"clearfix\"></div></div></div></div> </section> <br/> <br/>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_layout`
--

CREATE TABLE `tbl_page_layout` (
  `id` int(10) NOT NULL,
  `html` text NOT NULL,
  `css` text NOT NULL,
  `layout_name` varchar(75) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page_layout`
--

INSERT INTO `tbl_page_layout` (`id`, `html`, `css`, `layout_name`, `status`, `deleted`) VALUES
(5, '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\" /><div class=\"solban-text\"><h1>Inventory Allocation</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS & Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i class=\"fa fa-file-pdf-o\" aria-hidden=\"true\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\" /><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6 \"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\" /><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6 \"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\" /><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant & repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</strong></span></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\" black_box \">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\" /></div></div></div> </section>', '', 'solution', 'Active', 0),
(6, '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/adivino-banner.png\" class=\"img-fluid\" /><div class=\"prod-ban\"><h1><strong>What if you can tweak your</strong> <span>finance forecast model </span> <strong>to match your</strong> <br/> <strong>real-world experience</strong> <br/> <strong>and objectives?</strong></h1><p> Get your FP&A a <span> machine learning </span> assistant.</p> <a href=\"#\"> <button class=\"prod_box\">REQUEST A DEMO</button> </a></div></div> </section> <section id=\"pro-head\"><h1><strong>adivino (<span>ah-dee-bee-noh</span>)</strong><br/> The <strong>fortune-teller</strong> for your retail business.</h1> </section> <section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div class=\"col-lg-6 col-md-6 wow fadeInLeftBig\" data-wow-duration=\"800ms\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\" /></div></div><div class=\"col-lg-6 col-md-6 wow fadeInRightBig\" data-wow-duration=\"800ms\"><h3> <strong> Machine learning assisted </strong><br/> cash-flow forecasting<strong>.</strong></h3><p>Let your strategies and finance objectives be an input to the forecast model to generate cash-flow goals.</p> <a href=\"#\"> <button class=\" red_box \">I need demo</button> </a></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6 wow fadeInLeftBig\" data-wow-duration=\"800ms\"><h3> <strong>Generate</strong> sales forecast<br/> <strong>for unprecedented times.</strong></h3><p>Trust your experience and adjust forecast model parameters to figure out forecasted sales to optimally allocate merchandise.</p> <a href=\"#\"> <button class=\" red_box \">Get me access</button> </a></div><div class=\"col-lg-6 col-md-6 wow fadeInRightBig\" data-wow-duration=\"800ms\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\" /></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6 wow fadeInLeftBig\" data-wow-duration=\"800ms\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\" /></div></div><div class=\"col-lg-6 col-md-6 wow fadeInRightBig\" data-wow-duration=\"800ms\"><h3><strong>Generate smart strategies for</strong> payments <strong>and</strong> collections.</h3><p>Determine optimal payment and collection strategies to meet cash-flow goals and deadlines.</p> <a href=\"#\"> <button class=\"red_box\"> Can we talk? </button> </a></div></div></div></div> </section> <section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1><strong>You’ve got a database?</strong> We got the connectors. <br/> Dashboard of your choice? No problem. <br/> Quick and easy setup. <strong>SaaS at its best.</strong></h1></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"> <img src=\"assets/front/images/adivino-logo.png\" class=\"img-fluid\" /><h2><strong>Envisioned by</strong> Retail <strong>Experts.</strong><br/> <strong>Powered by</strong> MIT <strong>Data Scientists.</strong></h2><div class=\"clearfix\"></div> <br/> <br/> <a href=\"#\"> <button class=\" black_box \">Get in Touch</button> </a><div class=\"clearfix\"></div></div></div></div> </section> <br/> <br/>', '', 'product', 'Active', 0),
(7, '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/sample-ban.jpg\" class=\"img-fluid\" /></div> </section><section id=\"sample\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-9 col-12\"><div class=\"head\"><h1> Page <span>Heading </span></h1></div><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div class=\"col-lg-3 col-md-3 col-12\"><img src=\"assets/front/images/aboutus-sidebar.jpg\" class=\"img-fluid\" /> <br/><br/> <img src=\"assets/front/images/sidebar-small-retailcorner-podcast-250x250-1.jpg\" class=\"img-fluid\" /><br/><br/></div></div></div> </section>', '', 'sample', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_podcast_slider`
--

CREATE TABLE `tbl_podcast_slider` (
  `id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `page_name` varchar(150) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `button_name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_podcast_slider`
--

INSERT INTO `tbl_podcast_slider` (`id`, `type`, `page_name`, `name`, `image`, `button_name`, `link`, `short_desc`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(1, 'home-banner', 'Home', '', 'uploads/podcast/banner.jpg', '', '', '<p>RETAIL</p>\r\n        <h1>Human Powered Machine Learning for <span>Finance</span> </h1>\r\n        <a href=\"#\"> See what it can do for you. <i class=\"fa fa-arrow-circle-down\" aria-hidden=\"true\"></i> </a>', 'Active', '2021-03-12', '2021-03-12', 0),
(2, 'featured-guests', 'Podcast', '   Devavrat Shah, Ph.D.Head, \r\n          Data Science. MIT', 'uploads/podcast/devavrat9.jpg', ' Listen Podcast ', 'http://localhost/proxima/admin/podcast/edit/2', '<p><span style=\"color: rgb(100, 99, 99); font-family: \"Proxima Nova\"; font-size: 36px; letter-spacing: 0.5px; text-align: center;\">“Whether it is retail finance, merchandising, planning, or distribution, every decision fundametally relies on accurately forecasting the demand for the product.”</span><br></p>', 'Active', '2021-03-12', '2021-03-12', 0),
(3, 'featured-guests', 'Podcast', 'Devavrat Shah, Ph.D.Head,\r\n Data Science. MIT', 'uploads/podcast/devavrat10.jpg', ' Listen Podcast ', 'http://13.233.31.254/proxima/podcast', '<p><span style=\"color: rgb(100, 99, 99); font-family: \"Proxima Nova\"; font-size: 36px; letter-spacing: 0.5px; text-align: center;\">“Whether it is retail finance, merchandising, planning, or distribution, every decision fundametally relies on accurately forecasting the demand for the product.”</span><br></p>', 'Active', '2021-03-12', '2021-03-12', 0),
(4, 'host', 'Podcast', '', 'uploads/podcast/host2.jpg', '', '', '', 'Active', '2021-03-12', '2021-03-12', 0),
(5, 'host', 'Podcast', '', 'uploads/podcast/host1.jpg', '', '', '', 'Active', '2021-03-12', '2021-03-12', 0),
(6, 'host', 'Podcast', '', 'uploads/podcast/host.jpg', '', '', '', 'Active', '2021-03-12', '2021-03-12', 0);

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
(1, 'uploads/solutions/payroll_track.jpg', 'Store Payroll Control and Tracking', 'Left', '_self', 'Image', 'store-payroll-control-and-tracking', 'Store Payroll Control and Tracking', 'Active', 0, '2021-02-19', '2021-03-08'),
(2, 'uploads/solutions/rev_cust_footwear.jpg', 'Revenue per Customer Footwear', 'Right', '_blank', 'Image', 'revenue-per-customer-footwear', 'Revenue per Customer Footwear', 'Active', 0, '2021-02-19', '2021-03-08'),
(4, 'uploads/solutions/merch_forecast-2.jpg', 'Store Merchandising Forecast', 'Right', '_blank', 'Image', 'store-merchandising-forecast', 'Store Merchandising Forecast', 'Active', 0, '2021-02-19', '2021-03-08'),
(5, 'uploads/solutions/allocation.jpg', 'PAYMENT PROCESSING', 'Left', '_self', 'Text', 'payment-processing', 'Implementing Square Terminal with Legacy POS system', 'Active', 0, '2021-02-25', '2021-03-12'),
(6, '', 'Retail Solutions & Services', 'Left', '_self', 'Heading', 'retail-solutions-services', 'We Help Retailers\r\nAchieve Gameplan.', 'Active', 0, '2021-03-09', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stories`
--

CREATE TABLE `tbl_stories` (
  `id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `year` varchar(150) NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `deleted` bigint(2) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stories`
--

INSERT INTO `tbl_stories` (`id`, `image`, `text`, `year`, `status`, `deleted`, `created_date`, `updated_date`) VALUES
(2, 'uploads/story/1997.png', 'First Oracle (RETEK) Implementation in North America', '1997', 'Active', 0, '2021-03-02', '0000-00-00'),
(3, 'uploads/story/2008.png', 'Integrated BI analytics platform for merchandising, HR & finance', '2008', 'Active', 0, '2021-03-02', '0000-00-00'),
(4, 'uploads/story/2016.png', 'First global rollout on a single instance platform', '2016', 'Active', 0, '2021-03-02', '0000-00-00'),
(5, 'uploads/story/2019.png', 'RILA award for the best supply chain initiative', '2019', 'Active', 0, '2021-03-02', '0000-00-00'),
(6, 'uploads/team/20218.png', 'Innovative Machine Learning forecasting tool for finance', '2021', 'Active', 0, '2021-03-02', '2021-03-02');

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
(1, '1', 'About Us ', 'about-us', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-02-25'),
(2, '1', 'Leadership', 'Leadership', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 1, '2021-02-19', '0000-00-00'),
(3, '2', 'Store merchandising forecast', 'Store merchandising forecast', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-01'),
(4, '2', 'Optimization', 'Optimization', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 1, '2021-02-19', '0000-00-00'),
(5, '2', 'Retail Accounting', 'Retail Accounting', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-10'),
(6, '2', 'POS & Square (Payments)', 'pos-and-square', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-11'),
(7, '3', 'Adivino', 'adivino', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(8, '3', 'Rekount', 'rekount', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(9, '2', 'Allocation', 'Allocation', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-10'),
(10, '2', 'Revenue per Customer Footwear', 'Revenue per Customer Footwear', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-10'),
(11, '2', 'Merchandising Forecast', 'Merchandising Forecast', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-10'),
(12, '2', 'Payroll Tracking.', 'Payroll Tracking.', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-03-10'),
(13, '7', 'About', 'about', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(14, '7', 'What We Do', 'what we do', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(15, '7', 'Careers', 'careers', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(16, '7', 'Contact', 'contact', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(17, '8', 'About', 'about-us', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-02-22', '2021-03-10'),
(18, '8', 'Podcast', 'Podcast', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-22', '2021-03-10'),
(19, '8', 'Careers', 'Careers', 'Footer', 'Inactive', 'Active', '_blank', 'Inactive', 0, '2021-02-22', '0000-00-00'),
(20, '8', 'Contact us', 'Contact us', 'Footer', 'Inactive', 'Active', '_blank', 'Inactive', 1, '2021-02-22', '2021-03-10'),
(21, '3', 'Adivino', 'adivino', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-03-01', '2021-03-11'),
(22, '3', 'Rekount', 'Rekount', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 0, '2021-03-01', '2021-03-10'),
(23, '8', 'News & Views', 'news-n-views', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-03-10', '0000-00-00'),
(24, '8', 'Contact us', 'contact', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-03-10', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(150) NOT NULL,
  `linkdin_acc` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `image`, `linkdin_acc`, `designation`, `short_desc`, `long_desc`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(2, 'Anil Varghese', 'uploads/team/Anil_Varghese-250x2501.png', 'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQHeLGM71PSqeQAAAXfuLGGwOv_2dRAUOofbrn_8VOpbC3BLl2dqb-9Lzy9ONA66ykQyYfITnK_zrKVzVJUs0a1tMPfNpS7gYl_g-', 'CEO', '', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers.', 'Active', '2021-03-01', '2021-03-09', 0),
(5, 'Bharat Agrawal', 'uploads/team/Bharat_Agrawal-250x250.png', 'https://www.linkedin.com/in/bharat-agrawal-444669/', 'Chairman', '\" I believe in offering creative solutions for complex problems to our customers. \"', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers', 'Active', '2021-03-02', '2021-03-09', 0),
(6, 'Saurabh Kulshretha', 'uploads/team/Saurabh_Kulshretha-250x2501.png', 'https://www.linkedin.com/in/saurabh-kulshrestha-5aa2621b/', 'Managing Director, India', '', '', 'Active', '2021-03-09', '2021-03-09', 0),
(7, 'Sachin Kumar Bhate', 'uploads/team/Sachin_Kumar_Bhate-250x250.png', 'https://www.linkedin.com/in/sachinkumarbhate/', 'Director, Marketing & Innovation', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(8, 'Carlos Diaz', 'uploads/team/Carlos_Diaz-250x250.png', 'https://www.linkedin.com/in/carlos-diaz-525057198/', 'Director, Sales & Business Development', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(9, 'Pence Jacob', 'uploads/team/Pence_Jacob-250x250.png', 'https://www.linkedin.com/in/pence-jacob-pmp-8352652/', 'Director, Soultions Delivery', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(10, 'Vijayalaxmi Pamidi', 'uploads/team/Vijayalakshmi_Pamidi-250x250.png', 'https://www.linkedin.com/in/vijayalakshmi-pamidi-2a871233/', 'Software Engineer-Oracle Retail', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(11, 'Tarannum', 'uploads/team/Tarannum-250x250.png', 'https://www.linkedin.com/in/tarannum-r-29580820/', 'Program Manager', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(12, 'Maheshwari Appuswamy', 'uploads/team/Maheshwari_Appuswamy.png', 'https://www.linkedin.com/in/maheshwari-appuswamy-189b4319/', 'Enterprise Architect', '', '', 'Active', '2021-03-09', '0000-00-00', 0);

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
(4, 'uploads/publications/blog1123.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-03-08'),
(5, 'uploads/publications/blog1122.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-03-08'),
(6, 'blog147.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 1, '0000-00-00'),
(7, 'uploads/publications/blog1121.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-03-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_auths`
--
ALTER TABLE `tbl_auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blocks`
--
ALTER TABLE `tbl_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
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
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page_layout`
--
ALTER TABLE `tbl_page_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_podcast_slider`
--
ALTER TABLE `tbl_podcast_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stories`
--
ALTER TABLE `tbl_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
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
-- AUTO_INCREMENT for table `tbl_blocks`
--
ALTER TABLE `tbl_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tbl_page_layout`
--
ALTER TABLE `tbl_page_layout`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_podcast_slider`
--
ALTER TABLE `tbl_podcast_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_stories`
--
ALTER TABLE `tbl_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_publications`
--
ALTER TABLE `tb_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
