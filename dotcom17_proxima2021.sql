-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2021 at 11:47 AM
-- Server version: 10.2.37-MariaDB-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotcom17_proxima2021`
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
  `deleted` int(2) NOT NULL DEFAULT 0,
  `registered_date` datetime NOT NULL,
  `last_logged_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_auths`
--

INSERT INTO `tbl_auths` (`id`, `emp_id`, `name`, `email`, `mobile_number`, `designation`, `password`, `role`, `status`, `deleted`, `registered_date`, `last_logged_in`) VALUES
(1, '1234', 'Proxima', 'superadmin@proxima.com', 0, '', '668a33560bd99b6d2bb43c9bae162a185db8537bd429ed4527919ab89b3a7d9c11b2291a3785e6ab7a4548023eabec9ea5040050016f6f39f4bc4e022ec36482030TtLJiUA412xZMY/75alrrencmDfbQ', 1, 'Active', 0, '2018-08-14 00:00:00', '2021-03-30 13:07:36');

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
(3, 'uploads/blog/carlos-thumbnail-740x536.jpg', 'uploads/blog/carlos-banner-1366x4001.jpg', 'Podcast', 'One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life', '<p>One of the most important ways people learn nowadays is through the use of their mobile devices. Smartphones and tablets have become essential to daily work life. Things such as video streaming and podcasts have become an integral part of gathering information while on the go to fit into the digital age of convenience. Many companies have begun adopting this form of information sharing to better reach and educate their audiences; one such company is Proxima360 who utilizes their podcast to offer information on retail and educational interviews with guests to help offer audiences a clearer understanding of retail and its market.</p> \r\n<p>The podcast’s host, Carlos Diaz, uses the podcast to spread information about the retail world and specific skills and tactics used to offer audiences some clarity on changing trends or helpful tips on how to improve their businesses. Especially in the mid-pandemic age, the podcast, Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business. Given that the podcast itself is an easy no-contact means of educating oneself, it is an excellent resource for any retail business owners to use to stay on top of current trends and other critical elements of their business.</p>\r\n   <blockquote>\r\n                      <p>Retail Corner, is a beneficial tool for people struggling to navigate the pandemic-ridden world of business.</p>\r\n                    </blockquote>\r\n<p>Diaz and the podcast precisely pinpoint innovative leaders in the industry who are creating valuable solutions to industry problems and paving the way for future innovators of the retail field. The bi-weekly podcast uses these industry experts as interview guests to offer listeners professional advice and commentary on the state of retail and how trends can be utilized to succeed. As of 2020, the podcast episodes have been heavily business-driven during the pandemic, offering advice and tips for keeping businesses alive during the COVID-19 pandemic. This is especially important now that restrictions are in a gray area dependent upon where you are, making the podcast essentially for some retail owners located in high-restriction places.</p>\r\n<p>Each episode offers an in-depth and granular wealth of knowledge from the experts that are brought in as guest speakers. The topics range all across the retail landscape, which provides a variety of topics to learn about and tailors to just about any problem or area of interest a business owner might have in the retail world, making it the perfect tool to use to stay up to date on the latest trends and best practices that are currently being tested in the retail industry. Given that these are coming from seasoned professionals, they’re tried, and proper methods can be trusted when executed properly.</p>\r\n\r\n<p>Retail Corner is an invaluable tool for any retail owner, now more than ever given the state of retail thanks to COVID-19, and for many owners could mean the difference between success and failure. All the episodes can be found on their website, which even offers a handy filtration tool to help audiences figure out specific episodes to listen to that are tailored to their interests or inquiries.</p><p>Originally published: <a href=\"https://mentorscollective.com/podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-information/\" target=\"_blank\">Mentors Collective</a>.</p>', 'Jay Feldman', 'Podcasting to The Masses: How Proxima360 Uses Their Podcast to Offer Deeply Informative Retail Information', 'podcasting-to-the-masses-how-proxima360-uses-their-podcast-to-offer-deeply-informative-retail-information', 'Active', '2021-03-18', '0000-00-00', 0),
(4, 'uploads/blog/Anil-blog-thumbnail-740x536.jpg', 'uploads/blog/Anil-Vargehse-blog-banner-1366x400.jpg', 'Entrepreneurs', 'As a part of our series about the future of retail, I had the pleasure of interviewing Anil Varghese, an enterprise analytics leader and CEO of Proxima 360.', '<p><b><i>As part of our series about the future of retail, I had the pleasure of interviewing Anil Varghese, an enterprise analytics leader and CEO of Proxima 360, a high impact solutions management consulting company addressing critical business needs within the complex retail landscape. Anil has 20 years of experience in enterprise applications and system integration &amp; analytics. An expert in building successful teams for world class retailers, his strengths lie in developing total solutions for customers like A’GACI LLC, JC Penny, Gap, Abercrombie &amp; Fitch and more. [Full Interview - <a href=\"https://medium.com/authority-magazine/anil-varghese-of-proxima-360-the-future-of-retail-in-the-post-pandemic-world-fe3b1a08a8a0\">Authority Magazine</a>]</i></b></p>\r\n\r\n<p><b>JH: Thank you so much for joining us in this interview series! Before we dive in, our readers would love to learn a bit more about you. Can you tell us a story about what brought you to this specific career path?</b></p>\r\n<p><b>AV:</b> I completed my engineering degree in India and got into an Indian SI Infosys Technologies company through a campus selection. Once I completed my initial training, they randomly assign each person to a project. The project I got assigned was for Gap Inc. Infosys was supporting Gap’s direct fulfillment systems. So, I got an opportunity to work for a world class retailer and I loved it so much that I ended up building a career in retail systems.</p>\r\n<p><b>JH: Can you share the most interesting story that happened to you since you started your career?</b></p>\r\n<p><b>AV:</b> After leaving my IT Director position at JC Penny, I joined the ranks of fashion retailer A’GACI. I met with A’GACI’s owner/founder and he told me the story of how he had been able to build the brand for the past 40 years, from the ground up, at a time when the concept of low-cost fast fashion never existed. Our initial conversation was very positive. In fact, the owner was so impressed with my background in ERP that he offered me the position of CIO, a position that A’GACI had never previously had. I saw the potential in A’GACI and I signed on in a heartbeat.</p>\r\n<p>I joined A’GACI at a period when the fast fashion retail industry was booming with the likes of H&amp;M, Forever 21, Charlotte Rouse, etc., taking hold of the market because of their ability to provide current trends at affordable prices. I was given complete autonomy to build a data driven organization that can compete with the likes of Forever 21. I believed it was an amazing time to join a company that had strong roots but a lot of growth potential. In my initial deep dive of the company, I found that A’GACI had a small hold of the industry with only 70 brick and mortar stores compared to other fast fashion competitors who had more than 500 stores. A’GACI stores could be found mostly in the Midwest and Puerto Rico. Furthermore, at a time when online shopping was growing quickly, only 7% of sales came from eCommerce.</p>\r\n<p>It was 2017 and one week into my career at A’GACI, the owner called me into his office and told me that business was suffering. Hurricane’s Harvey, Maria and Irma had taken a toll and Puerto Rican stores were completely destroyed. Border stores were doing well but a failed system implementation conducted earlier that year was having a negative effect. He informed me that the only option he had left was to file Chapter 11 in an effort to restructure the business. He asked me to take some time to decide whether or not I wanted to remain during this turbulent time. This was an absolute shock to me, there were so many things going through my head, so many questions and doubts. On the other hand, I also saw this as a tremendous opportunity. I saw the opportunity to focus on ecommerce and, potentially, come out of this stronger. Personally, it was the chance to learn a tremendous amount about the business through this process. After a lot of consideration, I decided there was more opportunity here and went back to the owner with my decision: to stay and give it my all in trying to turn this around. He immediately put me in charge of the strategy and process of restructuring.</p>\r\n<p>It was an extensive process that I took one step at a time. I began by working on what I knew best — fixing the broken systems. In this step, we had to renegotiate a multitude of leases, let go of our corporate office and the distribution company and had to find a facility to house both. On a personal level, this was a time when I learned the most and gained some valuable experience in what is needed to set-up an office, how to start a distribution company, moving a corporation, renegotiating contracts, working with bankruptcy court, etc. During this time, we also moved our outsourced eCommerce operations in-house and had to setup all the eCommerce operation processes and systems. In the end, with court approval, the owner sold the company. However, for me, it was an amazing learning experience and I was able to accomplish a lot in a very short time (a year and a half).</p>\r\n\r\n\r\n<p></p><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:107%\"><font face=\"Tahoma\">Read complete interview in <a href=\"https://medium.com/authority-magazine/anil-varghese-of-proxima-360-the-future-of-retail-in-the-post-pandemic-world-fe3b1a08a8a0\" target=\"_blank\">Authority Magazine</a>.&nbsp;&nbsp;</font></span></p>\r\n', 'Jilea Hemmings', 'The Future Of Retail In The Post Pandemic World', 'the-future-of-retail-in-the-post-pandemic-world', 'Active', '2021-03-18', '0000-00-00', 0),
(5, 'uploads/blog/black-friday-thumbnail-740x536.jpg', 'uploads/blog/black-friday-banner-1366x400.jpg', 'Retail News', 'Will We See an End to Traditional One-Day Black Friday Shopping Deals?', '<p>Holiday shopping season is upon us and we can certainly predict big changes throughout retail industry. As a result of the ongoing pandemic, retailers are stuck with summer merchandise and the effects of a slow summer and back-to-school shopping season are a reduction in profits and an even lower margin for purchasing holiday inventory. With the busy holiday shopping season quickly approaching, it can be easily predicted for retailers to announce month long deals and an end to Black Friday and Cyber Monday single day shopping surges, at least for this year.</p>\r\n\r\n<p>According to an article by CNBC, 2019 marked the biggest sales day ever for Black Friday, raking in a staggering $7.4 billion. This past September, U.S. online retailers saw sales reaching $60.4 billion, according to Adobe Analytics. Heading in to the busy holiday season, consumers will be looking to spend wisely and a majority of them will be purchasing items online. In fact, estimates put holiday e-commerce growth at up to 35% this year alone according to Forbes. But will retail be ready for this increase in demand and how will they meet those demands?</p>\r\n\r\n<blockquote>Given the ongoing pandemic and the strain its placed-on inventory, shipping and sales, we are predicting that retailers, both eCommerce and brick and mortar, will soon announce a month long Black Friday promotion. - Anil Varghese, CEO, Proxima360</blockquote>\r\n\r\n<p>Retailers can no longer rely on a single day to make the sales numbers they need. Delays in shipping, the reduction in inventory and a limited cash flow will force them to pivot once again.</p>\r\n\r\n<p>Since the onset of the pandemic, supply chains were tested by trade restrictions, supply shock and an increase in demand. Furthermore, consumer’s inability to shop in-store left brick and mortar giants with a surplus of seasonal inventory and markdowns. Typically, we’ll see those items move down to stores like TJ Maxx, Ross and Marshalls. However, with all of these markdowns, they are sure to see an influx of surplus inventory that they simply cannot take. That leaves big box stores with a reduction in cash flow to purchase holiday inventory furthering supply chain issues.</p>\r\n\r\n<blockquote>In order for e-commerce to sustain its growth and for retailers to make up for the losses they’re experiencing in brick and mortar locations, they’ll need to firm up their supply chain. Avoiding out-of-stock issues will be the biggest challenge for retail. Thus, why they’ll move to a month-long Black Friday strategy so they can slowly meet their numbers and guarantee product availability. – Carlos Diaz, director of business development for Proxima360.</blockquote>\r\n\r\n<p>Announcements of month-long sales are forecasted to come in the coming weeks as retailers and consumers gear up for the holidays.</p>\r\n\r\n', 'Proxima360', 'End to One-Day Black Friday Shopping Deals.', 'end-to-one-day-black-friday-shopping-deals', 'Active', '2021-03-18', '0000-00-00', 0);

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
  `deleted` bigint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(5, 'Eiusmod', 'Active', '2021-03-02', '0000-00-00', 0),
(14, 'Retail Tech', 'Active', '2021-03-15', '0000-00-00', 0),
(15, 'Retail News', 'Active', '2021-03-15', '0000-00-00', 0),
(16, 'Podcast', 'Active', '2021-03-15', '0000-00-00', 0),
(17, 'Leadership', 'Active', '2021-03-15', '0000-00-00', 0),
(18, 'Digital Transformation', 'Active', '2021-03-15', '0000-00-00', 0),
(20, 'Entrepreneurs', 'Active', '2021-03-16', '0000-00-00', 0);

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
(2, 'sfsaf', 'superadmin@proxima.com', 'What is your pet\'s name?', 'safsadfvsa', '2021-03-09', 0),
(3, 'Amarendra', 'amar@utsin.com', 'Specific Solution', 'Test Message', '2021-03-12', 0),
(4, 'Amarendra', 'amar@utsin.com', 'Adivino', 'test message', '2021-03-12', 0),
(5, 'Sachin Bhate', 'sachin.bhate@dotcom-team.com', 'Adivino', 'Need to know how things are with adivino.\r\n-skb', '2021-03-12', 0),
(6, 'vghgv', 'amar@utsin.com', 'Adivino', 'fdhdrt', '2021-03-15', 0),
(7, 'Amarendra', 'amar@utsin.com', 'General Sales', 'Test', '2021-03-15', 0),
(8, 'Rajkumar', 'rajkumar@utsin.com', 'Specific Solution', 'Get in touch with us.', '2021-03-15', 0),
(9, 'Sachin Bhate', 'sachin.bhate@dotcom-team.com', 'Specific Solution', 'eee', '2021-03-15', 0),
(10, 'testing', 'testing@gmail.com', 'Adivino', 'testing', '2021-03-23', 0),
(11, 'Amarendra', 'amar@utsin.com', 'Adivino', 'Test', '2021-03-23', 0),
(12, 'test user', 'test@test.com', 'Adivino', 'test', '2021-03-23', 0),
(13, 'Sachin Bhate', 'sachin.bhate@dotcom-team.com', 'Adivino', 'Need more info on Adivino', '2021-03-25', 0),
(14, 'Sachin Bhate', 'skbhate@gmail.com', 'Adivino', 'dsds', '2021-03-25', 0),
(15, 'Sachin Bhate', 'skbhate@gmail.com', 'Adivino', 'dsds', '2021-03-25', 0),
(16, 'Amarendra', 'amar@utsin.com', 'Adivino', 'test', '2021-03-25', 0),
(17, 'Sachin Bhate', 'skbhate@gmail.com', 'Adivino', 'adivino', '2021-03-25', 0);

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
  `deleted` int(2) NOT NULL DEFAULT 0
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
(435, 'uploads/gallery/about-us-banner-1504x1014.png', '', 'Active', '2021-03-10', '0000-00-00', 1, 0, 0),
(436, 'uploads/gallery/inventory-allocation-2-1534x561.png', '', 'Active', '2021-03-12', '0000-00-00', 1, 0, 0),
(439, 'uploads/gallery/sol-ban.jpg', '', 'Active', '2021-03-15', '0000-00-00', 1, 0, 0),
(441, 'uploads/gallery/company-image-776x844.jpg', '', 'Active', '2021-03-15', '0000-00-00', 1, 0, 0),
(442, 'uploads/gallery/proxima360_blog_banner_1504x465.jpg', '', 'Active', '2021-03-15', '0000-00-00', 1, 0, 0),
(443, 'uploads/gallery/inventory-allocation3-1534x561.png', '', 'Active', '2021-03-15', '0000-00-00', 1, 0, 0),
(444, 'uploads/gallery/podcast_450x503.png', '', 'Active', '2021-03-15', '0000-00-00', 1, 0, 0),
(445, 'uploads/gallery/podcast-widget-retail-corner.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(446, 'uploads/gallery/solutions-banner-1504x465.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(447, 'uploads/gallery/POS-Square-banner-1534x561.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(448, 'uploads/gallery/merchandising-banner-1534x561.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(449, 'uploads/gallery/merchandising-banner-1534x5611.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(450, 'uploads/gallery/Merchandising-forecast-1534x561.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(451, 'uploads/gallery/Rev-customer-footwear-1534x561.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(452, 'uploads/gallery/Rev-customer-footwear-1534x561.jpg', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(453, 'uploads/gallery/Rev-customer-footwear-1534x5611.jpg', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(454, 'uploads/gallery/inventory-allocation-1534x561.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(455, 'uploads/gallery/inventory-allocation-1534x5611.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(456, 'uploads/gallery/square-pos-integration-563x371.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(457, 'uploads/gallery/out-of-box-559x374.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(458, 'uploads/gallery/licensing-551x367.png', '', 'Active', '2021-03-16', '0000-00-00', 1, 0, 0),
(460, 'uploads/gallery/e-commerce-banner-1534x561.png', '', 'Active', '2021-03-17', '0000-00-00', 1, 0, 0),
(461, 'uploads/gallery/retail-accounting-banner-1534x561.png', '', 'Active', '2021-03-17', '0000-00-00', 1, 0, 0),
(462, 'uploads/gallery/e-commerce-banner-1534x561-compress.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(463, 'uploads/gallery/payroll_tracking_banner_1534x561-compress.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(464, 'uploads/gallery/retail-accounting-banner-1534x561-compress.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(465, 'uploads/gallery/retail-kpi-565x371.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(466, 'uploads/gallery/reporting-platform-551x367.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(467, 'uploads/gallery/customer-engagement-559x374.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(468, 'uploads/gallery/Merchandising-forecast-1534x561-compress.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(469, 'uploads/gallery/shipment-arrival-565x371.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(470, 'uploads/gallery/inventory-visbility-559x374.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(471, 'uploads/gallery/mercahndise-visibility-551x367.png', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(472, 'uploads/gallery/POS-Square-banner-1534x561-compressed.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(473, 'uploads/gallery/fulfillment-optmiz-565x371.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(474, 'uploads/gallery/assortment-planning-559x374.jpg', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(476, 'uploads/gallery/Proxima360-brochure2.pdf', '', 'Active', '2021-03-18', '0000-00-00', 1, 0, 0),
(477, 'uploads/gallery/About-us-video-bg-515x289.jpg', '', 'Active', '2021-03-22', '0000-00-00', 1, 0, 0),
(478, 'uploads/gallery/offerings.png', '', 'Active', '2021-03-22', '0000-00-00', 1, 0, 0),
(479, 'uploads/gallery/partners.png', '', 'Active', '2021-03-22', '0000-00-00', 1, 0, 0),
(480, 'uploads/gallery/products.png', '', 'Active', '2021-03-22', '0000-00-00', 1, 0, 0),
(481, 'uploads/gallery/hero-image3.jpg', '', 'Active', '2021-03-24', '0000-00-00', 0, 0, 0),
(482, 'uploads/gallery/NAAC-BANNER-2.jpg', '', 'Active', '2021-03-24', '0000-00-00', 0, 0, 0),
(483, 'uploads/gallery/data.png', '', 'Active', '2021-03-24', '0000-00-00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_history`
--

CREATE TABLE `tbl_login_history` (
  `id` int(11) NOT NULL,
  `agent` text NOT NULL,
  `platform` text NOT NULL,
  `ip_address` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
(54, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-12 13:09:33'),
(55, 'Chrome 89.0.4389.82', 'Windows 10', '96.230.43.240', '2021-03-12 13:55:31'),
(56, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-12 17:10:30'),
(57, 'Chrome 90.0.4430.19', 'Windows 10', '183.82.103.60', '2021-03-12 17:14:22'),
(58, 'Chrome 89.0.4389.82', 'Windows 10', '204.232.92.2', '2021-03-12 17:17:20'),
(59, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-12 17:19:53'),
(60, 'Chrome 90.0.4430.19', 'Windows 10', '183.82.103.60', '2021-03-12 17:27:19'),
(61, 'Chrome 89.0.4389.82', 'Windows 10', '204.232.92.2', '2021-03-12 17:37:05'),
(62, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-12 17:40:23'),
(63, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-12 17:42:29'),
(64, 'Chrome 90.0.4430.19', 'Windows 10', '183.82.103.60', '2021-03-12 18:42:57'),
(65, 'Chrome 90.0.4430.19', 'Windows 10', '183.82.103.60', '2021-03-12 18:50:26'),
(66, 'Chrome 90.0.4430.19', 'Windows 10', '183.82.103.60', '2021-03-12 19:32:42'),
(67, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-15 10:13:11'),
(68, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-15 10:56:24'),
(69, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-15 13:11:47'),
(70, 'Chrome 89.0.4389.82', 'Windows 10', '72.74.252.63', '2021-03-15 14:42:43'),
(71, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-15 15:02:19'),
(72, 'Chrome 89.0.4389.82', 'Windows 10', '204.232.92.2', '2021-03-15 15:03:14'),
(73, 'Chrome 89.0.4389.82', 'Windows 10', '96.230.43.240', '2021-03-16 02:38:09'),
(74, 'Chrome 89.0.4389.90', 'Windows 10', '72.74.252.63', '2021-03-16 13:30:44'),
(75, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-17 01:55:44'),
(76, 'Chrome 89.0.4389.90', 'Windows 10', '72.74.252.63', '2021-03-17 13:41:14'),
(77, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-17 14:16:31'),
(78, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-17 16:57:20'),
(79, 'Chrome 89.0.4389.82', 'Windows 10', '204.232.92.2', '2021-03-17 17:33:22'),
(80, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-17 17:52:54'),
(81, 'Chrome 91.0.4442.4', 'Windows 10', '183.82.103.60', '2021-03-17 18:18:12'),
(82, 'Chrome 91.0.4442.4', 'Windows 10', '183.82.103.60', '2021-03-17 18:24:04'),
(83, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-18 10:50:29'),
(84, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-18 13:02:14'),
(85, 'Chrome 89.0.4389.90', 'Windows 10', '204.232.92.2', '2021-03-18 16:54:55'),
(86, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-18 16:55:05'),
(87, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-18 16:55:39'),
(88, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-18 17:11:49'),
(89, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-18 17:24:11'),
(90, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-18 17:27:57'),
(91, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-18 17:30:43'),
(92, 'Chrome 89.0.4389.82', 'Windows 10', '183.82.103.60', '2021-03-18 17:30:44'),
(93, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-18 18:00:56'),
(94, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-18 18:05:54'),
(95, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-18 23:59:22'),
(96, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-19 11:34:16'),
(97, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-19 13:15:31'),
(98, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-19 14:14:07'),
(99, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-19 14:52:36'),
(100, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-19 15:57:03'),
(101, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-19 16:52:09'),
(102, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-22 12:17:55'),
(103, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-22 12:58:58'),
(104, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-22 15:03:21'),
(105, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-23 13:11:51'),
(106, 'Chrome 89.0.4389.90', 'Windows 10', '204.232.92.2', '2021-03-23 13:41:28'),
(107, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-23 13:52:30'),
(108, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-24 09:58:35'),
(109, 'Chrome 89.0.4389.90', 'Windows 10', '49.204.182.69', '2021-03-24 10:38:23'),
(110, 'Chrome 89.0.4389.90', 'Windows 10', '68.112.231.141', '2021-03-24 12:49:27'),
(111, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-24 13:22:49'),
(112, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-24 13:38:29'),
(113, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-24 20:03:16'),
(114, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-25 15:03:06'),
(115, 'Chrome 89.0.4389.90', 'Windows 10', '72.74.252.63', '2021-03-25 15:39:59'),
(116, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-25 16:57:10'),
(117, 'Chrome 89.0.4389.90', 'Windows 10', '72.74.252.63', '2021-03-25 18:44:05'),
(118, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-26 16:43:35'),
(119, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-26 17:49:41'),
(120, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-28 18:19:58'),
(121, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-29 10:54:43'),
(122, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-29 13:12:02'),
(123, 'Chrome 89.0.4389.90', 'Windows 10', '96.230.43.240', '2021-03-30 03:07:30'),
(124, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-30 11:04:49'),
(125, 'Chrome 89.0.4389.90', 'Windows 10', '183.82.103.60', '2021-03-30 11:52:16'),
(126, 'Chrome 89.0.4389.90', 'Windows 10', '72.74.252.63', '2021-03-30 13:07:36');

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
  `deleted` bigint(2) NOT NULL DEFAULT 0,
  `updated_date` date NOT NULL,
  `sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `link`, `target`, `menu_type`, `header`, `footer`, `status`, `created_by`, `updated_by`, `created_date`, `deleted`, `updated_date`, `sort`) VALUES
(1, 'About', 'About', '_self', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-02-19', 0),
(2, 'Solutions', 'solutions', '_self', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-03-29', 0),
(3, 'Products', 'Products', '_blank', 'Header,Footer', 'Active', 'Active', 'Active', 0, 0, '2021-02-19', 0, '2021-03-09', 0),
(4, 'Podcast', 'podcast', '_self', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-17', 0),
(5, 'News & Views', 'publications', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-10', 0),
(6, 'Contact us', 'contact', '_blank', 'Header', 'Active', 'Inactive', 'Active', 0, 0, '2021-02-19', 0, '2021-03-10', 0),
(7, 'About us', 'about us', '_blank', 'Footer', 'Inactive', 'Active', 'Inactive', 0, 0, '2021-02-19', 1, '2021-02-19', 0),
(8, 'About ', 'About us', '_blank', 'Footer', 'Inactive', 'Active', 'Active', 0, 0, '2021-02-22', 0, '2021-03-16', 0);

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
(1, 'social', '{\"facebook\":null,\"instagram\":\"https:\\/\\/www.instagram.com\\/retailcorner\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/company\\/proxima360\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/proxima360\"}'),
(2, 'contact', '{\"mobile_number\":\"+1 781-381-4101\",\"email\":\"  sales@proxima360.com\",\"details\":null}'),
(6, 'copyright', 'Copyright 2019-2021 Proxima360. All Rights Reserved.'),
(11, 'image', 'logo2.png'),
(12, 'contact_email', 'social@proxima360.com'),
(13, 'like_our_solutions', 'Talk to us');

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
  `deleted` int(2) NOT NULL DEFAULT 0,
  `status` varchar(25) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `page_name`, `route`, `page_layout`, `html`, `css`, `form_ref`, `meta_title`, `meta_keyword`, `meta_description`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`, `status`) VALUES
(129, 'test', 'test', '', '<section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row\"><div class=\"col-lg-7 col-md-6\"><div class=\"content colour-1\"><h2> Retail FP&amp;A Solution</h2><h3><strong>Enhancing Financial Decisions with Machine Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6\"><div class=\"content12 colour-3\"><div class=\"leftcorner\"></div><div class=\"rightcorner\"></div> <img src=\"assets/front/images/advino.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"#\"><img src=\"assets/front/images/arrow.png\"/></a></span><h2> ADIVINO</h2><h3> Human Powered Machine Learning for Finance</h3></div></div></div></div></div></div></div> </section><div class=\"col-lg-5 col-md-12\"><div class=\"ceo-bg\"> <img src=\"assets/front/images/anil.png\" class=\"img-fluid\"/><blockquote> I believe in offering creative solutions for complex problems to our customers. <span> <strong>Anil Varghese</strong> <br/> <strong>CEO</strong> </span></blockquote><div class=\"clearfix\"></div></div></div>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.social ul li{display:inline;padding:0px 5px;}.social ul li a{color:#333;}.social ul li a:hover{color:red;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(130, 'Home', 'home', '', '<div class=\"clearfix\">\n</div><section id=\"banner\">\n</section><section id=\"cbz\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-10 offset-1\"><div class=\"row\"><div class=\"col-lg-7 col-md-6\"><div class=\"content colour-1\"><h2 id=\"imwew\"> Retail FP&amp;A Solution\n              </h2><h3><strong id=\"iechg\">Improving Financial\n                  Decisions with Machine\n                  Learning.</strong></h3></div></div><div class=\"col-lg-5 col-md-6\"><div class=\"content12 colour-3\"><div class=\"leftcorner\">\n              </div><div class=\"rightcorner\">\n              </div><img src=\"uploads/gallery/retail-fin-planning.jpg\" class=\"img-fluid\"/><div class=\"post_details\"><span><a href=\"adivino\" id=\"i76wu\"><img src=\"assets/front/images/arrow.png\" id=\"icjsz\"/></a></span><h2 id=\"ieqdl\"> ADIVINO \n                </h2><h3> Human Powered Machine Learning for Finance \n                </h3></div></div></div></div></div></div></div></section><section id=\"quote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-1\"><h2 id=\"i6v4m\"><p id=\"in4rx\">“Whether it is retail finance, merchandising, planning, or distribution, every decision fundametally relies on accurately forecasting the demand for the product.”\n          </p></h2><a href=\"podcast\" id=\"ih1d4w\">- Head, Data Science, MIT</a><address id=\"i6vm6\"></address></div></div></div></section><section id=\"simply\"><div class=\"container\"><div class=\"simply\"><div class=\"row\"><div class=\"col-lg-9 col-md-9\"><h1 id=\"i42rp\">We Create Solutions that Simplify Your Retail Operational Landscape \n          </h1></div><div class=\"col-lg-3 col-md-3\"><a href=\"contact\" id=\"ixclc\"><button class=\"btn btn-outline-light btn-lg\">Request a Consultation </button></a></div></div><div class=\"clearfix\">\n      </div></div></div></section><section id=\"solutions\">\n</section><section id=\"abt\"><div class=\"container abb\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><div class=\"row\"><div class=\"col-lg-6 col-md-6\"><div class=\"bo\"><h2 id=\"ipn3f\">About Us\n              </h2><p id=\"ie3yq\">Proxima360 is a high impact solutions management consulting company. We address critical business needs within the complex retail landscape. Our holistic approach in implementing retail solutions will optimize operations and improve revenue. \n              </p><a href=\"about-us\" id=\"il51i\"> Check out Our Journey <i aria-hidden=\"true\" class=\"fa fa-arrow-circle-right\">\n                </i> </a></div></div><div class=\"col-lg-5 col-md-6 offset-1\"><div class=\"content12 colour-2\"><a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\" id=\"in40d\"> <img src=\"https://proxima360.com/BETA/uploads/gallery/About-us-video-bg-515x289.jpg\" class=\"img-fluid\"/></a><div id=\"myModal\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\" class=\"modal fade\"><div role=\"document\" class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-body\"><button type=\"button\" data-dismiss=\"modal\" aria-label=\"Close\" class=\"close\"> <span aria-hidden=\"true\">×</span> </button><!-- 16:9 aspect ratio --><div class=\"embed-responsive embed-responsive-16by9\"><iframe allowfullscreen=\"allowfullscreen\" src=\"https://www.youtube.com/embed/UmjfZjjzXyc?\" allowscriptaccess=\"always\" allow=\"autoplay\" class=\"embed-responsive-item\"></iframe></div></div></div></div></div></div><!--<a href=\"#\" data-toggle=\"modal\"  data-target=\"#myModal\">   <img src=\"images/abt-bg.png\"  class=\"img-fluid\"/></a>--></div></div></div></div></div></section><section id=\"ceo\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-5 col-md-12\"><div class=\"ceo-bg\"><img src=\"uploads/gallery/anil-varghese-450x526.png\" class=\"img-fluid\"/><blockquote> I believe in offering creative solutions for complex problems to our customers. \n            <span> <strong>Anil Varghese</strong> <br/><strong>CEO</strong> </span></blockquote><div class=\"clearfix\">\n          </div></div></div><div class=\"col-lg-6 col-md-12 offset-1\"><div class=\"retail\"><div class=\"retext\"><h2>Retail Corner Podcast\n            </h2><h3> Innovation \n              <span>.</span> Entrepreneurs \n              <span>.</span> Technology \n            </h3><a href=\"podcast\" id=\"ig6fy2\"><button class=\"pro-btn\">Visit Our Podcast</button></a></div><img src=\"uploads/gallery/podcast-widget-retail-corner.png\" class=\"img-fluid\"/><div class=\"clearfix\">\n          </div></div></div></div></div></section><div class=\"container\"><h1 id=\"i0nsas\">News &amp; Views\n  </h1></div><section id=\"blog\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.btn.btn-outline-light.btn-lg{float:none;position:absolute;top:28px;left:51px;font-size:21.5px;margin:0 0 0 7px;}.simply{background-color:#203149;}.col-lg-10.col-md-12.offset-1{font-size:16px;}#imwew{font-weight:500;font-size:24px;}#iechg{font-size:46px;color:#000000;}#i6v4m{font-weight:300;font-size:37px;text-align:center;color:#a4a0a0;}#i6vm6{font-weight:300;font-size:18px;}#i42rp{font-size:25px;}#ipn3f{font-size:30px;}#ie3yq{font-size:20px;}#in4rx{font-size:36px;font-weight:200;}#i0nsas{text-align:left;}#in40d{background-color:#060606;}#ih1d4w{float:right;font-size:24px;color:#636162;text-align:left;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(131, 'Allocation', 'allocation', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/inventory-allocation-1534x561.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iuos\">Allocating based on Customer Demographics</h1><p id=\"i9y6\">Have the right merchandise assortment at different stores</p></div></div></section><section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1 id=\"i29sj\">Problem\n        </h1><h2 id=\"iqe1k\">Top 3 Allocation Issues \n          <br/><strong>Retailers are facing today<span>. </span></strong></h2><ol><li id=\"iijvl\"> Inability to allocate using size demographics.\n          </li><br/><li id=\"ik67j\"> Repetitive data entry.\n          </li><br/><li id=\"ivdp1\"> Extensive labor hours due to manual workarounds. \n          </li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iz2ea\">Merchandising Forecast</a></li><li><a href=\"advino\" id=\"iryqk\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"i9fbs\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"ijeyf\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"ixb8k\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"is2y1\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"irbal\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p id=\"ipqap\"><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\">\n            </i><a href=\"uploads/gallery/Proxima360-brochure2.pdf\" id=\"i7n7s\" target=\"_blank\"> Download Brochure </a></p></div></div></div></div></section><section id=\"sol\"><div class=\"container\"><h1> Solutions \n    </h1><div class=\"sol-bg\"><h2 id=\"ielmp\"><strong draggable=\"true\" id=\"iwwqg\">How</strong> Proxima360 \n        <strong draggable=\"true\" id=\"i22w2\">can help you solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"if6dz\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"uploads/gallery/build-applications-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"iuqfc\"> Build Applications with \n                Custom Screens</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"i3343\">AI based size profiling to distribute  merchandise to stores</li><br/><li id=\"i73m2\">Built-in, complex grouping of stores and items based on size profiling</li></ul></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"ixbmg\">Ability to upload spreadhseets directly into the allocation system without having to key-in parameters</li><br/><li id=\"ij89ha\">Custom dashboards to monitor workflow and increase efficiency</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"uploads/gallery/dashboard-licen-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"isip3r\"> Dashboards for Allocators</h4></div></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"uploads/gallery/enhance-labour-licen-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"id6ygo\"> Enhance Labor Efficiency</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ikc6i2\">Increase warehouse and store efficiency by enhancing cross dock and receiving operations</li><br/><li id=\"iwxjzw\">Reduced redundancy and repetitive processes by automating related workflows</li></ul></div></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"i4h335\">We will help you ensure right merchandise is in the \n            right place to fulfill your customer demand<span draggable=\"true\" data-highlightable=\"1\" id=\"i2mson\">.</span></strong></h1><div class=\"clearfix\">\n        </div><a href=\"contact\" id=\"irtzwq\"><button class=\"black_box\">Let’s Talk Now</button></a><p class=\"pull-right\"><strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\">\n        </div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#iijvl{font-weight:200;font-size:30px;}#ik67j{font-weight:400;}#i9y6{font-size:18px;font-weight:200;}#iqe1k{font-size:37px;}#i3343{font-size:24px;}#i73m2{font-size:24px;}#i22w2{font-size:36px;}#ielmp{font-size:36px;font-weight:400;}#iwwqg{font-size:36px;}#ixbmg{font-size:24px;}#ij89ha{font-size:24px;}#ikc6i2{font-size:24px;}#iwxjzw{font-size:24px;}#i4h335{font-size:55px;}#iuqfc{font-size:25px;font-weight:700;}#iuos{font-size:36px;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(132, 'Stabilzation', 'stabilzation', '', '<div class=\"row\"><div class=\"cell\" id=\"ihyv\"><img id=\"itplg\" src=\"http://localhost/proxima/uploads/gallery/foot.jpg\" class=\"img-fluid\"/></div></div><div class=\"row\" id=\"ihvh\"><div class=\"cell\" id=\"iykk\"><section class=\"bdg-sect\"><h1 class=\"heading\">Insert title <a href=\"\" class=\"link\">herefgthftr</a></h1><p class=\"paragraph\">Lorem ipsum dolor sit <a href=\"\" class=\"link\">amet, consectetur adipiscing elit, sed do eiusmod</a> tempor incididunt ut labore et dolore magna aliqua</p></section></div><div class=\"cell\" id=\"i2ig\"></div></div><div class=\"row\"><div class=\"cell\"></div><div class=\"cell\"></div><div class=\"cell\"></div></div><div class=\"row\"><div class=\"cell\" id=\"i07rv\"></div><div class=\"cell\" id=\"iwizb\"></div></div>', '* { box-sizing: border-box; } body {margin: 0;}.row{display:table;padding:10px;width:100%;}.cell{width:8%;display:table-cell;height:75px;}#i07rv{width:30%;}#iwizb{width:70%;}#itplg{color:black;}@media (max-width: 768px){.cell{width:100%;display:block;}}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(133, 'About Us', 'about-us', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/about-us-banner-1504x1014.png\" class=\"img-fluid\"/></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 col-md-12\"><h1 id=\"igtbb\"><p id=\"i6upj\">We are retail experts, who can envision a product, implement a solution or blueprint your retail roadmap. If you are serious about retail innovation, allow our team of top minds to assist you in achieving your game plan.\n          </p></h1></div></div></div></section><div class=\"container\"><div class=\"head1\"><div class=\"row1s\"><div class=\"col-lg-10\"><h1 id=\"iu3fa\"> Our \n          <span draggable=\"true\" data-highlightable=\"1\" id=\"iu7wm\">Story</span></h1></div></div></div></div><section id=\"story\" class=\"ps-timeline-sec\">\n</section><section id=\"expertise\"><div class=\"services\"><div class=\"container\"><div class=\"head1\"><h1 id=\"i4cu3\"> Our \n          <span draggable=\"true\" data-highlightable=\"1\" id=\"itjvj\">Expertise</span></h1></div><div class=\"row\"><div class=\"col-md-6 col-lg-4 mb-3\"><div class=\"box\"><img src=\"https://proxima360.com/BETA/uploads/gallery/offerings.png\" class=\"mb-4\"/><h4 id=\"iugsb\">Our Offerings \n            </h4><ul><li id=\"ij71l\"> ERP Implementation Consulting for Retailers, Oracle Retail Solution Provider.\n              </li><li id=\"i1t5w\"> Retail Solutions supporting Merchandise Operations, Planning, Allocation, and Inventory Control. \n              </li><li id=\"in6mx\"> Supply Chain Transformation capabilities around – Warehouse Management Implementation, Yard Management Implementation, Transportation Management Implementation – Oracle, Manhattan, Pinc. \n              </li><!--<li>Store POS Implementation and Store Optimization – Oracle Micros POS,\nVerifone, Square, Oracle Store Inventory Management, Epicor POS</li>--></ul><a href=\"SOLUTIONS\" class=\"readmore\"><span>Read More</span></a></div></div><div class=\"col-md-6 col-lg-4 mb-3\"><div class=\"box\"><img src=\"https://proxima360.com/BETA/uploads/gallery/products.png\" class=\"mb-4\"/><h4> Our Products/Solutions\n            </h4><p id=\"irpww\"><span id=\"i24vy\">Helping retailers over 20+ years we have matured ourselves in creating\n              groundbreaking solutions for our retail customers. </span></p><ul><li id=\"i0nob\">	Inventory Allocation Optimization Solution – Based on the customer\n                demographic the tool recommends the right quantity for the right\n                color/size for a specific retail store.\n              </li><li id=\"ilfli\"> Human-powered Machine Learning for Finance – \n                <a href=\"adivino\" id=\"izph6\">Adivino</a></li></ul><a href=\"adivino\" class=\"readmore\"><span>Read More</span></a></div></div><div class=\"col-md-6 col-lg-4 mb-3\"><div class=\"box\"><img src=\"https://proxima360.com/BETA/uploads/gallery/partners.png\" class=\"mb-4\"/><h4>Our Partners \n            </h4><p id=\"im5xg\"><span id=\"idbso\"> We\n              believe in working with credible partners who provide unique solution to our\n              customer. </span></p><ul><li id=\"i1dz2\">	eCommerce Order Management and WMS – \n                <a draggable=\"true\" data-highlightable=\"1\" href=\"https://tejassoftware.com/\" target=\"_blank\" id=\"iv2pt\">Tejas Order\n                  Management System </a></li><li id=\"ih53v\"> Last Mile Delivery &amp; Shipping Optimization – \n                <a draggable=\"true\" data-highlightable=\"1\" href=\"https://fenixcommerce.com/\" target=\"_blank\" id=\"ipvso\"> Fenix Commerce,</a></li><li id=\"iz3mx\"> RFID Solutions – \n                <a draggable=\"true\" data-highlightable=\"1\" href=\"https://detego.com\" target=\"_blank\" id=\"ihulr\"> Detego </a></li></ul><a href=\"SOLUTIONS\" class=\"readmore\"><span>Read More</span></a></div></div></div></div></div></section><div class=\"container\"><div class=\"head1\"><div class=\"row1s\"><div class=\"col-lg-10\"><h1 id=\"ip38d\"> Our \n          <span draggable=\"true\" data-highlightable=\"1\" id=\"iidpxz\">Team</span></h1></div></div></div></div><section id=\"team\">\n</section><section id=\"about\"><div class=\"container\"><div class=\"head1\"><div class=\"row1\"><div class=\"col-lg-10\"><h1 id=\"iebnb\"> Our \n            <span draggable=\"true\" data-highlightable=\"1\" id=\"i8kz8\">Company</span></h1></div></div></div><div class=\"row no-gutters row-eq-height\"><div class=\"col-lg-6 text-center\"><div class=\"get\"><a href=\"contact\" id=\"ii9dg\"><button class=\"get_box\"> Get in Touch </button></a><img src=\"uploads/gallery/company-image-776x844.jpg\" class=\"img-fluid\"/></div></div><div id=\"ivgw9s\" class=\"col-lg-6\"><div class=\"red\"><p id=\"iaheg\">Proxima360 is an IT consulting company, with retail specialists like no other. We \n            strive to bring together the best \n            talent pool depending on each client&#039;s business needs. We understand that every \n            business has different needs and \n            operating budgets, and we specialize in \n            delivering a solution for your unique need and budget. We are \n            here to be your guide as a lifeline \n            to help you select the best technical products and\n            implement the most productive and cost \n            effective method for your business.\n          </p><p id=\"iwmse\">Proxima360 is a Solutions Brand of \n            <a href=\"https://www.dotcom-team.com\" target=\"_blank\" class=\"link\">Dotcom Team, LLC</a>, a leader in providing top science and technology talent around the globe.\n          </p></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.fade-scale .modal-dialog{position:absolute;left:0;right:0;top:50%;transform:translateY(-50%) !important;}.team-border .member-name, .team-border .member-job{color:#f80000 !important;font-weight:600;}.modal-body a{padding:7px 0px 0px 13px;background:#f80000 !important;color:#ffffff !important;width:37px;height:37px;border-radius:50px;display:inline-block;}.modal-body p{padding:20px 0px;}#igtbb{font-size:41px;}#iebnb{font-size:36px;}#i6upj{font-size:36px;font-weight:200;}#iaheg{font-size:23px;text-align:left;font-weight:300;}#iwmse{font-size:23px;font-weight:300;}#ivgw9s{background:#f80000;}#ij71l{font-size:15px;}#irpww{font-size:16px;}#i0nob{font-size:15px;}#i1t5w{font-size:15px;}#in6mx{font-size:15px;}#ilfli{font-size:15px;}#im5xg{font-size:15px;}#i1dz2{font-size:15px;}#ih53v{font-size:15px;}#iz3mx{font-size:15px;}#i24vy{font-size:15px;}#idbso{font-size:15px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(134, 'Podcast', 'podcast', '', '<section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/podcast-ban.jpg\" class=\"img-fluid\"/></div></section><section id=\"podbtm\"><div class=\"container\"><div id=\"podbord\"><div class=\"row\"><div class=\"col-lg-12 col-md-12 text-center\"><h2 id=\"ifok\"><span id=\"i2bemo\"> A deeply informative bi-weekly podcast. We cover current retail landscape, best of breed products\n              and retail business best practices. Tune in to listen to retail experts and community thinkers on retail \n              industries current trajectory as well as future projections.\n            </span></h2></div></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"uploads/gallery/followers.gif\" id=\"io84e\"/><h3 id=\"ihq96\">Followers \n          </h3><p id=\"idoph\">Global\n            <br/>\n            (5k+)\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"uploads/gallery/audience.jpg\" id=\"i173l\"/><h3 id=\"imab1\">Audience\n          </h3><p>Retail Executives, \n            <br/>\n            Entreprenuers &amp; Enthusiasts\n          </p></div><div class=\"col-lg-3 col-md-4 col-12 text-center\"><img src=\"uploads/gallery/purpose.jpg\" id=\"ip9u4\"/><h3 id=\"ium0h\">Purpose \n          </h3><p>Information for Retail Innovative\n            <br/>\n            Practices and Solutions\n          </p></div></div></div></div></section><section id=\"podbtn\"><div class=\"container\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"https://retailcorner.proxima360.com/\" target=\"_blank\" id=\"ivyvo\"><button class=\"black_box\">All Episodes</button></a></div><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"contact\" id=\"iw1lf\"><button class=\"black_box\">Be Our Guest</button></a></div><div class=\"col-lg-4 col-md-4 col-12 text-center\"><a href=\"https://retailcorner.proxima360.com/episodes/\" id=\"ic2ww\"><button class=\"black_box\">Our Guest List</button></a></div></div></div></section><section id=\"feature\">\n</section><section id=\"podshare\"><div class=\"container text-center\"><div class=\"head1\"><h1 id=\"ikqluy\"> Check Full Episodes On \n      </h1></div><div class=\"row justify-content-md-center\"><div class=\"col-lg-2\"><a href=\"https://podcasts.apple.com/us/podcast/retail-corner-new-normal-in-retail-technology-business/id1514480955\" target=\"_blank\"> <img src=\"uploads/gallery/pod.jpg\" id=\"ix3jzu\"/> </a></div><div class=\"col-lg-2\"><a href=\"https://open.spotify.com/show/7ng2q54JiXrhNAlnO2Q2XD\" target=\"_blank\"> <img src=\"uploads/gallery/spot.jpg\" id=\"i7kreg\"/> </a></div><div class=\"col-lg-2\"><a href=\"https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkLnBvZGJlYW4uY29tL3JldGFpbGNvcm5lci9mZWVkLnhtbA\" target=\"_blank\"><img src=\"uploads/gallery/gm.jpg\" id=\"iua52h\"/> </a></div><div class=\"col-lg-2\"><a href=\"https://www.youtube.com/channel/UCnkijn0fhoswt0EtJgC2b3g\" target=\"_blank\"> <img src=\"uploads/gallery/youtube.jpg\" id=\"issg53\"/> </a></div></div></div></section><section id=\"aired\"><div class=\"container\"><div class=\"head1\"><h1 id=\"idtaqe\">Recently \n        <span id=\"ibvxc\">Aired</span></h1></div><div class=\"row\"><div class=\"col-lg-8\"><div class=\"embed-responsive embed-responsive-16by9\"><iframe src=\"https://www.podbean.com/media/player/multi?playlist=http%3A%2F%2Fplaylist.podbean.com%2F8475955%2Fplaylist_multi.xml&vjs=1&size=430&skin=9&episode_list_bg=%23ffffff&bg_left=%23203149&bg_mid=%232B5691&bg_right=%23F69595&podcast_title_color=%23FC8B8B&episode_title_color=%23ffffff&auto=0&share=0&fonts=Helvetica&download=1&rtl=0&show_playlist_recent_number=4\" title=\"Retail Corner: New Normal in Retail Technology & Business\" scrolling=\"no\" id=\"in674m\" width=\"100%\" height=\"350px\" class=\"embed-responsive-item\"></iframe></div></div><div class=\"col-lg-4\"><img src=\"uploads/gallery/sachin.jpg\" class=\"img-fluid\"/></div></div></div></section><br/><br/><div class=\"container\"><div class=\"embed-responsive embed-responsive-16by9\"><iframe allowfullscreen=\"allowfullscreen\" src=\"https://www.youtube.com/embed/embed?&list=PL8odik_wGhHKdfMgtP-DoDtM4ar_isvQo\" height=\"641px\" id=\"iys9w\" class=\"embed-responsive-item\"></iframe></div></div><section id=\"host\">\n</section><section id=\"newsletter\"><div class=\"container\"><div class=\"newsletter\"><div class=\"row justify-content-md-center\"><div class=\"col-lg-6 text-center\"><h2 id=\"idfng\">Subscribe to our Newsletter\n          </h2><p id=\"ispz9\">Get latest news and information on our episodes\n          </p><div id=\"message\">\n          </div><form method=\"post\" action=\"\" id=\"subscribe\"><div class=\"input-group\"><input type=\"email\" placeholder=\"Enter your email\" name=\"email\" required class=\"form-control\"/><span class=\"input-group-btn\"><button type=\"submit\" class=\"btn\"> Subscribe </button></span></div></form><h3 id=\"i46gwh\">Guest Enquiries: Send email to retailcorner@proxima360.com\n          </h3></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.head h1{margin-bottom:42px;}#demo img{width:100%;height:100%;}.newsletter{padding:80px 0;background:#fff url(\"assets/front/images/news-bg.jpg\") left bottom repeat-x;}.newsletter .content{margin:0 auto;text-align:center;z-index:2;}.newsletter h2{color:#203149;margin-bottom:10px;}.newsletter p{color:#203149;margin-bottom:40px;font-size:20px;}.newsletter h3{color:#fff;margin-bottom:0px;font-size:25px;margin-top:40px;}.newsletter .form-control{height:50px;border-color:#ffffff;border-radius:0;border:solid 1px #333;}.newsletter .content.form-control:focus{box-shadow:none;border:2px solid #243c4f;}.newsletter .btn{width:243px;height:50px;background:#f80000;border:0px solid #000;outline:1px solid #fff;outline-offset:-9px;font-size:27px;color:#fff;margin:0px 0px 0px 10px;}.newsletter .btn:hover{background:#203149;}iframe{height:473px !important;}.black_box{font-size:36px;}#in674m{border:none;}#i46gwh{color:#fdfdfd;}#ifok{font-weight:500;font-size:30px;}#idtaqe{font-size:36px;}#ikqluy{font-size:36px;}#i2bemo{font-weight:normal;}#iys9w{height:641px !important;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(135, 'Publications', 'publications', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/proxima360_blog_banner_1504x465.jpg\" class=\"img-fluid\"/></div></section><br/><br/><section id=\"blog_pages\" class=\"padding-top cvb\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(136, 'Inner Blog', 'inner-blog', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/proxima360_blog_banner_1504x465.jpg\" class=\"img-fluid\"/></div></section><section id=\"blog-details\" class=\"padding-top\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-9 col-sm-7\"><div class=\"row\"><div class=\"col-md-12 col-sm-12\"><div id=\"single-blog\" class=\"single-blog blog-details two-column\">\n            </div></div></div></div><div class=\"col-md-3 col-sm-5\"><div class=\"sidebar blog-sidebar\"><div id=\"post\" class=\"sidebar-item recent\">\n          </div><div id=\"categories\" class=\"sidebar-item categories\">\n          </div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.ssbats-social-share-buttons a{display:inline-block;color:#333333;background-color:#ffffff;text-decoration:none;font-size:14px;font-weight:400;border:1px solid #999999;padding:2px 10px;border-radius:4px;margin:5px 5px 5px 0;cursor:pointer;box-shadow:1px 1px 2px rgba(0,0,0,.25);transition:150ms ease-in-out;}.ssbats-social-share-buttons a span:before{content:\'\';width:14px;height:14px;display:inline-block;font-weight:400;margin-right:5px;margin-bottom:-1px;background-repeat:none;filter:invert(100%) brightness(20%);transition:150ms ease-in-out;}.ssbats-social-share-buttons a.ssbats-share-facebook span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/facebook.svg\');}.ssbats-social-share-buttons a.ssbats-share-twitter span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/twitter.svg\');}.ssbats-social-share-buttons a.ssbats-share-linkedin span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/linkedin.svg\');}.ssbats-social-share-buttons a.ssbats-share-pinterest span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/pinterest.svg\');}.ssbats-social-share-buttons a.ssbats-share-tumblr span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/tumblr.svg\');}.ssbats-social-share-buttons a.ssbats-share-reddit span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/reddit.svg\');}.ssbats-social-share-buttons a.ssbats-share-whatsapp span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/whatsapp.svg\');}.ssbats-social-share-buttons a.ssbats-share-telegram span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/telegram.svg\');}.ssbats-social-share-buttons a.ssbats-share-pocket span:before{background-image:url(\'https://unpkg.com/simple-icons@latest/icons/pocket.svg\');}.ssbats-social-share-buttons a:hover{background-color:#333333;color:#ffffff;box-shadow:0 0 6px rgba(0,0,0,.5);}.ssbats-social-share-buttons a:hover span:before{filter:invert(100%);}.ssbats-social-share-buttons a.ssbats-share-facebook:hover{background-color:#1877f2;border-color:#1877f2;}.ssbats-social-share-buttons a.ssbats-share-twitter:hover{background-color:#1da1f2;border-color:#1da1f2;}.ssbats-social-share-buttons a.ssbats-share-linkedin:hover{background-color:#0077b5;border-color:#0077b5;}.ssbats-social-share-buttons a.ssbats-share-pinterest:hover{background-color:#bd081c;border-color:#bd081c;}.ssbats-social-share-buttons a.ssbats-share-tumblr:hover{background-color:#36465d;border-color:#36465d;}.ssbats-social-share-buttons a.ssbats-share-reddit:hover{background-color:#ff4500;border-color:#ff4500;}.ssbats-social-share-buttons a.ssbats-share-whatsapp:hover{background-color:#25d366;border-color:#25d366;}.ssbats-social-share-buttons a.ssbats-share-telegram:hover{background-color:#2ca5e0;border-color:#2ca5e0;}.ssbats-social-share-buttons a.ssbats-share-pocket:hover{background-color:#ef3f56;border-color:#ef3f56;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(137, 'Adivino', 'advino', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/Proxima360-adivino-banner-1504x1016.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1 id=\"idy2\"><strong id=\"ijev\">What if you can tweak your</strong><span id=\"iwm86\"> finance \n          forecast model </span><strong id=\"i61y3\">to match your</strong><br/><strong id=\"i0bk5\">real-world experience</strong><br/><strong id=\"ifdpd\">and objectives?</strong></h1><p id=\"i36xa\"> Get your FP&amp;A <span draggable=\"true\" data-highlightable=\"1\" id=\"iwzzj\">machine learning </span> assistant. \n      </p><a href=\"#\"><button class=\"prod_box\">REQUEST A DEMO</button></a></div></div></section><section id=\"pro-head\"><h1><strong id=\"icacg\">adivino (<span id=\"iehab\">ah-dee-bee-noh</span>)</strong><br/>\n    The \n    <strong id=\"ihhe3\">fortune-teller</strong> for your retail business.\n  </h1></section><section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3 id=\"iz0d8\"><strong id=\"iljzt\"> Machine learning assisted </strong><br/>\n            cash-flow forecasting\n            <strong>.</strong></h3><p id=\"i275j\">Let your strategies and finance objectives\n            be an input to the forecast model\n            to generate cash-flow goals.\n          </p><a href=\"#\"><button class=\"red_box\">I need demo</button></a></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3 id=\"ixize\"><strong id=\"iabcn\">Generate</strong> sales forecast\n            <br/><strong id=\"igevf\">for unprecedented times.</strong></h3><p id=\"i0ttu\">Trust your experience and adjust forecast \n            model parameters to figure out forecasted \n            sales to optimally allocate merchandise.\n          </p><a href=\"#\"><button class=\"red_box\">Get me access</button></a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3 id=\"icq3v\"><strong id=\"ins5c\">Generate smart strategies\n              for</strong> payments \n            <strong id=\"ik5jb\">and</strong> collections.\n          </h3><p>Determine optimal payment and collection \n            strategies to meet cash-flow goals and \n            deadlines.\n          </p><a href=\"#\"><button class=\"red_box\"> Can we talk? </button></a></div></div></div></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-11 col-md-12 offset-1\"><h1 id=\"irovkj\">\n          You’ve got a <strong id=\"i4yfru\">database?</strong> We got the connectors. \n          <br/><strong>Dashboard</strong> of your choice? No problem. \n          <br/>\n          Quick and easy setup. \n          <strong id=\"igye5i\">SaaS</strong> at its best.\n        </h1></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"><img src=\"uploads/gallery/adivino-logo-500x130.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail \n          <strong>Experts.</strong><br/><strong>Powered by</strong> MIT \n          <strong>Data Scientists.</strong></h2><div class=\"clearfix\">\n        </div><br/><br/><a href=\"#\"><button class=\"black_box\">Get in Touch</button></a><div class=\"clearfix\">\n        </div></div></div></div></section><br/><br/>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#ijev{font-size:55px;font-weight:700;}#iwm86{font-size:55px;}#i61y3{font-size:55px;}#i0bk5{font-size:55px;}#ifdpd{font-size:55px;}#i36xa{font-weight:400;margin:0 0 -39px 0;padding:29px 0 0 0;font-size:28px;}#icacg{font-weight:300;}#ihhe3{font-weight:300;}#iljzt{font-size:40px;font-weight:600;}#iz0d8{font-size:40px;}#ixize{font-size:40px;}#iabcn{font-size:40px;font-weight:600;}#igevf{font-size:40px;font-weight:600;}#icq3v{font-size:40px;}#ins5c{font-size:40px;font-weight:600;}#ik5jb{font-size:38px;font-weight:400;}#irovkj{font-size:50px;}#i4yfru{font-size:50px;}#igye5i{font-size:50px;}#idy2{margin:23.45px 0 23.45px 0;}#i275j{font-size:24px;}#i0ttu{font-size:27px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(138, 'Contact', 'contact', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/contact-banner.jpg\" class=\"img-fluid\"/></div></section><section class=\"contact-page-section\"><div class=\"container cb\"><h2 id=\"iprg\">Looking to talk more with us regarding the services/solutions we offer, or having issues with your current retail implementation. Use your preferred choice to contact us.\n</h2><div id=\"i1zkj\">\n</div><div class=\"inner-container\"><div class=\"row clearfix\"><!--Info Column--><div class=\"info-column col-md-5 col-sm-12 col-xs-12\"><div class=\"info-content\"><h3 id=\"invqs\">Sales Enquiries\n</h3><p id=\"ir4pm\">Call: +1 781-381-4101\n<br/>\nEmail:\n<a href=\"mailto:sales@proxima360.com\">sales@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"iefwj\">Podcast\n</h3><p id=\"ita43\">For Retail Corner podcast’s general/guest\nenquiry.\n</p><br/><p id=\"i83hv\">Email:\n<a href=\"mailto:retailcorner@proxima360.com\">retailcorner@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"i0c76\">Media\n</h3><p id=\"iym8l\">Email:\n<a href=\"mailto:social@proxima360.com\">social@proxima360.com</a></p></div><div class=\"info-content\"><h3 id=\"iff6j\">Location\n</h3><p id=\"idt8x\">UNITED STATES\n</p><p id=\"iwl9m\">325 wood rd. suite 103, Braintree, MA 02184\n</p><div id=\"icx8e\">\n</div><p id=\"i3s7n\">INDIA\n</p><p id=\"ixrap\">Divine Hive Space, Whitefield Road, Near Ramalayam, Kondapur, Hyderabad-500084\n</p></div></div><!--Form Column--><div class=\"col-md-7 col-sm-12 col-xs-12\"><div class=\"contact-form\"><h3 id=\"i3al6\">Give your retail business wings of fire.\n<br/>\nGet in touch with us.\n</h3><div id=\"message\">\n</div><form method=\"post\" action=\"\" id=\"contact-form\"><div class=\"row clearfix\"><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"i6g0b\">Name: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12\"><input type=\"text\" name=\"name\" value=\"\" required id=\"i9iyi\" class=\"form-control\"/></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"ijzye\">Email: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12\"><input type=\"email\" name=\"email\" value=\"\" required class=\"form-control\"/></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"i7xkp\">Purpose: </label></div><div class=\"form-group col-md-9 col-sm-6 co-xs-12s\"><div class=\"input-group\"><select name=\"purpose\" id=\"sel1\" class=\"form-control\"><option selected=\"true\" disabled=\"disabled\" value=\"I am reaching out for\">I am reaching out for</option><option value=\"Specific Solution\">Specific Solution</option><option value=\"Adivino\">Adivino</option><option value=\"General Sales\">General Sales</option><option value=\"Podcast\">Podcast</option><option value=\"Others\">Others</option></select></div></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><label id=\"ivvqk\">Message: </label></div><div class=\"form-group col-md-9 col-sm-12 co-xs-12\"><textarea name=\"message\"></textarea></div><div class=\"form-group col-md-3 col-sm-6 co-xs-12\"><div id=\"image_captcha\" class=\"form-group col-md-10 col-sm-12 co-xs-12\">\n</div></div><div class=\"form-group col-md-9 col-sm-12 co-xs-12\"><div data-sitekey=\"6LdMbYsaAAAAACcl3ZB2MYkvn-fZ8HpzpcyxYhxI\" class=\"g-recaptcha\">\n</div></div><div class=\"form-group col-md-9 offset-3 col-sm-12 co-xs-12\"><button type=\"submit\" class=\"black_box\"><p id=\"ikd1dh\">Submit\n</p></button></div></div></form></div></div></div></div></div></section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#i83hv{margin:-28px 0 10px 0;}#ikd1dh{margin:13px 0 10px 0;}#iwl9m{margin:-10px 0 10px 0;}#ixrap{margin:-10px 0 10px 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active');
INSERT INTO `tbl_pages` (`id`, `page_name`, `route`, `page_layout`, `html`, `css`, `form_ref`, `meta_title`, `meta_keyword`, `meta_description`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`, `status`) VALUES
(139, 'Store merchandising forecast', 'store-merchandising-forecast', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1>Inventory Allocation</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(140, 'POS & Square', 'pos-&-square', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/inventory-allocation.png\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iqu4\">POS &amp; Square</h1><p>How retailers can gain competetive edge?</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2>Top 3 Allocation Issues <br/> <strong>Retailers are facing today<span>. </span></strong></h2><ol><li> Unable to allocate by size demographics.</li> <br/><li> Repetitive export of data to have manual function via spreadsheets.</li> <br/><li> Extensive labor hours for manual workaround.</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"#\">Allocation </a></li><li><a href=\"#\">Merchandise Forecast</a></li><li><a href=\"#\">Cash Flow Forecast </a></li><li><a href=\"#\">POS &amp; Square </a></li><li><a href=\"#\">E-Commerce </a></li><li><a href=\"#\">Revenue Per Customer </a></li><li><a href=\"#\">Retail Accounting </a></li><li><a href=\"#\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"#\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong>How</strong> Proxima360 <strong>is solving these issues<span>?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/build-applications.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Build Applications with Custom Screens.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Allows allocators to distribute merchandise based on size to each brick and mortar store.</li> <br/><li>It ensures proper delivery of merchandise to the specific demographics of the customer at the store.</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li>Worked hand in hand with the businesses in order to remove the need to export spreadsheets and double work.</li> <br/><li>We catered the dashboard functions so that allocators could effectively work within it.</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"assets/front/images/dashboards.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4> Dashboards for Allocators.</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"assets/front/images/enhance-labour.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4> Enhance Labor Efficiency.</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li>Removing redundant &amp; repetitive labor allowed for less hours spend on formulating and analyzing data after the fact.</li> <br/><li>Increased efficiency at the warehouse and stores allowing them to provide their specific customer the right sizes of merchandise.</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong>Let us help you have the right merchandise at the right place<span>.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"#\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive'),
(141, 'POS and Square', 'pos-and-square', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"http://proxima360.com/BETA/uploads/gallery/POS-Square-banner-1534x561-compressed.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"ip4i\">Payment Processing</h1><p id=\"iihif\">Implementing Square Terminal with Legacy POS Systems</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2 id=\"itbwv\">Top 3 <b id=\"ili1l\">Payment Processing</b> Issues <br draggable=\"true\" data-highlightable=\"1\" id=\"i5d6g\"/> <strong draggable=\"true\" data-highlightable=\"1\" id=\"i1fgk\">Retailers are facing today<span draggable=\"true\" data-highlightable=\"1\" id=\"ifnp9\">. </span></strong></h2><ol><li id=\"i9y5q\"> Payment gateway solutions with limited upgrades</li> <br/><li id=\"idd5w\"> Long wait periods and high costs to implement changes</li> <br/><li id=\"i3d7k\"> Complex technical deployment solutions are counter-productive to business operations</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"ir1re\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"i3fc9\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"i699r\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"idrmo\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"ipi1w\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"igx4m\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"ir3wk\">Retail Accounting </a></li><li id=\"i97hg\"><a href=\"payroll-tracking\" id=\"i5vfy\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"uploads/gallery/Proxima360-brochure2.pdf\" target=\"_blank\" id=\"i2hoa\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2 id=\"i3gsp\"><strong id=\"i5xd7\">How</strong> Proxima360 <strong id=\"itgjk\">can help solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"ixicj\">?</span></strong></h2><div id=\"ihyt3\" class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"uploads/gallery/square-pos-integration-563x371.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"im5n4\"> Square and Legacy POS Integration</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"icqod\">Square &amp; Legacy POS integration allowing implementation of Square device to replace signature pads</li> <br/><li id=\"imzucs\">No more expensive hardware for standard signature pads. No need to configure specific debit keys</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"i50ah7\">Built-in solution for text and email receipts, out of box acceptance of all forms of payments</li> <br/><li id=\"izp5mi\">No configuration or modifications required.<div id=\"ibugol\"><br/></div></li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"uploads/gallery/out-of-box-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"if7bgq\"> Out of the Box Solutions</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"uploads/gallery/licensing-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"ilvlmn\">Reduce Licensing Costs</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"irhfkx\">Cost effective solution with a comprehensive deployment plan, offering backup solutions</li> <br/><li id=\"ipgl8x\">Reduced licensing costs and implementation complexities</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"igterr\">Reduce multiple points of failure. Let us integrate Square with your legacy POS<span draggable=\"true\" data-highlightable=\"1\" id=\"i3dw0p\">.</span></strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"i3yb6x\"> <button class=\"black_box\">Let’s Talk Now</button> </a><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\"></div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#ip4i{font-size:36px;}#iihif{font-size:18px;font-weight:400;}#i5xd7{font-size:36px;}#i3gsp{font-size:36px;}#itgjk{font-size:36px;}#icqod{font-size:24px;}#imzucs{font-size:24px;}#i50ah7{font-size:24px;}#izp5mi{font-size:24px;}#irhfkx{font-size:24px;}#ipgl8x{font-size:24px;}#igterr{font-size:50px;}#i9y5q{font-weight:400;}#idd5w{font-weight:400;}#i3d7k{font-weight:400;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(142, 'Merchandising Forecast', 'merchandising-forecast', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"http://proxima360.com/BETA/uploads/gallery/Merchandising-forecast-1534x561-compress.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"izhj\">Store Merchandise Arrival Forecast</h1><p id=\"ifaby\">Optimize backroom labor by predicting merchandise arrivals to stores</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2 id=\"ikohg\">Top 3 <b>Merchandising</b> Issues <br draggable=\"true\" data-highlightable=\"1\" id=\"isvbo\"/> <strong draggable=\"true\" data-highlightable=\"1\" id=\"iuhlh\">Retailers are facing today<span draggable=\"true\" data-highlightable=\"1\" id=\"i7rf6\">. </span></strong></h2><ol><li id=\"iqlua\"> Limited or no visibility to the contents of store shipment</li> <br/><li id=\"i8xep\"> Stores are unable to prepare their stock and sales floor prior to receiving shipments</li> <br/><li id=\"i5vld\"> Stores are unable to plan labor hours properly and contribute to better inventory control</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"iflvk\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iwze8\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"isvix\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"iy7cg\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"ijeii\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"iya6o\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"i0nik\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"i2htl\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"uploads/gallery/Proxima360-brochure2.pdf\" target=\"_blank\" id=\"iizxg\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1 id=\"i1g4d\"> Solutions</h1><div class=\"sol-bg\"><h2 id=\"iuuul\"><strong id=\"ipp5o\">How</strong> Proxima360 <strong id=\"i3ad2\">can help you solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"i88d6\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/shipment-arrival-565x371.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"i459w\"> Know Your Shipment Prior to Arrival</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"iyjsk\">Ability to view all shipment items/SKUs prior to arrival</li> <br/><li id=\"i9bael\">Fast and efficient shipment visibility implementations</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"iklqi6\">Better prepare your stockroom and sales floor with Inventory Visibility Management</li> <br/><li id=\"if44av\">Plan labor resources for backroom to sales floor fulfillment</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/inventory-visbility-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"i2is77\"> Inventory Visibility Management</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/mercahndise-visibility-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"iocs1e\"> Merchandise Visibility</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ihpbu3\">Improve visibility of merchandise availability to meet customers demand </li> <br/><li id=\"ip4jl8\">Increase efficiency of staff, allowing more time to help customers</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"ihq5k7\">Know your merchandise prior to arrival. Plan for a better sales floor.<br/></strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"iwnif6\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#izhj{font-size:36px;}#ifaby{font-size:18px;font-weight:400;}#ipp5o{font-size:36px;}#iuuul{font-size:36px;}#i3ad2{font-size:36px;}#iyjsk{font-size:24px;}#i9bael{font-size:24px;}#iklqi6{font-size:24px;}#if44av{font-size:24px;}#ihpbu3{font-size:24px;}#ip4jl8{font-size:24px;}#ihq5k7{font-size:50px;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(143, 'Revenue Per Customer', 'revenue-per-customer', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"uploads/gallery/Rev-customer-footwear-1534x561.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"i72b\">Footwear - Increase Revenue Per Customer </h1><p id=\"ijr3s\">Ensure every style and color footwear in backroom are on display</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1 id=\"i7flu\">Problem</h1><h2 id=\"ixmid\">Top 3 barriers to <b>Revenue Generation</b><br draggable=\"true\"/> <strong draggable=\"true\">Retailers are facing today</strong></h2><ol id=\"iybj7\"><li id=\"imaok\"> Lack of proper clienteling, based on floor set changes and customer historical behavior</li> <br/><li id=\"im1ig\"> Lack of customer engagement, based on customer location and purchase history</li> <br/><li id=\"ilpl7\">Missed sales opportunities due to inefficient floor replenishment processes</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"i4m6h\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iyl4h\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"ikz7l\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"iae2f\">POS &amp; Square </a></li><li id=\"iaarb\"><a href=\"e-commerce\" id=\"i609g\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"ixkij\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"i4oan\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"i7xtx\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p id=\"izwct\"><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"uploads/gallery/Proxima360-brochure2.pdf\" target=\"_blank\" id=\"io56n\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2 id=\"iiqgu\"><strong id=\"ivkjf\">How</strong> Proxima360 <strong id=\"ixtbw\">can help you solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"ihr8d\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"uploads/gallery/dashboard-licen-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"i5o1d\"> Build Interactive Dashboards to assist with Clienteling</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ioav1\">Interactive dashboards to conduct clienteling for key customers</li> <br/><li id=\"iyh6ri\">Keep track of customer shopping habits and issue item recommendations enhancing customer re-engagement</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"irhotz\">Re-engage customers based on location with text messages about new offers or items</li> <br/><li id=\"it5jcf\">Entice customers with personalized offers and rewards to drive another trip</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/customer-engagement-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"ih3ah6\">Strategies for Customer <div>Re-Engagement</div></h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/enhance-labour-licen-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"i3hmyh\"> Keeping Track of Inventory</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"iyoo14\">App to track store inventory, running real-time comparison of floor versus backroom ensuring missing items/SKUs are identified and replenished</li> <br/><li id=\"iy5xts\">Real-time reporting of inventory scans to head office team for better accountability and accuracy</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"iqvdki\">Are you able to find, engage and build customer relationships to encourage loyalty and repeat purchases<span draggable=\"true\" data-highlightable=\"1\" id=\"iuzh4v\">?</span></strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"i8vnrh\"> <button class=\"black_box\">Let’s Talk Now</button> </a><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\"></div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#i72b{font-size:36px;}#ijr3s{font-size:18px;font-weight:400;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}#ixmid{font-size:37px;font-weight:400;}#ivkjf{font-size:36px;}#ixtbw{font-size:36px;}#ioav1{font-size:24px;}#iyh6ri{font-size:24px;}#irhotz{font-size:24px;}#it5jcf{font-size:24px;}#iyoo14{font-size:24px;}#iy5xts{font-size:24px;}#iqvdki{font-size:47px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(144, 'Retail Accounting', 'retail-accounting', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"http://proxima360.com/BETA/uploads/gallery/retail-accounting-banner-1534x561-compress.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"iu38\">Holistic Retail &amp; Cost Accounting</h1><p id=\"ilk1q\">Consolidate accountings methods for the organization into one.</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1 id=\"ifrsj\">Problem</h1><h2 id=\"iem03\">Top 3 <b>Accounting</b> Issues <br draggable=\"true\" data-highlightable=\"1\" id=\"ixelx\"/> <strong draggable=\"true\" data-highlightable=\"1\" id=\"islrh\">Retailers are facing today</strong></h2><ol><li id=\"i0fmn\"> Multiple accounting systems and perspectives across different departments</li> <br/><li id=\"izo7t\"> Mixed retail and cost accounting - in one organization</li> <br/><li id=\"i3flz\"> Absence of holistic accounting solutions requires a significant investment in ad-hoc reporting</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"iij5t\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"idhjx\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"igjmc\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"ikst9\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"i5emq\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"iz1wl\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"ihul4\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"i7nbq\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p id=\"i87gn\"><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"uploads/gallery/Proxima360-brochure2.pdf\" id=\"iunmj\" target=\"_blank\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2><strong id=\"i12sp\">How</strong> Proxima360 <strong id=\"itcs4\">can help solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"iy0ru\">?</span></strong></h2><div id=\"iy4ad\" class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/retail-kpi-565x371.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"is6z3\"> Key Retail KPIs</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"i1inr\">Implement new systems with shared, holistic KPIs across the organization </li> <br/><li id=\"ivvyai\">KPIs to ensure one shared, omni view of  sales, inventory movement, growth, and customer satisfaction</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"ibs43z\">Inventory evaluation during markdowns to help manage open-to-buy accurately</li> <br/><li id=\"ib16fh\">Dashboard and KPIs for all metrics across all departments</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/dashboard-licen-559x374.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"ijl9z7\">Open-to-Buy Management</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/reporting-platform-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"i47bml\"> Holistic Reporting Platform</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"iydvdr\">Consolidate functions across departments, create holistic reporting platform allowing departments to review and react to metrics</li> <br/><li id=\"iviw7t\">Import historical data to help businesses analyze current trends versus comps</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"ifd5ij\">Do you struggle  with departments working in silos? We provide strategies &amp; solutions to help create synergies and drive engagement <br draggable=\"true\"/></strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"ifj587\"> <button class=\"black_box\">Let’s Talk Now</button> </a><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\"></div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}#iu38{font-size:36px;}#ilk1q{font-size:18px;font-weight:400;}#i12sp{font-size:36px;}#itcs4{font-size:36px;}#i1inr{font-size:24px;}#ivvyai{font-size:24px;}#ibs43z{font-size:24px;}#ib16fh{font-size:24px;}#iydvdr{font-size:24px;}#iviw7t{font-size:24px;}#ifd5ij{font-size:39px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(145, 'Payroll Tracking', 'payroll-tracking', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"http://proxima360.com/BETA/uploads/gallery/payroll_tracking_banner_1534x561-compress.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"i14u\">Store Payroll Control &amp; Tracking</h1><p id=\"ih0ts\">Keep payroll to <b draggable=\"true\" data-highlightable=\"1\" id=\"icmro\">13%</b> of sales, measuring planned sales, scheduled payroll hours, and actual payroll hours</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1>Problem</h1><h2 id=\"iwrag\">Top 3 <b>Payroll</b> Issues <br draggable=\"true\" data-highlightable=\"1\" id=\"is1yl\"/> <strong draggable=\"true\" data-highlightable=\"1\" id=\"ic13e\">Retailers are facing today</strong></h2><ol><li id=\"izw49\"> Lack of effective payroll tracking at the store</li> <br/><li id=\"ibcek\"> No active tracking of actual sales versus payroll hours</li> <br/><li id=\"insdq\"> Lack of planning at the distribution center to live track shipments and make real-time labor hours adjustments</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"izq3b\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"i3ok9\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"idmiz\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"iy8gs\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"icwt7\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"if0k6\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"itral\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"ifmky\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p id=\"izo0t\"><i draggable=\"true\" data-highlightable=\"1\" aria-hidden=\"true\" id=\"iwnrf\" class=\"fa fa-file-pdf-o\"></i> <a draggable=\"true\" data-highlightable=\"1\" href=\"uploads/gallery/Proxima360-brochure2.pdf\" id=\"ikg9p\" target=\"_blank\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1> Solutions</h1><div class=\"sol-bg\"><h2 id=\"iw459\"><strong id=\"i3enl\">How</strong> Proxima360 <strong id=\"ipnq9\">can help solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"iucs4\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/build-applications-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"impnb\">Active Monitoring</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ikorj\">Dashboards to allow store management to react promptly to the shift in sales and un-utilized resources</li> <br/><li id=\"ijjyie\">Align store payroll to store sales during planning and real-time to support sales</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul id=\"iagiyu\"><li id=\"ivdwdg\">Keeping payroll t 13% of overall sales.<div id=\"ijnx3h\"><br/></div></li> <br/><li id=\"inkapq\">Measuring planned sales vs. scheduled payroll hours, vs actual payroll hours, vs hours actual sales</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/reporting-platform-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"i7fcef\">Measure Sales vs Payroll</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/enhance-labour-licen-551x367.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"ilbxev\"> Planning at Distribution Centers</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"ibfy5r\">Dashboard that allows distribution centers to holistically plan resource hours </li> <br/><li id=\"i9fnvm\">Payroll planning based on received shipments and changes to planned shipments</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1><strong id=\"i348zh\">We can help you keep your store payroll to 13% of your overall sales</strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"im2xpv\"> <button class=\"black_box\">Let’s Talk Now</button> </a><div class=\"clearfix\"></div><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.solban-text{background-color:rgba(205, 18, 33,0.6);}#i14u{font-size:36px;}#ih0ts{font-size:18px;font-weight:400;}#i3enl{font-size:36px;}#ipnq9{font-size:36px;}#ikorj{font-size:24px;}#ijjyie{font-size:24px;}#ivdwdg{font-size:24px;}#inkapq{font-size:24px;}#ibfy5r{font-size:24px;}#i9fnvm{font-size:24px;}#i348zh{font-size:50px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(146, 'E-Commerce', 'e-commerce', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"http://proxima360.com/BETA/uploads/gallery/e-commerce-banner-1534x561-compress.jpg\" class=\"img-fluid\"/><div class=\"solban-text\"><h1 id=\"ify4\">E-Commerce for Mid-Market Retailers</h1><p id=\"igbt4\">End-to-end e-commerce solution. Cost effective system with built-in OMS, WMS, omni-channel, shipping optimization, and performance monitoring</p></div></div> </section> <section id=\"problem\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-9 col-md-8\"><h1 id=\"if8il\">Problem</h1><h2 id=\"if06s\">Top 3 <b>E-Commerce</b> Issues <br draggable=\"true\" data-highlightable=\"1\" id=\"igp96\"/> <strong draggable=\"true\" data-highlightable=\"1\" id=\"i0k3l\">Retailers are facing today</strong></h2><ol><li id=\"iigbq\"> Lack of order fulfillment optimization</li> <br/><li id=\"in854\"> Lack of proper assortment planning, inventory control and inventory planning.</li> <br/><li id=\"iyrhd\"> Incorrect forecasting of retail metrics due to inaccuracy in the metrics related to store sales and shrink</li></ol></div><div class=\"col-lg-3 col-md-4\"><div id=\"jquery-accordion-menu\" class=\"jquery-accordion-menu\"><ul><li class=\"active\"><a href=\"allocation\" id=\"ikzwt\">Allocation </a></li><li><a href=\"merchandising-forecast\" id=\"iztbj\">Merchandise Forecast</a></li><li><a href=\"adivino\" id=\"ilzm7\">Cash Flow Forecast </a></li><li><a href=\"pos-and-square\" id=\"i0clg\">POS &amp; Square </a></li><li><a href=\"e-commerce\" id=\"iaej6\">E-Commerce </a></li><li><a href=\"revenue-per-customer\" id=\"i820n\">Revenue Per Customer </a></li><li><a href=\"retail-accounting\" id=\"iewfo\">Retail Accounting </a></li><li><a href=\"payroll-tracking\" id=\"iwnui\">Payroll Tracking</a></li></ul></div><div class=\"brochure\"><p><i aria-hidden=\"true\" class=\"fa fa-file-pdf-o\"></i> <a href=\"uploads/gallery/Proxima360-brochure2.pdf\" id=\"igjnc\" target=\"_blank\"> Download Brochure </a></p></div></div></div></div> </section> <section id=\"sol\"><div class=\"container\"><h1 id=\"i1rlg\"> Solutions</h1><div class=\"sol-bg\"><h2 id=\"iof3x\"><strong id=\"ita6h\">How</strong> Proxima360 <strong id=\"iccvw\">can help solve these issues<span draggable=\"true\" data-highlightable=\"1\" id=\"iyu4b\">?</span></strong></h2><div class=\"row\"><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/fulfillment-optmiz-565x371.jpg\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"izaeh\"> Fulfillment Optimization</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"i5e9h\">Implement tools that support proper promotion of products based on customer location to reduce shipping costs</li> <br/><li id=\"in2njj\">Reduce operational (carrier, returns &amp; payroll) costs and increase margins with effective fulfillment tools and strategies</li></ul></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-6 col-md-6\"><ul><li id=\"ilhzij\">Dashboards and report generation for clients to incorporate e-commerce fulfillment of sales via brick-n-mortar locations</li> <br/><li id=\"i6pnvv\">Implement proper assortment planning methods to consider ship-from-store or buy-online-pickup-at-store</li></ul></div><div class=\"col-lg-4 col-md-6 offset-1\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/assortment-planning-559x374.jpg\" class=\"img-fluid\"/><div class=\"sol_details_rts d-flex align-items-center justify-content-center\"><h4 id=\"izth36\"> Assortment Planning</h4></div></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div class=\"col-lg-4 col-md-6\"><div class=\"img-box\"><img src=\"http://proxima360.com/BETA/uploads/gallery/retail-kpi-565x371.png\" class=\"img-fluid\"/><div class=\"sol_details d-flex align-items-center justify-content-center\"><h4 id=\"igz5eo\">Retail Metrics Forecast</h4></div></div></div><div class=\"col-lg-6 col-md-6 offset-1\"><ul><li id=\"iunvxn\">Ability to edit metrics for retail forecasting to ensure an accurate view of the business</li> <br/><li id=\"i9urds\">Tools and strategies for retailers to measure the impact of physical retail on digital sales</li></ul></div></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-7 justify-content-center text-center\"><h1 id=\"i7qaet\"><strong id=\"ik1obg\"><span draggable=\"true\" data-highlightable=\"1\" id=\"ivxacw\"><font draggable=\"true\" data-highlightable=\"1\" color=\"#000000\" id=\"i39sbf\">Pick, pack, and ship in a fast, affordable and accurate manner with our fulfillment optimization tool</font></span></strong></h1><div class=\"clearfix\"></div> <a href=\"contact\" id=\"i97pel\"> <button class=\"black_box\">Let’s Talk Now</button> </a><p class=\"pull-right\"> <strong>Carlos Diaz</strong><br/><small>Director, Business Development </small></p><div class=\"clearfix\"></div></div><div class=\"col-lg-5\"><img src=\"assets/front/images/carlos-diaz.png\" class=\"img-fluid\"/></div></div></div> </section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}.solban-text{background-color:rgba(205, 18, 33, 0.6);}#ify4{font-size:36px;}#igbt4{font-size:18px;font-weight:400;}#if06s{font-size:37px;}#ita6h{font-size:36px;}#iccvw{font-size:36px;}#i5e9h{font-size:24px;}#in2njj{font-size:24px;}#ilhzij{font-size:24px;}#i6pnvv{font-size:24px;}#iunvxn{font-size:24px;}#i9urds{font-size:24px;}#ik1obg{font-size:50px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(147, 'ReKount', 'rekount', '', '<div class=\"clearfix\"></div> <section id=\"inbanner\"><div class=\"container\"> <img src=\"assets/front/images/adivino-banner.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1><strong>What if you can tweak your</strong> <span>finance forecast model </span> <strong>to match your</strong> <br/> <strong>real-world experience</strong> <br/> <strong>and objectives?</strong></h1><p> Get your FP&amp;A a <span> machine learning </span> assistant.</p> <a href=\"#\"> <button class=\"prod_box\">REQUEST A DEMO</button> </a></div></div> </section> <section id=\"pro-head\"><h1><strong>adivino (<span>ah-dee-bee-noh</span>)</strong><br/> The <strong>fortune-teller</strong> for your retail business.</h1> </section> <section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3> <strong> Machine learning assisted </strong><br/> cash-flow forecasting<strong>.</strong></h3><p>Let your strategies and finance objectives be an input to the forecast model to generate cash-flow goals.</p> <a href=\"#\"> <button class=\"red_box\">I need demo</button> </a></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><h3> <strong>Generate</strong> sales forecast<br/> <strong>for unprecedented times.</strong></h3><p>Trust your experience and adjust forecast model parameters to figure out forecasted sales to optimally allocate merchandise.</p> <a href=\"#\"> <button class=\"red_box\">Get me access</button> </a></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div class=\"clearfix\"></div><div class=\"pad\"></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong>Generate smart strategies for</strong> payments <strong>and</strong> collections.</h3><p>Determine optimal payment and collection strategies to meet cash-flow goals and deadlines.</p> <a href=\"#\"> <button class=\"red_box\"> Can we talk? </button> </a></div></div></div></div> </section> <section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1><strong>You’ve got a database?</strong> We got the connectors. <br/> Dashboard of your choice? No problem. <br/> Quick and easy setup. <strong>SaaS at its best.</strong></h1></div></div></div> </section> <section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"> <img src=\"assets/front/images/adivino-logo.png\" class=\"img-fluid\"/><h2><strong>Envisioned by</strong> Retail <strong>Experts.</strong><br/> <strong>Powered by</strong> MIT <strong>Data Scientists.</strong></h2><div class=\"clearfix\"></div> <br/> <br/> <a href=\"#\"> <button class=\"black_box\">Get in Touch</button> </a><div class=\"clearfix\"></div></div></div></div> </section> <br/> <br/>', '* { box-sizing: border-box; } body {margin: 0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 1, 'Inactive');
INSERT INTO `tbl_pages` (`id`, `page_name`, `route`, `page_layout`, `html`, `css`, `form_ref`, `meta_title`, `meta_keyword`, `meta_description`, `created_date`, `updated_date`, `created_by`, `updated_by`, `deleted`, `status`) VALUES
(148, 'Adivino', 'adivino', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/Proxima360-adivino-banner-1504x1016.png\" class=\"img-fluid\"/><div class=\"prod-ban\"><h1><strong id=\"i6cp\">What if you could tweak your</strong><span id=\"is2rk\"> financial forecasting model </span><strong id=\"i51nj\">to match your</strong><br/><strong id=\"iwa23\">real-world experience</strong><br/><strong id=\"ihqvu\">and objectives?</strong></h1><p id=\"iqnjz\"> Get your FP&amp;A \n        <span draggable=\"true\">machine learning </span> assistant.\n      </p><a href=\"contact\" id=\"i63cj\"> <button class=\"prod_box\"> REQUEST A DEMO</button> </a></div></div></section><section id=\"pro-head\"><h1 id=\"i7w8a\"><strong draggable=\"true\" data-highlightable=\"1\" id=\"im3dt\">adivino (<span draggable=\"true\" data-highlightable=\"1\" id=\"ihern\">ah-dee-bee-noh</span>)</strong><br draggable=\"true\" data-highlightable=\"1\" id=\"i5rxp\"/>\n    A \n    <strong draggable=\"true\" data-highlightable=\"1\" id=\"ios73\"> fortune-teller </strong>\n    for your retail business</h1></section><section id=\"sol\"><div class=\"container\"><div class=\"ad-bg\"><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-1.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3><strong id=\"idj6i\"> Machine learning assisted </strong><br/><span id=\"i4rel\"> cash-flow forecasting</span></h3><p id=\"ihnub\"><span id=\"iv3vh\">Integrate your strategies and financial objectives into your forecast model in support of your cash-flow goals</span></p><a href=\"contact\" id=\"i1u5h\"> <button class=\"red_box\">I need demo</button> </a></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-sm-6 order-sm-12 wow fadeInRightBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-2.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-sm-6 order-sm-1 wow fadeInLeftBig\"><h3><strong id=\"i2w2f\">Generate</strong><span id=\"io404\"> sales forecast </span><br/><strong id=\"i7gbp\">in unprecedented times</strong></h3><p><span id=\"iw08l\"> Trust your experience and adjust forecast model parameters to figure out forecasted sales to optimally allocate merchandise</span></p><a href=\"contact\" id=\"isulm\"> <button class=\"red_box\">Get me access</button> </a></div></div><div class=\"clearfix\">\n        </div><div class=\"pad\">\n        </div><div class=\"row\"><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInLeftBig\"><div class=\"img-box\"><img src=\"assets/front/images/advino-3.png\" class=\"img-fluid\"/></div></div><div data-wow-duration=\"800ms\" class=\"col-lg-6 col-md-6 wow fadeInRightBig\"><h3 id=\"ijb4b\"><strong draggable=\"true\" data-highlightable=\"1\" id=\"ipyuk\">Generate smart strategies for</strong><span> payments </span><strong draggable=\"true\" data-highlightable=\"1\" id=\"irnz7l\">and</strong><span id=\"iroy4o\">collections</span></h3><p id=\"ih4ves\"><span id=\"iut0hx\"> Determine optimal payment and collection strategies to meet cash-flow goals and deadlines</span></p><a href=\"contact\" id=\"ix4ypa\"> <button class=\"red_box\"> Can we talk? </button> </a></div></div></div></div></section><section id=\"aquote\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-10 col-md-12 offset-2\"><h1 id=\"i64ytl\"><strong id=\"iti983\">You’ve got a <b id=\"ioksq5\">database\n            </b>?</strong><span id=\"iynws3\"> We have the connectors. \n            <br draggable=\"true\" data-highlightable=\"1\" id=\"iwwuek\"/><b draggable=\"true\" data-highlightable=\"1\" id=\"imo58i\"> Dashboard \n            </b>of your choice? No problem. \n            <br draggable=\"true\" data-highlightable=\"1\" id=\"i4vmzi\"/> Quick and easy setup. </span><strong id=\"i4akgr\"><b id=\"i6aepf\">SaaS\n            </b> at its best.</strong></h1></div></div></div></section><section id=\"carlos\"><div class=\"container\"><div class=\"row\"><div class=\"col-lg-12 justify-content-center text-center\"><img src=\"uploads/gallery/adivino-logo-500x130.png\" class=\"img-fluid\"/><h2 id=\"i5h0jg\"><strong id=\"i7mkqj\">Envisioned by</strong><span id=\"icslz1\"> Retail </span><strong id=\"iihl8k\">Experts.</strong><br/><strong id=\"i3t2bi\">Powered by</strong><span id=\"ijguid\"> MIT  </span><strong id=\"iw6fqh\">Data Scientists.</strong></h2><div class=\"clearfix\">\n        </div><br/><br/><a href=\"contact\" id=\"ilj9l5\"> <button class=\"black_box\">Get in Touch</button> </a><div class=\"clearfix\">\n        </div></div></div></div></section><br/><br/>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}#i6cp{font-size:50px;font-weight:500;}#is2rk{font-size:50px;font-weight:500;}#i51nj{font-size:50px;font-weight:500;}#iwa23{font-size:50px;font-weight:500;}#ihqvu{font-size:50px;font-weight:500;}#iqnjz{font-size:24px;font-weight:500;margin:0 0 -39px 0;padding:29px 0 0 0;}#ihnub{font-size:24px;}#iv3vh{font-size:24px;}#iihl8k{font-weight:700;}#icslz1{font-weight:700;}#i7mkqj{font-weight:400;}#i3t2bi{font-weight:400;}#ijguid{font-weight:700;}#iti983{font-weight:400;font-size:40px;}#i4akgr{font-weight:400;font-size:40px;}#iw08l{font-size:24px;}#iut0hx{font-size:24px;}#iynws3{font-size:40px;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active'),
(149, 'solutions', 'solutions', '', '<div class=\"clearfix\">\n</div><section id=\"inbanner\"><div class=\"container\"><img src=\"uploads/gallery/solutions-banner-1504x465.png\" class=\"img-fluid\"/></div></section><br/><br/><div class=\"container\"><div class=\"head1\"><div class=\"row1s\"><div class=\"col-lg-10\"><h1> Our \n          <span>Solutions</span></h1></div></div></div></div><section id=\"solution\" class=\"padding-top cvb\">\n</section>', '* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}*{box-sizing:border-box;}body{margin:0;}', NULL, '', '', '', '0000-00-00', '0000-00-00', 0, 0, 0, 'Active');

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
  `deleted` int(2) NOT NULL DEFAULT 0
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
  `deleted` int(2) NOT NULL DEFAULT 0,
  `target` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_podcast_slider`
--

INSERT INTO `tbl_podcast_slider` (`id`, `type`, `page_name`, `name`, `image`, `button_name`, `link`, `short_desc`, `status`, `created_date`, `updated_date`, `deleted`, `target`) VALUES
(1, 'home-banner', 'Home', '', 'uploads/podcast/Home-banner-1549x876-compressed.jpg', '', '', '<p>RETAIL</p>\r\n        <h1>Human Powered Machine Learning for <span>Finance </span> </h1>\r\n       <a href=\"#cbz\"></a><a href=\"https://proxima360.com/BETA/adivino\" target=\"_blank\"> See what it can do for you. </a><i class=\"fa fa-arrow-circle-right\" aria-hidden=\"true\"></i><a href=\"https://proxima360.com/BETA/adivino\" target=\"_blank\"> </a>', 'Active', '2021-03-12', '2021-03-19', 0, '_blank'),
(2, 'featured-guests', 'Podcast', '   Devavrat Shah, Ph.D.Head, \r\n          Data Science. MIT', 'uploads/podcast/devavrat9.jpg', ' Listen Podcast ', 'https://retailcorner.proxima360.com/', '<p><span style=\"font-size: 24px;\">“Whether it is retail finance, merchandising, planning, or distribution, every decision fundamentally relies on accurately forecasting the demand for the product.”</span></p>', 'Active', '2021-03-12', '2021-03-28', 0, '_blank'),
(3, 'featured-guests', 'Podcast', 'Jeremy Altman, VP\r\nPaysafe Group', 'uploads/podcast/Jeremy-Altman-410x411.jpg', ' Listen Podcast ', 'https://retailcorner.proxima360.com/podcast/latest-trends-in-digital-payments-what-does-it-mean-in-the-new-normal/', '<p><span style=\"font-size: 24px;\">“Lost in Transaction - Impact on Consumer Payment Behavior in New Normal”</span></p>', 'Active', '2021-03-12', '2021-03-28', 0, '_blank'),
(4, 'host', 'Podcast', '', 'uploads/podcast/host2.jpg', '', '', '', 'Active', '2021-03-12', '2021-03-12', 0, ''),
(11, 'home-banner', 'Home', '', 'uploads/podcast/allocation-banner-image-1549x876-compressed.jpg', '', '', '<p>RETAIL</p>\r\n        <h1>Allocating based on Customer <span>Demographics </span> </h1>\r\n       <a href=\"#solutions\"> Are you having the right merchandise at the right store?. <i class=\"fa fa-arrow-circle-down\" aria-hidden=\"true\"></i> </a>', 'Active', '2021-03-17', '2021-03-26', 0, '_blank'),
(12, 'featured-guests', 'Podcast', 'Kim Berknov, Executive Chairman,\r\nDetego', 'uploads/podcast/Kim-Berknov-410x411.jpg', 'Listen Podcast', 'https://retailcorner.proxima360.com/podcast/rfid-improve-inventory-accuracy/', '<p><span style=\"font-size: 24px;\">“<b>RFID</b> increases inventory and on shop floor accuracy to <b>98%</b> as compared to 60-70% with no RFID.”</span>\"</p>', 'Active', '2021-03-28', '2021-03-28', 0, '_blank'),
(13, 'featured-guests', 'Podcast', 'Jeannie Barsam, CEO & Founder,\r\nGifting Brands', 'uploads/podcast/Jeannie-Barsam-410x411.jpg', 'Listen Podcast', 'https://retailcorner.proxima360.com/podcast/retail-serving-higher-purpose/', '<p><span style=\"font-size: 24px;\">“Making things possible when it comes to giving with purpose. Listen about initiatives which are not for profits but serving a higher purpose for humanity.”</span><br></p>', 'Active', '2021-03-28', '0000-00-00', 0, '_blank');

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
(1, 'uploads/solutions/allocation_454x306.jpg', 'Having the right merchandise assortment at different stores', 'Left', '_blank', 'Image', 'Allocation', 'Inventory Allocation', 'Active', 0, '2021-02-19', '2021-03-29'),
(2, 'uploads/solutions/inventory_allocation_proxima360_454x306.jpg', 'Ensure every style and color of footwear in the backroom are on display', 'Right', '_blank', 'Image', 'revenue-per-customer', 'Revenue per Customer Footwear', 'Active', 0, '2021-02-19', '2021-03-29'),
(4, 'uploads/solutions/proxima360_merch_forecast.jpg', 'Optimize backroom labor by predicting merchandise arrivals to stores', 'Right', '_blank', 'Image', 'merchandising-forecast', 'Store Merchandising Forecast', 'Active', 0, '2021-02-19', '2021-03-29'),
(5, 'uploads/solutions/payroll_track1.jpg', 'PAYMENT PROCESSING', 'Left', '_self', 'Text', 'pos-and-square', 'Implementing Square Terminal with Legacy POS system', 'Active', 0, '2021-02-25', '2021-03-16'),
(6, '', 'Retail Solutions & Services', 'Left', '_self', 'Heading', 'retail-solutions-services', 'We Help Retailers\r\nAchieve Their Gameplan.', 'Active', 0, '2021-03-09', '2021-03-25'),
(7, 'uploads/solutions/store-payroll-thumbnail.jpg', 'Keeping payroll to 13% of the overall sales. Measuring planned sales vs payroll scheduled hours, vs actual payroll hours, vs hours actual sales.', 'Left', '', 'Image', 'payroll-tracking', 'Store Payroll & Tracking', 'Inactive', 1, '2021-03-29', '0000-00-00'),
(8, 'uploads/solutions/e-commerce_thumbnails.jpg', 'End-to-end e-commerce solution. Cost effective system with built-in OMS, WMS, omni-channel, shipping optimization, and performance monitoring.', 'Left', '', 'Image', 'e-commerce', 'E-Commerce for Mid-Market Retailers', 'Inactive', 1, '2021-03-29', '0000-00-00'),
(9, 'uploads/solutions/app-dev.jpg', 'Test', 'Right', '', 'Image', '', 'test', 'Inactive', 1, '2021-03-30', '0000-00-00'),
(10, 'uploads/solutions/app-dev1.jpg', 'Test', 'Right', '', 'Image', '', 'test', 'Inactive', 1, '2021-03-30', '0000-00-00');

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
(2, 'uploads/story/1997.png', 'Implemented first Oracle (RETEK) suite in North America', '1997', 'Active', 0, '2021-03-02', '2021-03-25'),
(3, 'uploads/story/2008.png', 'Integrated BI analytics platform for merchandising, HR & finance', '2008', 'Active', 0, '2021-03-02', '0000-00-00'),
(4, 'uploads/story/2016.png', 'First global Oracle solution delivered on a single instance platform', '2016', 'Active', 0, '2021-03-02', '2021-03-25'),
(5, 'uploads/story/2019.png', 'Proxima360 is born. Our customer won RILA award for our supply chain initiative ', '2019', 'Active', 0, '2021-03-02', '2021-03-25'),
(6, 'uploads/team/20218.png', 'Launched Innovative Machine Learning forecasting tool for finance', '2021', 'Active', 0, '2021-03-02', '2021-03-25');

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
  `deleted` int(2) NOT NULL DEFAULT 0,
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
(5, '2', 'Retail Accounting', 'Retail Accounting', 'Header,Footer', 'Active', 'Active', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-10'),
(6, '2', 'POS & Square (Payments)', 'pos-and-square', 'Header,Footer', 'Active', 'Active', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-11'),
(7, '3', 'Adivino', 'adivino', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-02-19', '2021-03-18'),
(8, '3', 'Rekount', 'rekount', 'Footer', 'Inactive', 'Active', '_blank', 'Inactive', 0, '2021-02-19', '0000-00-00'),
(9, '2', 'Inventory Allocation', 'allocation', 'Header,Footer', 'Active', 'Active', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-16'),
(10, '2', 'Revenue per Customer Footwear', 'Revenue per Customer Footwear', 'Header,Footer', 'Active', 'Active', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-10'),
(11, '2', 'Merchandising Forecast', 'Merchandising Forecast', 'Header,Footer', 'Active', 'Active', '_blank', 'Inactive', 1, '2021-02-19', '2021-03-10'),
(12, '2', 'Inventory Allocation', 'allocation', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-02-19', '2021-03-18'),
(13, '7', 'About', 'about', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(14, '7', 'What We Do', 'what we do', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(15, '7', 'Careers', 'careers', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(16, '7', 'Contact', 'contact', 'Footer', 'Inactive', 'Active', '_blank', 'Active', 0, '2021-02-19', '0000-00-00'),
(17, '8', 'About', 'about-us', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-02-22', '2021-03-10'),
(18, '8', 'Podcast', 'podcast', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-02-22', '2021-03-18'),
(19, '8', 'Careers', 'Careers', 'Footer', 'Inactive', 'Active', '_blank', 'Inactive', 0, '2021-02-22', '0000-00-00'),
(20, '8', 'Contact us', 'Contact us', 'Footer', 'Inactive', 'Active', '_blank', 'Inactive', 1, '2021-02-22', '2021-03-10'),
(21, '3', 'Adivino', 'adivino', 'Header', 'Active', 'Inactive', '_self', 'Active', 0, '2021-03-01', '2021-03-18'),
(22, '3', 'Rekount', 'Rekount', 'Header', 'Active', 'Inactive', '_blank', 'Inactive', 0, '2021-03-01', '2021-03-10'),
(23, '8', 'News & Views', 'publications', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-03-10', '2021-03-16'),
(24, '8', 'Contact us', 'contact', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-03-10', '0000-00-00'),
(25, '8', 'Home', '#', 'Footer', 'Inactive', 'Active', '_self', 'Active', 0, '2021-03-16', '0000-00-00'),
(26, '2', 'POS & Square (Payments)', 'pos-and-square', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-18'),
(27, '2', 'Store Merchandising Forecast', 'merchandising-forecast', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-18'),
(28, '2', 'Increase Revenue per Customer', 'revenue-per-customer', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-26'),
(29, '2', 'Retail Accounting', 'retail-accounting', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-18'),
(30, '2', 'E-Commerce for Mid-Market Retailers', 'e-commerce', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-18'),
(31, '2', 'Store Payroll Tracking', 'payroll-tracking', 'Header,Footer', 'Active', 'Active', '_self', 'Active', 0, '2021-03-16', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `page_id` int(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`id`, `page_id`, `email`, `created_date`) VALUES
(2, 0, 'skbhate@gmail.com', '2021-03-15 15:21:42'),
(9, 0, 'superadmin@proxima.com', '2021-03-18 18:54:14'),
(10, 0, 'skbhate@gmail.com', '2021-03-25 14:48:23');

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
  `deleted` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `image`, `linkdin_acc`, `designation`, `short_desc`, `long_desc`, `status`, `created_date`, `updated_date`, `deleted`) VALUES
(2, 'Anil Varghese', 'uploads/team/Anil_Varghese-250x2501.png', 'https://www.linkedin.com/in/aniljacobv/', 'CEO', '', 'Anil brings over 18 years of experience in Retail IT, RP System Integration and Data Analytics. He has been monumental in building and leading successful teams for many world class retailers. His expertise lies in integrating complex systems and business functions across different retail functional areas. Over the years, he has proven to support client\'s needs in delivering total retail solutions for customers.', 'Active', '2021-03-01', '2021-03-25', 0),
(5, 'Bharat Agrawal', 'uploads/team/Bharat_Agrawal-250x250.png', 'https://www.linkedin.com/in/bharat-agrawal-444669/', 'Chairman', '', 'Bharat holds the position of chairman for Proxima360 and CEO of parent company Dotcom Team, LLC. With over 20 years of technical and executive management experience, he is uniquely skilled to drive the growth of the company. He believes in employee well-being before company\'s success. Bharat loves to travel and is an avid outdoor enthusiast.', 'Active', '2021-03-02', '2021-03-18', 0),
(6, 'Saurabh Kulshretha', 'uploads/team/Saurabh_Kulshretha-250x2501.png', 'https://www.linkedin.com/in/saurabh-kulshrestha-5aa2621b/', 'Managing Director, India', '', 'Saurabh Kulshrestha is Managing Director and Country Head India who partners with business and IT executives to simplify the business processes, stabilize the systems and proactively plan for new trends in the industry. Saurabh brings over 15 years of expertise in Merchandising, Supply chain, Omni-channel to improve the business efficiency, reduce speed to market, stabilize the systems and provide the business trends/data to define/support the key business initiatives. He believes stability and continues improvement of IT systems helps business to make the right and data driven decisions which help business to grow.', 'Active', '2021-03-09', '2021-03-18', 0),
(7, 'Sachin Kumar Bhate', 'uploads/team/Sachin_Kumar_Bhate-250x250.png', 'https://www.linkedin.com/in/sachinkumarbhate/', 'Director, Marketing & Innovation', '', 'Sachin is an entrepreneur, software architect, and a marketing enthusiast with over 20 years of experience. An avid supporter of creative expression and open source movement, he has built valuable software infrastructures for the Department of Defense during his tenure as a software architect. His startup venture in Big data where he focused on marketing and community outreach has created an immense value for data science professionals. At Proxima360, he is involved in creating long lasting footprints for the company with right marketing channels. He is passionate about writing and independent film-making.', 'Active', '2021-03-09', '2021-03-18', 0),
(8, 'Carlos Diaz', 'uploads/team/Carlos_Diaz-250x250.png', 'https://www.linkedin.com/in/carlos-diaz-525057198/', 'Director, Sales & Business Development', '', 'With over 15 years of retail experience working across various departments and retailers, Carlos understands the driving factors of an organization. His approach is to focus on the business needs and objectives in order to implement a solution that not only provides the required criteria but also enhances the user experience.', 'Active', '2021-03-09', '2021-03-18', 0),
(9, 'Pence Jacob', 'uploads/team/Pence_Jacob-250x250.png', 'https://www.linkedin.com/in/pence-jacob-pmp-8352652/', 'Director, Solutions Delivery', '', 'IT – Supply Chain consultant with 18+ years’ experience in software development with extensive experience implementing the Oracle Retail suite of solutions for merchandising, warehouse management, replenishment, allocations, sales audit, pricing and direct to consumer fulfillment systems.', 'Active', '2021-03-09', '2021-03-26', 0),
(10, 'Vijayalaxmi Pamidi', 'uploads/team/Vijayalakshmi_Pamidi-250x250.png', 'https://www.linkedin.com/in/vijayalakshmi-pamidi-2a871233/', 'Software Engineer-Oracle Retail', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(11, 'Tarannum', 'uploads/team/Tarannum-250x250.png', 'https://www.linkedin.com/in/tarannum-r-29580820/', 'Program Manager', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(12, 'Maheshwari Appuswamy', 'uploads/team/Maheshwari_Appuswamy.png', 'https://www.linkedin.com/in/maheshwari-appuswamy-189b4319/', 'Enterprise Architect', '', '', 'Active', '2021-03-09', '0000-00-00', 0),
(13, 'Devavrat Shah', 'uploads/team/Devavrat_Shah-250x250.png', 'https://www.linkedin.com/in/devavrat-shah-63b59a2/', 'Advisor - Data Science', '', '', 'Inactive', '2021-03-26', '2021-03-26', 0),
(14, 'Vinayak Ramesh', 'uploads/team/Vinayak_Ramesh-250x250.png', 'https://www.linkedin.com/in/vinayak-ramesh-615abb19/', 'Advisor - AI & Machine Learning', '', '', 'Active', '2021-03-26', '2021-03-26', 0),
(15, 'Alexandra Anderson', 'uploads/team/Alexandra_Anderson_250x250.jpg', 'https://www.linkedin.com/in/alexandra-anderson-77a19a1/', 'Advisor - FP&A', '', '', 'Active', '2021-03-26', '0000-00-00', 0),
(16, 'Vivek Raj', 'uploads/team/Vivek_Raj-250x250.png', 'https://www.linkedin.com/in/vivek-raj-2812942/', 'Advisor - Customer Behavior & Insights', '', '', 'Active', '2021-03-26', '0000-00-00', 0),
(17, 'Aby Joy', 'uploads/team/Aby_Joy_250x250.jpg', 'https://www.linkedin.com/in/aby-joy-b513582/', 'Advisor - Supply Chain & ERP', '', '', 'Active', '2021-03-26', '0000-00-00', 0),
(18, 'Akhilesh Srivastava', 'uploads/team/Akhilesh_Srivastava-25x250.png', 'https://www.linkedin.com/in/akhilesh-srivastava/', 'Advisor - Last Mile Delivery', '', '', 'Active', '2021-03-26', '0000-00-00', 0);

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
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `tbl_login_history`
--
ALTER TABLE `tbl_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `tbl_page_layout`
--
ALTER TABLE `tbl_page_layout`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_podcast_slider`
--
ALTER TABLE `tbl_podcast_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_solutions`
--
ALTER TABLE `tbl_solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_stories`
--
ALTER TABLE `tbl_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_publications`
--
ALTER TABLE `tb_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
