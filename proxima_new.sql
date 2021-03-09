-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 05:46 PM
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
(1, '1234', 'Proxima', 'superadmin@proxima.com', 0, '', '668a33560bd99b6d2bb43c9bae162a185db8537bd429ed4527919ab89b3a7d9c11b2291a3785e6ab7a4548023eabec9ea5040050016f6f39f4bc4e022ec36482030TtLJiUA412xZMY/75alrrencmDfbQ', 1, 'Active', 0, '2018-08-14 00:00:00', '2021-03-09 13:27:51');

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
(1, 'uploads/blog/blog1140.jpg', 'uploads/blog/926.jpg', 'Lorem ipsum', 'Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience.', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.become essential to daily work life.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-09', '0000-00-00', 0),
(2, 'uploads/blog/blog1136.jpg', 'uploads/blog/922.jpg', 'Dolor sit amet', 'if you want same string output then \r\n\r\n', 'if you want same string output then try below else use without double quotes for proper outputPodcasting', 'Jay Feldman', 'How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-05', '0000-00-00', 0),
(3, 'uploads/blog/blog1130.jpg', 'uploads/blog/916.jpg', 'Adipisicing elit', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(4, 'uploads/blog/blog1127.jpg', 'uploads/blog/913.jpg', 'Sed do', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(5, 'uploads/blog/blog1133.jpg', 'uploads/blog/919.jpg', 'Eiusmod', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(6, 'uploads/blog/blog1125.jpg', 'uploads/blog/911.jpg', 'Mockup', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(7, 'uploads/blog/blog1131.jpg', 'uploads/blog/917.jpg', 'Ut enim ad minim', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.\r\n\r\n', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-04', '0000-00-00', 0),
(9, 'uploads/blog/blog1129.jpg', 'uploads/blog/915.jpg', 'Veniam, quis nostrud', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.', 'rajkumar', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-infor', 'Active', '2021-03-09', '0000-00-00', 0);

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
(420, 'uploads/gallery/host.jpg', '', 'Active', '2021-03-03', '0000-00-00', 1, 0, 0),
(421, 'uploads/gallery/blog-ban.jpg', '', 'Active', '2021-03-04', '0000-00-00', 1, 0, 0),
(422, 'uploads/gallery/project1.jpg', '', 'Active', '2021-03-04', '0000-00-00', 1, 0, 0),
(423, 'uploads/gallery/project2.jpg', '', 'Active', '2021-03-04', '0000-00-00', 1, 0, 0),
(424, 'uploads/gallery/project3.jpg', '', 'Inactive', '2021-03-04', '0000-00-00', 1, 1, 1),
(425, 'uploads/gallery/9.jpg', '', 'Active', '2021-03-04', '0000-00-00', 1, 0, 0),
(426, 'uploads/gallery/devavrat1.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(427, 'uploads/gallery/adivino-banner.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(428, 'uploads/gallery/advino-1.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(429, 'uploads/gallery/advino-2.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(430, 'uploads/gallery/advino-3.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(431, 'uploads/gallery/adivino-logo.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(432, 'uploads/gallery/abt-ban1.png', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0),
(433, 'uploads/gallery/contact-banner.jpg', '', 'Active', '2021-03-08', '0000-00-00', 1, 0, 0);

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
(25, 'Chrome 88.0.4324.190', 'Windows 10', '::1', '2021-03-04 08:53:47'),
(26, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-05 09:10:44'),
(27, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-05 14:39:27'),
(28, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-05 14:59:12'),
(29, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-05 17:55:48'),
(30, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-05 18:00:32'),
(31, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-08 09:00:34'),
(32, 'Chrome 89.0.4389.72', 'Windows 10', '::1', '2021-03-08 12:28:10'),
(33, 'Chrome 89.0.4389.82', 'Windows 10', '::1', '2021-03-09 08:57:16'),
(34, 'Chrome 89.0.4389.82', 'Windows 10', '::1', '2021-03-09 09:31:30'),
(35, 'Chrome 89.0.4389.82', 'Windows 10', '::1', '2021-03-09 12:27:51');

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
(1, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/instagram.com\\/\",\"linkedin\":\"https:\\/\\/linkedin.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\"}'),
(2, 'contact', '{\"mobile_number\":\"781-848-3867\",\"email\":\"info@proxima360.com\",\"details\":\"We\\u2019re available by phone (888.492.7297) and chat every day from 9 a.m.\\u201310 p.m. ET.\"}'),
(6, 'copyright', 'Copyright 2019-2021 Proxima360. All Rights Reserved.'),
(11, 'image', 'logo2.png');

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
(130, 'Home', 'home', '', '<div class=\"clearfix\">\n</div><section id=\"banner\"><div class=\"container\"><div class=\"ban-img\"><img src=\"assets/front/images/banner.jpg\" class=\"img-fluid\"/><div class=\"ban-text\"><p>RETAIL\n        </p><h1>Human Powered Machine Learning for \n          <span>Finance</span></h1><a href=\"#\"> See what it can do for you. <i aria-hidden=\"true\" class=\"fa fa-arrow-circle-down\">\n          </i> </a></div></div></div></section><section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row\"><div class=\"col-lg-7 col-md-6\"><div class=\"content colour-1\"><h2> Retail FP&amp;A Solution\n              </h2><h3><strong>Enhancing Financial\n                  Decisions with Machine\n                  Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6\"><div class=\"content12 colour-3\"><div class=\"leftcorner\">\n              </div><div class=\"rightcorner\">\n              </div><img src=\"assets/front/images/advino.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"#\"><img src=\"assets/front/images/arrow.png\"/></a></span><h2> ADIVINO \n                </h2><h3> Human Powered Machine Learning for Finance \n                </h3></div></div></div></div></div></div></div></section><section id=\"quote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-1\"><h2>“Whether it’s Retail Finance, Merchandising, Planning, or\n          Distribution, Every Decision Fundametally relies on\n          Accurately Forecasting the Demand for the Products.” \n        </h2><address>\n          - Head, Data Science, MIT\n        </address></div></div></div></section><section id=\"simply\"><div class=\"container\"><div class=\"simply\"><div class=\"row\"><div class=\"col-lg-9 col-md-9\"><h1>We Create Solutions that Simplifies Your Retail Operational Landscape \n          </h1></div><div class=\"col-lg-3 col-md-3\"><a href=\"#\"><button class=\"btn btn-outline-light btn-lg\">Request for consult </button></a></div></div><div class=\"clearfix\">\n      </div></div></div></section><section id=\"solutions\">\n</section><section id=\"abt\"><div class=\"container abb\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><div class=\"row\"><div class=\"col-lg-6 col-md-6\"><div class=\"bo\"><h2>About Us\n              </h2><p>Proxima360 is a high impact solutions management consulting company. We address critical business needs within the complex retail landscape. Our holistic approach in implementing retail solutions will optimize operations and improve revenue. \n              </p><a href=\"#\"> Check out Our Journey <i aria-hidden=\"true\" class=\"fa fa-arrow-circle-right\">\n                </i> </a></div></div><div class=\"col-lg-5 col-md-6 offset-1\"><div class=\"content12 colour-2\"><a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\"> <img src=\"assets/front/images/abt-bg.png\" class=\"img-fluid\"/></a><div id=\"myModal\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\" class=\"modal fade\"><div role=\"document\" class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-body\"><button type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\" class=\"close\"> <span aria-hidden=\"true\">×</span> </button><!-- 16:9 aspect ratio --><div class=\"embed-responsive embed-responsive-16by9\"><iframe allowfullscreen=\"allowfullscreen\" src=\"https://www.youtube.com/embed/SSqenk1uLLw?\" allowscriptaccess=\"always\" allow=\"autoplay\" class=\"embed-responsive-item\"></iframe></div></div></div></div></div></div><!--<a href=\"#\" data-toggle=\"modal\"  data-target=\"#myModal\">   <img src=\"images/abt-bg.png\"  class=\"img-fluid\"/></a>--></div></div></div></div></div></section><section id=\"ceo\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-5 col-md-12\"><div class=\"ceo-bg\"><img src=\"assets/front/images/anil.png\" class=\"img-fluid\"/><blockquote> I believe in offering creative solutions for complex problems to our customers. \n            <span> <strong>Anil Varghese</strong> <br/><strong>CEO</strong> </span></blockquote><div class=\"clearfix\">\n          </div></div></div><div class=\"col-lg-5 col-md-12 offset-2\"><div class=\"retail\"><div class=\"retext\"><h2>Retail Corner Podcast\n            </h2><h3> Innovation \n              <span>.</span> Entrepreneurs \n              <span>.</span> Technology \n            </h3><a href=\"#\"><button class=\"pro-btn\">Visit Our Podcast</button></a></div><img src=\"assets/front/images/carlos.png\" class=\"img-fluid\"/><div class=\"clearfix\">\n          </div></div></div></div></div></section><section id=\"blog\"></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(131, 'Allocation', 'allocation', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iuos\">Inventory Allocation\n      </h1><p id=\"i9y6\">How retailers can gain competetive edge?\n      </p></div></div></section><section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem\n        </h1><h2>Top 3 Allocation Issues \n          <br/><strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.\n          </li><br/><li> Repetitive export of data to have manual function via spreadsheets.\n          </li><br/><li> Extensive labor hours for manual workaround. \n          </li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\">\n            </i><a href=\"#\"> Download Brochure </a></p></div></div></div></div></section><section id=\"sol\"><div class=\"container\"><h1> Solutions \n    </h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 \n        <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with \n                Custom Screens. \n              </h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute  merchandise based \n              on size to each brick and mortar store. \n            </li><br/><li>It ensures proper delivery of merchandise to the \n              specific demographics of the customer at the store.\n            </li></ul></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses\n              in order to remove the need to export \n              spreadsheets and double work. \n            </li><br/><li>We catered the dashboard functions so \n              that allocators could effectively work within it.\n            </li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators. \n              </h4></div></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency. \n              </h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ikc6i2\">Removing redundant &amp; repetitive labor allowed\n              for less hours spend on formulating and analyzing\n              data after the fact. \n            </li><br/><li>Increased efficiency at the warehouse and stores \n              allowing them to provide their specific customer the\n              right sizes of merchandise.\n            </li></ul></div></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the \n            right merchandise at the \n            right place<span>.</span></strong></h1><div class=\"clearfix\">\n        </div><a href=\"#\"><button class=\"black_box\">Let’s Talk Now</button></a><div class=\"clearfix\">\n        </div><p class=\"pull-right\"><strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(132, 'Stabilzation', 'stabilzation', '', '<div class=\"row\"><div class=\"cell\" id=\"ihyv\"><img id=\"itplg\" src=\"http://localhost/proxima/uploads/gallery/foot.jpg\" class=\"img-fluid\"/></div></div><div class=\"row\" id=\"ihvh\"><div class=\"cell\" id=\"iykk\"><section class=\"bdg-sect\"><h1 class=\"heading\">Insert title <a href=\"\" class=\"link\">herefgthftr</a></h1><p class=\"paragraph\">Lorem ipsum dolor sit <a href=\"\" class=\"link\">amet, consectetur adipiscing elit, sed do eiusmod</a> tempor incididunt ut labore et dolore magna aliqua</p></section></div><div class=\"cell\" id=\"i2ig\"></div></div><div class=\"row\"><div class=\"cell\"></div><div class=\"cell\"></div><div class=\"cell\"></div></div><div class=\"row\"><div class=\"cell\" id=\"i07rv\"></div><div class=\"cell\" id=\"iwizb\"></div></div>', '* { box-sizing: border-box; } body {margin: 0;}.row{display:table;padding:10px;width:100%;}.cell{width:8%;display:table-cell;height:75px;}#i07rv{width:30%;}#iwizb{width:70%;}#itplg{color:black;}@media (max-width: 768px){.cell{width:100%;display:block;}}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(133, 'About Us', 'about-us', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/abt-ban.png\" class=\"img-fluid\"/></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><h1> We are retail experts. We are a consulting company, which \n          can envision a product, implement a solution or blueprint \n          your retail roadmap. If you are serious about retail innovation,\n          allow our team of top minds to help you. \n        </h1></div></div></div></section><section id=\"story\" class=\"ps-timeline-sec\">\n</section><section id=\"team\">\n</section><section id=\"about\"><div class=\"container\"><div class=\"head\"><div class=\"row1\"><div class=\"col-lg-10\"><h1> The \n            <span>Company</span>.\n          </h1></div></div></div><div class=\"row no-gutters row-eq-height\"><div class=\"col-lg-6\"><img src=\"http://localhost/proxima/uploads/gallery/company.png\" class=\"img-fluid\"/></div><div id=\"ivgw9s\" class=\"col-lg-6\"><div class=\"red\"><p>Proxima360 is an IT consulting company\n            with focus on retail like no other. We \n            strive on bringing together the best \n            talent pool depending on your business \n            needs. We understand that every \n            business has different needs and \n            operating budgets. We specialize on \n            catering a retail solution that meets your \n            business needs and budget. We are \n            here to guide your business as a lifeline \n            to select the best technical products and\n            implement the most productive and cost \n            effective method.\n          </p><p>Our team of experts is ready to help you \n            develop strategies for not only surviving, \n            but thriving in the future. \n          </p></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.fade-scale .modal-dialog{position:absolute;left:0;right:0;top:50%;transform:translateY(-50%) !important;}.team-border .member-name, .team-border .member-job{color:#f80000 !important;font-weight:600;}.modal-body a{padding:7px 0px 0px 13px;background:#f80000 !important;color:#ffffff !important;width:37px;height:37px;border-radius:50px;display:inline-block;}.modal-body p{padding:20px 0px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(134, 'Podcast', 'podcast', '', '<section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/podcast-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"podbtm\"><div class=\"container\"><div id=\"podbord\"><div class=\"row\"><div class=\"col-lg-12 col-md-12 text-center\"><h2> A deeply informative bi-weekly podcast. We cover current retail landscape, best of breed products\n            and retail business best practices. Tune in to listen to retail experts and community thinkers on retail \n            industries current trajectory as well as future projections.\n          </h2></div></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://localhost/proxima/uploads/gallery/followers.gif\" id=\"io84e\"/><h3>Followers \n          </h3><p>Global\n            <br/>\n            (5k+)\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://localhost/proxima/uploads/gallery/audience.jpg\" id=\"i173l\"/><h3>Audience\n          </h3><p>Retail Executives, \n            <br/>\n            Entreprenuers &amp; Enthusiasts\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"http://localhost/proxima/uploads/gallery/purpose.jpg\" id=\"ip9u4\"/><h3>Purpose \n          </h3><p>Information for Retail Innovative\n            <br/>\n            Practices and Solutions\n          </p></div></div></div></div></section><section id=\"podbtn\"><div class=\"container\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-3 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">All Episodes</button></a></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">Be Our Guest</button></a></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><a href=\"#\"><button class=\"black_box\">Our Guest List</button></a></div></div></div></section><section id=\"feature\"><div class=\"container\"><div class=\"head1\"><h1>Featured \n        <span>Guests</span></h1></div><div id=\"demo1\" data-ride=\"carousel\" class=\"carousel slide\"><!-- The slideshow --><div class=\"carousel-inner\"><div class=\"carousel-item active\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-9 text-center\"><p>“Whether it’s retail finance, merchandising, \n                planning or distribution. Every decision \n                fundamentally relies on accurately \n                forecasting the demand for the product.”\n              </p><a href=\"#\"><button class=\"black_box\"> Listen Podcast </button></a></div><div class=\"col-lg-3 text-center\"><img src=\"http://localhost/proxima/uploads/gallery/devavrat.jpg\" class=\"img-fluid\"/><h3>Devavrat Shah, Ph.D.\n              </h3><h4>Head, Data Science. MIT\n              </h4></div></div></div><div class=\"carousel-item\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-9 text-center\"><p>“Whether it’s retail finance, merchandising, \n                planning or distribution. Every decision \n                fundamentally relies on accurately \n                forecasting the demand for the product.”\n              </p><a href=\"#\"><button class=\"black_box\"> Listen Podcast </button></a></div><div class=\"col-lg-3 text-center\"><img src=\"images/devavrat.jpg\" class=\"img-fluid\"/><h3>Devavrat Shah, Ph.D.\n              </h3><h4>Head, Data Science. MIT\n              </h4></div></div></div><div class=\"carousel-item\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-9 text-center\"><p>“Whether it’s retail finance, merchandising, \n                planning or distribution. Every decision \n                fundamentally relies on accurately \n                forecasting the demand for the product.”\n              </p><a href=\"#\"><button class=\"black_box\"> Listen Podcast </button></a></div><div class=\"col-lg-3 text-center\"><img src=\"images/devavrat.jpg\" class=\"img-fluid\"/><h3>Devavrat Shah, Ph.D.\n              </h3><h4>Head, Data Science. MIT\n              </h4></div></div></div></div><!-- Left and right controls --></div></div></section><section id=\"podshare\"><div class=\"container text-center\"><div class=\"head1\"><h1> Check Full Episodes On \n      </h1></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-2\"><img src=\"http://localhost/proxima/uploads/gallery/youtube.jpg\" id=\"ix3jzu\"/></div><div class=\"col-lg-2\"><img src=\"http://localhost/proxima/uploads/gallery/pod.jpg\" id=\"i7kreg\"/></div><div class=\"col-lg-2\"><img src=\"http://localhost/proxima/uploads/gallery/spot.jpg\" id=\"iua52h\"/></div><div class=\"col-lg-2\"><img src=\"http://localhost/proxima/uploads/gallery/gm.jpg\" id=\"issg53\"/></div></div></div></section><section id=\"aired\"><div class=\"container\"><div class=\"head1\"><h1>Recently \n        <span>Aired</span></h1></div><div class=\"row\"><div class=\"col-lg-8\"><div class=\"embed-responsive embed-responsive-16by9\"><iframe src=\"https://www.podbean.com/media/player/multi?playlist=http%3A%2F%2Fplaylist.podbean.com%2F8475955%2Fplaylist_multi.xml&vjs=1&size=430&skin=9&episode_list_bg=%23ffffff&bg_left=%23203149&bg_mid=%232B5691&bg_right=%23F69595&podcast_title_color=%23FC8B8B&episode_title_color=%23ffffff&auto=0&share=0&fonts=Helvetica&download=1&rtl=0&show_playlist_recent_number=4\" title=\"Retail Corner: New Normal in Retail Technology & Business\" width=\"100%\" height=\"350px\" scrolling=\"no\" id=\"in674m\" class=\"embed-responsive-item\"></iframe></div></div><div class=\"col-lg-4\"><img src=\"http://localhost/proxima/uploads/gallery/sachin.jpg\" class=\"img-fluid\"/></div></div></div></section><section id=\"host\"><div class=\"container\"><div class=\"head1\"><h1>Our \n        <span>Host</span></h1></div><div id=\"demo\" data-ride=\"carousel\" class=\"carousel slide\"><!-- Indicators --><ul class=\"carousel-indicators\"><li data-target=\"#demo\" data-slide-to=\"0\" class=\"active\">\n        </li><li data-target=\"#demo\" data-slide-to=\"1\">\n        </li><li data-target=\"#demo\" data-slide-to=\"2\">\n        </li></ul><!-- The slideshow --><div class=\"carousel-inner\"><div class=\"carousel-item active\"><img src=\"http://localhost/proxima/uploads/gallery/host.jpg\" alt=\"\" width=\"1100\" height=\"500\" id=\"iw3tpb\"/></div><div class=\"carousel-item\"><img src=\"images/host.jpg\" alt=\"\" width=\"1100\" height=\"500\"/></div><div class=\"carousel-item\"><img src=\"images/host.jpg\" alt=\"\" width=\"1100\" height=\"500\"/></div></div><!-- Left and right controls --><a href=\"#demo\" data-slide=\"prev\" class=\"carousel-control-prev\"> <span class=\"carousel-control-prev-icon\"></span> </a><a href=\"#demo\" data-slide=\"next\" class=\"carousel-control-next\"> <span class=\"carousel-control-next-icon\"></span> </a></div></div></section><section id=\"newsletter\"><div class=\"container\"><div class=\"newsletter\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-6 text-center\"><h2>Subscribe to our Newsletter\n          </h2><p>Get latest news and information on our episodes\n          </p><div class=\"input-group\"><input type=\"email\" placeholder=\"Enter your email\" class=\"form-control\"/><span class=\"input-group-btn\"><button type=\"submit\" class=\"btn\"> Subscribe </button></span></div><h3 id=\"i46gwh\">Guest Enquiries: Send email to retailcorner@proxima360.com\n          </h3></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#in674m{border:none;}.head h1{margin-bottom:42px;}#demo img{width:100%;height:100%;}.newsletter{padding:80px 0;background:#fff url(\"images/news-bg.jpg\") left bottom repeat-x;}.newsletter .content{margin:0 auto;text-align:center;z-index:2;}.newsletter h2{color:#203149;margin-bottom:10px;}.newsletter p{color:#203149;margin-bottom:40px;font-size:20px;}.newsletter h3{color:#fff;margin-bottom:0px;font-size:25px;margin-top:40px;}.newsletter .form-control{height:50px;border-color:#ffffff;border-radius:0;border:solid 1px #333;}.newsletter .content.form-control:focus{box-shadow:none;border:2px solid #243c4f;}.newsletter .btn{width:243px;height:50px;background:#f80000;border:0px solid #000;outline:1px solid #fff;outline-offset:-9px;font-size:27px;color:#fff;margin:0px 0px 0px 10px;}.newsletter .btn:hover{background:#203149;}iframe{height:473px !important;}#i46gwh{color:#080808;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(135, 'Blog', 'blog', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/blog-ban.jpg\" class=\"img-fluid\"/></div></section><br/><br/><section id=\"blog_pages\" class=\"padding-top cvb\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(136, 'Innerblog', 'innerblog', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/blog-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"blog-details\" class=\"padding-top\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-9 col-sm-7\"><div class=\"row\"><div class=\"col-md-12 col-sm-12\"><div class=\"single-blog blog-details two-column\"><div class=\"post-thumb\"><a href=\"#\"><img src=\"http://localhost/proxima/uploads/gallery/9.jpg\" alt=\"\" class=\"img-fluid\"/></a><div class=\"post-overlay\"><span class=\"uppercase\"><a href=\"#\">29 <br/><small>Dec</small></a></span></div></div><div class=\"post-content overflow\"><h2 class=\"post-title bold\"><a href=\"#\">Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Infor</a></h2><h3 class=\"post-author\"><a href=\"#\">Posted by micron News</a></h3><p>One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market. \n                  The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business. \n                  Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places. \n                </p><div class=\"post-bottom overflow\"><ul class=\"nav navbar-nav post-nav\"><li><a href=\"#\"><i class=\"fa fa-tag\">\n                        </i>Creative</a></li><li><a href=\"#\"><i class=\"fa fa-heart\">\n                        </i>32 Love</a></li><li><a href=\"#\"><i class=\"fa fa-comments\">\n                        </i>3 Comments</a></li></ul></div><br/><br/><!-- Share Widget Starts Here --><div class=\"ssbats-social-share\"><span class=\"ssbats-social-share-label\">Share on:</span><div class=\"ssbats-social-share-buttons\"><a href=\"https://www.facebook.com/sharer/sharer.php?u=URL_HERE\" class=\"ssbats-share-facebook ssbats-share-popup\"><span>facebook</span></a><a href=\"https://www.twitter.com/intent/tweet?url=URL_HERE&via=i_Genius\" class=\"ssbats-share-twitter ssbats-share-popup\"><span>twitter</span></a><a href=\"https://www.linkedin.com/shareArticle?mini=true&url=URL_HERE\" class=\"ssbats-share-linkedin ssbats-share-popup\"><span>linkedin</span></a><a href=\"https://www.pinterest.com/pin/create/button/\" data-pin-do=\"buttonBookmark\" data-pin-custom=\"true\" class=\"ssbats-share-pinterest\"><span>pinterest</span></a><a href=\"https://tumblr.com/widgets/share/tool?canonicalUrl=URL_HERE\" class=\"ssbats-share-tumblr ssbats-share-popup\"><span>tumblr</span></a><a href=\"https://www.reddit.com/submit?url=URL_HERE\" class=\"ssbats-share-reddit ssbats-share-popup\"><span>reddit</span></a><a href=\"https://api.whatsapp.com/send?text=URL_HERE\" class=\"ssbats-share-whatsapp\"><span>whatsapp</span></a><a href=\"https://telegram.me/share/url?url=URL_HERE\" class=\"ssbats-share-telegram ssbats-share-popup\"><span>telegram</span></a><a href=\"https://getpocket.com/save?url=URL_HERE\" class=\"ssbats-share-pocket ssbats-share-popup\"><span>pocket</span></a></div></div><!--/Response-area--></div></div></div></div></div><div class=\"col-md-3 col-sm-5\"><div class=\"sidebar blog-sidebar\"><div class=\"sidebar-item recent\"><h3>Comments\n            </h3><div class=\"media\"><div class=\"pull-left\"><a href=\"#\"><img src=\"http://localhost/proxima/uploads/gallery/project1.jpg\" alt=\"\" id=\"iq2nb\"/></a></div><div class=\"media-body\"><h4><a href=\"#\">Lorem ipsum dolor sit amet consectetur adipisicing elit,</a></h4><p>posted on  07 March 2014\n                </p></div></div><div class=\"media\"><div class=\"pull-left\"><a href=\"#\"><img src=\"http://localhost/proxima/uploads/gallery/project2.jpg\" alt=\"\" id=\"i7jasj\"/></a></div><div class=\"media-body\"><h4><a href=\"#\">Lorem ipsum dolor sit amet consectetur adipisicing elit,</a></h4><p>posted on  07 March 2014\n                </p></div></div><div class=\"media\"><div class=\"pull-left\"><a href=\"#\"><img src=\"http://localhost/proxima/uploads/gallery/project3.jpg\" alt=\"\" id=\"i8jm5v\"/></a></div><div class=\"media-body\"><h4><a href=\"#\">Lorem ipsum dolor sit amet consectetur adipisicing elit,</a></h4><p>posted on  07 March 2014\n                </p></div></div></div><div id=\"categories\" class=\"sidebar-item categories\">\n          </div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(137, 'Inner blog', 'inner-blog', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/blog-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"blog-details\" class=\"padding-top\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-9 col-sm-7\"><div class=\"row\"><div class=\"col-md-12 col-sm-12\"><div id=\"single-blog\" class=\"single-blog blog-details two-column\">\n            </div></div></div></div><div class=\"col-md-3 col-sm-5\"><div class=\"sidebar blog-sidebar\"><div id=\"post\" class=\"sidebar-item recent\">\n               \n               \n              </div><div id=\"categories\" class=\"sidebar-item categories\">\n                \n                \n              </div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(138, 'Advino', 'advino', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/adivino-banner.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1><strong>What if you can tweak your</strong><span>finance \n          forecast model </span><strong>to match your</strong><br/><strong>real-world experience</strong><br/><strong>and objectives?</strong></h1><p> Get your FP&amp;A a \n        <span> machine learning </span> assistant. \n      </p><a href=\"#\"><button class=\"prod_box\">REQUEST A DEMO</button></a></div></div></section><section id=\"pro-head\"><h1><strong>adivino (<span>ah-dee-bee-noh</span>)</strong><br/>\n    The \n    <strong>fortune-teller</strong> for your retail business.\n  </h1></section><section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"http://localhost/proxima/uploads/gallery/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong> Machine learning assisted </strong><br/>\n            cash-flow forecasting\n            <strong>.</strong></h3><p>Let your strategies and finance objectives\n            be an input to the forecast model\n            to generate cash-flow goals.\n          </p><a href=\"#\"><button class=\"red_box\">I need demo</button></a></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3><strong>Generate</strong> sales forecast\n            <br/><strong>for unprecedented times.</strong></h3><p>Trust your experience and adjust forecast \n            model parameters to figure out forecasted \n            sales to optimally allocate merchandise.\n          </p><a href=\"#\"><button class=\"red_box\">Get me access</button></a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"http://localhost/proxima/uploads/gallery/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"http://localhost/proxima/uploads/gallery/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong>Generate smart strategies\n              for</strong> payments \n            <strong>and</strong> collections.\n          </h3><p>Determine optimal payment and collection \n            strategies to meet cash-flow goals and \n            deadlines.\n          </p><a href=\"#\"><button class=\"red_box\"> Can we talk? </button></a></div></div></div></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1><strong>You’ve got a database?</strong> We got the connectors. \n          <br/>\n          Dashboard of your choice? No problem. \n          <br/>\n          Quick and easy setup. \n          <strong>SaaS at its best.</strong></h1></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"> <img src=\"http://localhost/proxima/uploads/gallery/adivino-logo.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail <strong>Experts.</strong><br/><strong>Powered by</strong> MIT <strong>Data Scientists.</strong></h2><div class=\"clearfix\"></div><br/><br/><a href=\"#\"><button class=\"black_box\">Get in Touch</button></a><div class=\"clearfix\"></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(139, 'Contact', 'contact', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"http://localhost/proxima/uploads/gallery/contact-banner.jpg\" class=\"img-fluid\"/></div></section><section class=\"contact-page-section\"><div class=\"container\"><p>Looking to talk more with us regarding the Services/Solutions we offer, or you are having issues with your current Oracle retail implementation. Fill out the short form below and our sales professionals will get in touch with you.\n      </p><div id=\"i1zkj\">\n      </div><div class=\"inner-container bg-light\"><div class=\"row clearfix\"><!--Info Column--><div class=\"info-column col-md-5 col-sm-12 col-xs-12\"><div class=\"info-content\"><h3>Sales Enquiries\n              </h3><p>Call: +1 781-381-4101\n                <br/>\n                Email: \n                <a href=\"mailto:sales@proxima360.com\">sales@proxima360.com</a></p></div><div class=\"info-content\"><h3>Podcast\n              </h3><p>For Retail Corner podcast’s general/guest\n                enquiry.\n              </p><br/><p>Email: \n                <a href=\"mailto:retailcorner@proxima360.com\">retailcorner@proxima360.com</a></p></div><div class=\"info-content\"><h3>Media\n              </h3><p>Email: \n                <a href=\"mailto:social@proxima360.com\">social@proxima360.com</a></p></div><div class=\"info-content\"><h3>Location\n              </h3><p>UNITED STATES\n              </p><p>325 wood rd. suite 103, Braintree, MA 02184\n              </p><div id=\"icx8e\">\n              </div><p>INDIA\n              </p><p>Divine Hive Space, Whitefield Road, Near Ramalayam, Kondapur, Hyderabad-500084\n              </p></div></div><!--Form Column--><div class=\"form-column col-md-7 col-sm-12 col-xs-12\"><div class=\"contact-form\"><h3>Give your retail business wings of fire.\n                <br/>\n                Get in touch with us.\n              </h3><div id=\"message\">\n              </div><form method=\"post\" action=\"\" id=\"contact-form\"><div class=\"row clearfix\"><div class=\"form-group col-md-2 col-sm-6 co-xs-12\"><label>Name: </label></div><div class=\"form-group col-md-10 col-sm-6 co-xs-12\"><input type=\"text\" name=\"name\" value=\"\" required/></div><div class=\"form-group col-md-2 col-sm-6 co-xs-12\"><label>Email: </label></div><div class=\"form-group col-md-10 col-sm-6 co-xs-12\"><input type=\"email\" name=\"email\" value=\"\" required/></div><div class=\"form-group col-md-2 col-sm-6 co-xs-12\"><label>Purpose: </label></div><div class=\"form-group col-md-10 col-sm-6 co-xs-12s\"><div class=\"input-group\"><select name=\"purpose\" id=\"sel1\" class=\"form-control\"><option value=\"Please Select Security Question\">Please Select Security Question</option><option value=\"Which is your favorite movie?\">Which is your favorite movie?</option><option value=\"What is your pet\'s name?\">What is your pet&#039;s name?</option><option value=\"What is the name of your village?\">What is the name of your village?</option></select></div></div><div class=\"form-group col-md-2 col-sm-6 co-xs-12\"><label>Message: </label></div><div class=\"form-group col-md-10 col-sm-12 co-xs-12\"><textarea name=\"message\"></textarea></div><div class=\"form-group col-md-2 col-sm-6 co-xs-12\"><label id=\"ivtjq\">Captcha: </label></div><div class=\"form-group col-md-10 col-sm-12 co-xs-12\"><input type=\"text\" id=\"captcha1\" name=\"captcha\" class=\"form-control\"/></div><div id=\"image_captcha\" class=\"form-group col-md-10 col-sm-12 co-xs-12\">\n                  </div><div class=\"form-group col-md-12 col-sm-12 co-xs-12\"><button type=\"submit\" class=\"theme-btn btn-style-one\"><p>Submit\n                      </p></button></div></div></form></div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#i1zkj{margin-top:90px;}#icx8e{margin-bottom:18px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_podcast_slider`
--

CREATE TABLE `tbl_podcast_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `deatils` text NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'Active',
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_podcast_slider`
--

INSERT INTO `tbl_podcast_slider` (`id`, `name`, `image`, `short_desc`, `deatils`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(1, 'Devavrat Shah, Ph.D.', 'uploads/podcast/devavrat8.jpg', '“Whether it’s retail finance, merchandising, planning or distribution. Every decision fundamentally relies on accurately forecasting the demand for the product.”', 'Head, Data Science. MIT', 'Active', '2021-03-01', '2021-03-05', 0),
(4, 'Devavrat Shah, Ph.D.', 'uploads/podcast/devavrat4.jpg', 'I believe in offering creative solutions for complex problems to our customers.', 'Head, Data Science. MIT', 'Active', '2021-03-01', '0000-00-00', 0),
(5, 'Devavrat Shah, Ph.D.', 'uploads/podcast/devavrat6.jpg', 'I believe in offering creative solutions for complex problems to our customers.', 'Head, Data Science. MIT', 'Active', '2021-03-01', '2021-03-01', 0);

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
(1, 'uploads/solutions/store15.jpg', 'Store Payroll Control and Tracking', 'Left', '_self', 'Image', 'store-payroll-control-and-tracking', 'Store Payroll Control and Tracking', 'Active', 0, '2021-02-19', '2021-03-09'),
(2, 'uploads/solutions/foot41.jpg', 'Revenue per Customer Footwear', 'Right', '_blank', 'Image', 'revenue-per-customer-footwear', 'Revenue per Customer Footwear', 'Active', 0, '2021-02-19', '2021-02-25'),
(4, 'uploads/solutions/merchant21.jpg', 'Store Merchandising Forecast', 'Right', '_blank', 'Image', 'store-merchandising-forecast', 'Store Merchandising Forecast', 'Active', 0, '2021-02-19', '2021-02-25'),
(5, '', 'PAYMENT PROCESSING', 'Left', '_self', 'Text', 'payment-processing', 'Implementing Square Terminal with Legacy POS system', 'Active', 0, '2021-02-25', '0000-00-00');

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
(2, 'uploads/team/19973.png', 'First Oracle (RETEK) Implementation in North America', '1997', 'Active', 0, '2021-03-02', '2021-03-05'),
(3, 'uploads/story/2008.png', 'Integrated BI analytics platform for merchandising, HR & finance', '2008', 'Active', 0, '2021-03-02', '2021-03-05'),
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
(2, '1', 'Leadership', 'Leadership', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-03-08'),
(3, '2', 'Store merchandising forecast', 'Store merchandising forecast', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-03-01'),
(4, '2', 'Optimization', 'Optimization', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 0, '2021-02-19', '0000-00-00'),
(5, '2', 'Store payroll control and tracking', 'Store payroll control and tracking', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-03-01'),
(6, '2', 'Revenue per customer footwear', 'Revenue per customer footwear', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-02-19', '2021-03-01'),
(7, '3', 'Adivino', 'adivino', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(8, '3', 'Rekount', 'rekount', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(9, '2', 'Allocation', 'allocation', 'Header,Footer', 'Active', 'Active', '_blank', 'Active', 0, '2021-02-19', '2021-02-25'),
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
(20, '8', 'Contact', 'contact', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-22', '2021-03-05'),
(21, '3', 'Adivino', 'Adivino', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-03-01', '2021-03-01'),
(22, '3', 'Rekount', 'Rekount', 'Header', 'Active', 'Inactive', '_blank', 'Active', 0, '2021-03-01', '2021-03-01');

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
(2, 'anil', 'uploads/team/anil5.jpg', 'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQHeLGM71PSqeQAAAXfuLGGwOv_2dRAUOofbrn_8VOpbC3BLl2dqb-9Lzy9ONA66ykQyYfITnK_zrKVzVJUs0a1tMPfNpS7gYl_g-', 'CEO', '	\" I believe in offering creative solutions for complex problems to our customers. \"', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers.', 'Active', '2021-03-01', '2021-03-05', 0),
(5, 'anil', 'uploads/team/anil7.jpg', 'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQHeLGM71PSqeQAAAXfuLGGwOv_2dRAUOofbrn_8VOpbC3BLl2dqb-9Lzy9ONA66ykQyYfITnK_zrKVzVJUs0a1tMPfNpS7gYl_g-', 'CEO', '\" I believe in offering creative solutions for complex problems to our customers. \"', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers', 'Active', '2021-03-02', '2021-03-02', 0),
(6, 'anil', 'uploads/team/anil5.jpg', 'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQHeLGM71PSqeQAAAXfuLGGwOv_2dRAUOofbrn_8VOpbC3BLl2dqb-9Lzy9ONA66ykQyYfITnK_zrKVzVJUs0a1tMPfNpS7gYl_g-', 'CEO', '	\" I believe in offering creative solutions for complex problems to our customers. \"', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers', 'Active', '2021-03-05', '2021-03-05', 0),
(7, 'anil', 'uploads/team/anil11.jpg', 'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQHeLGM71PSqeQAAAXfuLGGwOv_2dRAUOofbrn_8VOpbC3BLl2dqb-9Lzy9ONA66ykQyYfITnK_zrKVzVJUs0a1tMPfNpS7gYl_g-', 'CEO', '	\" I believe in offering creative solutions for complex problems to our customers. \"', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers', 'Active', '2021-03-05', '0000-00-00', 0);

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
(4, 'uploads/publications/blog1210.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-02-25'),
(5, 'uploads/publications/blog1191.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-02-25'),
(6, 'blog147.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 1, '0000-00-00'),
(7, 'uploads/publications/blog1281.jpg', 'PROXIMA360 PUBLICATIONS', 'End to one-day ', 'End to one-day black Friday shopping deals?', 'Active', '2021-02-19', 0, '2021-02-25');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_podcast_slider`
--
ALTER TABLE `tbl_podcast_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_stories`
--
ALTER TABLE `tbl_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_publications`
--
ALTER TABLE `tb_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
