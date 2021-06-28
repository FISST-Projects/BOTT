-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2021 at 03:27 PM
-- Server version: 10.2.37-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcstour_ott`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 1,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `subtitle`, `content`, `status`, `position`) VALUES
(1, 'Header', '(Appears on all pages right under the nav bar)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"\"/>\r\n</a>\r\n</div>', 1, 'header'),
(2, 'Footer', '(Appears on all pages right before the footer)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"\"/>\r\n</a>\r\n</div>', 1, 'footer'),
(3, 'Sidebar', '(Appears on all pages right on left bar)', '<div style=\"text-align: center;\">\r\n<a href=\"#\">\r\n<img src=\"\"/>\r\n</a>\r\n</div>', 1, 'sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `st_favicon` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'favicon.png',
  `st_whitelogo` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'whitelogo.png',
  `st_darklogo` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'darklogo.png',
  `st_icon` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icon.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`st_favicon`, `st_whitelogo`, `st_darklogo`, `st_icon`) VALUES
('favicon', 'whitelogo.png', 'darklogo.png', 'icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `code`) VALUES
(57, 'tbsc'),
(56, 'zxy'),
(55, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `edge_node`
--

CREATE TABLE `edge_node` (
  `id` int(10) NOT NULL,
  `edgeName` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edge_node`
--

INSERT INTO `edge_node` (`id`, `edgeName`, `address`) VALUES
(5, 'Apartment1', 'Apartment1'),
(4, 'Apartment2', 'Apartment2'),
(6, 'EF', 'Jodhpur'),
(7, 'GH', 'Bikaner'),
(8, 'IJ', 'Ajmer'),
(9, 'IIITB', 'IIITB');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `episode_id` int(11) NOT NULL,
  `episode_serie` int(11) NOT NULL,
  `episode_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `episode_link` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `episode_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `episode_status` int(11) NOT NULL,
  `episode_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `episode_image` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `episode_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `genre_slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `genre_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_title`, `genre_slug`, `genre_image`) VALUES
(1, 'ACTION', 'action', 'genre_1601811008.png'),
(2, 'Comedy', 'comedy', 'genre_1601819550.jpg'),
(3, 'News', 'news', 'genre_1603387400.png'),
(4, 'Songs', 'songs', 'genre_1603464468.jpg'),
(5, 'Cartoon', 'cartoon', 'genre_1611914775.jpg'),
(6, 'ADVENTURE', 'adventure', 'genre_1611918366.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_with_phone`
--

CREATE TABLE `login_with_phone` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `otp` varchar(10) DEFAULT '',
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_with_phone`
--

INSERT INTO `login_with_phone` (`id`, `phone`, `otp`, `status`) VALUES
(26, '8290096061', '2024', 1),
(25, '8302121438', '4720', 1),
(28, '9845590449', '4822', 1),
(31, '8919815351', '9449', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_package`
--

CREATE TABLE `member_package` (
  `id` int(11) NOT NULL,
  `package_title` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `movies` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_package`
--

INSERT INTO `member_package` (`id`, `package_title`, `price`, `series`, `movies`) VALUES
(7, 'Sunday Pack', 10, 3, 6),
(4, 'Package Four', 85, 10, 5),
(5, 'Package Five', 60, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `menu_header` tinyint(1) NOT NULL DEFAULT 0,
  `menu_footer` tinyint(1) NOT NULL DEFAULT 0,
  `menu_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `menu_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_header`, `menu_footer`, `menu_sidebar`, `menu_status`) VALUES
(9, 'Header', 1, 1, 0, 1),
(11, 'Sidebar', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `movie_description` text COLLATE utf8_unicode_ci NOT NULL,
  `movie_year` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `movie_duration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `movie_trailer` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `movie_link` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `movie_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `movie_stars` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `movie_status` int(11) NOT NULL,
  `movie_featured` int(11) NOT NULL,
  `movie_date` datetime NOT NULL DEFAULT current_timestamp(),
  `movie_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `other_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `edge_node_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `movie_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_description`, `movie_year`, `movie_duration`, `movie_trailer`, `movie_link`, `movie_slug`, `movie_stars`, `movie_status`, `movie_featured`, `movie_date`, `movie_image`, `other_time`, `valid_time`, `edge_node_id`, `movie_price`) VALUES
(1, 'The Blackout', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'the-blackout', 'TEST,klkl', 1, 0, '2020-10-04 17:01:20', 'movie_1601811081.png', '', '', '0', 0),
(2, 'Baghi 3', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'baghi-3', 'test', 1, 0, '2020-10-10 07:17:36', 'movie_1602294457.jpg', '', 'allways', ',5,7', 20),
(3, 'Chhichhore', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'chhichhore', 'TEST', 1, 0, '2020-10-10 07:23:58', 'movie_1602294839.jpg', '', '', '0', 0),
(4, 'Housefull 4', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'housefull-4', 'TEST', 1, 0, '2020-10-10 07:24:55', 'movie_1602294896.jpg', '40', '', ',5,7', 35),
(5, 'Bala', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'bala', 'TEST', 1, 0, '2020-10-10 07:28:15', 'movie_1602295096.jpg', '', 'allways', ',5,7,8', 60),
(11, 'The Maid', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2020', '2h 30m', 'JIM6Fiorzh8', 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'the-maid', 'test', 1, 1, '2020-10-19 18:13:27', 'movie_1603111408.jpg', '', 'allways', ',5,7', 50),
(12, 'test', 'df', '2021', '2', 'hj', 'hj', 'test', 'jf,hjfg,fhj', 0, 1, '2020-10-20 10:42:49', 'movie_1603170770.png', '', 'allways', '5,4,6', 0),
(13, 'Todays News', 'Aaj Tak News', '2019', '5', 'https://www.youtube.com/watch?v=SmQqAnKG6zs', 'https://www.youtube.com/watch?v=SmQqAnKG6zs', 'todays-news', 'none', 1, 1, '2020-10-22 22:55:54', 'movie_1603387555.png', '', 'allways', '', 0),
(14, 'Ek Villain', 'Full Video: Galliyan Song | Ek Villain | Ankit Tiwari | Sidharth Malhotra | Shraddha Kapoor', '2021', '1', 'https://www.youtube.com/watch?v=FxAG_11PzCk', 'https://www.youtube.com/watch?v=FxAG_11PzCk', 'ek-villain', 'Ankit Tiwari | Sidharth Malhotra | Shraddha Kapoor', 1, 1, '2020-10-23 20:21:15', 'movie_1603464676.jpg', '', 'allways', ',5', 48),
(15, 'JUMANJI: THE NEXT LEVEL', 'MOVIE', '2019', '2h15m', 'https://www.youtube.com/watch?v=rBxcF-r9Ibs', 'https://www.youtube.com/watch?v=rBxcF-r9Ibs', 'jumanji-the-next-level', '7.5/10', 1, 1, '2021-01-29 16:57:12', 'movie_1611919725.jpg', '', 'allways', ',9', 49);

-- --------------------------------------------------------

--
-- Table structure for table `movies_favorites`
--

CREATE TABLE `movies_favorites` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`id`, `genre_id`, `movie_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(6, 1, 8),
(7, 1, 9),
(11, 1, 12),
(17, 3, 13),
(18, 3, 0),
(19, 2, 0),
(23, 4, 14),
(25, 2, 5),
(26, 2, 4),
(27, 1, 2),
(30, 6, 15),
(31, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `movies_reviews`
--

CREATE TABLE `movies_reviews` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `published` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies_reviews`
--

INSERT INTO `movies_reviews` (`id`, `item`, `user`, `content`, `rating`, `published`) VALUES
(1, 11, 'rahul123@gmail.com', 'Good!', 6, '2020-10-22 21:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `movies_view`
--

CREATE TABLE `movies_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `movie_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies_view`
--

INSERT INTO `movies_view` (`id`, `user_id`, `movie_id`, `movie_number`) VALUES
(9, 14, 5, 2),
(10, 14, 1, 2),
(11, 33, 1, 5),
(12, 33, 2, 5),
(13, 33, 11, 5),
(14, 33, 3, 5),
(15, 33, 4, 5),
(16, 35, 1, 2),
(17, 35, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `navigation_id` int(11) NOT NULL,
  `navigation_order` int(11) NOT NULL,
  `navigation_url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `navigation_label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `navigation_target` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `navigation_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `navigation_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`navigation_id`, `navigation_order`, `navigation_url`, `navigation_label`, `navigation_target`, `navigation_type`, `navigation_menu`) VALUES
(43, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 9),
(44, 2, '4/asd', 'Privacy Policy', '_self', 'page', 9),
(45, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 9),
(48, 2, '4/asd', 'Privacy Policy', '_self', 'page', 11),
(49, 1, '2/faq-s', 'FAQ\'s', '_self', 'page', 11),
(50, 3, '3/terms-conditions', 'Terms & Conditions', '_self', 'page', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `page_status` int(11) NOT NULL,
  `page_description` text COLLATE utf8_unicode_ci NOT NULL,
  `page_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `page_date` datetime NOT NULL DEFAULT current_timestamp(),
  `page_layout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_status`, `page_description`, `page_slug`, `page_date`, `page_layout`) VALUES
(2, 'FAQ\'s', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'faq-s', '2020-05-21 15:34:38', 1),
(3, 'Terms & Conditions', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'terms-conditions', '2020-05-21 15:36:36', 0),
(4, 'Privacy Policy', 1, '<div>\r\n<h4>What is Lorem Ipsum?</h4>\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p></p>\r\n</div>\r\n<div>\r\n<h4>Why do we use it?</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p></p>\r\n<h4>Where does it come from?</h4>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p></p>\r\n<h4>Where can I get some?</h4>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', 'asd', '2020-05-21 15:36:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `series` varchar(255) NOT NULL,
  `movies` varchar(255) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `serie_id` int(11) NOT NULL,
  `serie_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `serie_description` text COLLATE utf8_unicode_ci NOT NULL,
  `serie_year` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `serie_status` int(11) NOT NULL,
  `serie_featured` int(11) NOT NULL,
  `serie_trailer` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `serie_stars` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `serie_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `serie_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `serie_date` datetime NOT NULL DEFAULT current_timestamp(),
  `other_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_time` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `edge_node_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `serie_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`serie_id`, `serie_title`, `serie_description`, `serie_year`, `serie_status`, `serie_featured`, `serie_trailer`, `serie_stars`, `serie_image`, `serie_slug`, `serie_date`, `other_time`, `valid_time`, `edge_node_id`, `serie_price`) VALUES
(1, 'Inside Edge', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2020', 1, 1, 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 've', 'serie_1603508724.jpg', 'the-maid-series', '2020-10-24 07:59:38', '0', '0', '0', 0),
(2, 'Bang Baaja Baaraat', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2020', 1, 1, 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', '22', 'serie_1603508693.jpg', 'ek-villain-series', '2020-10-24 08:31:37', '0', '0', '0', 0),
(3, 'Apharan', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2019', 1, 1, 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'stt', 'serie_1603559408.jpg', 'apharan', '2020-10-24 22:40:07', '', 'allways', ',7,8', 30),
(4, 'Barish', 'No meteorites hit Earth, no terrorists put the world in danger, no atomic war was started, but something did go wrong. Contact between most towns on Earth has been severed. A small ring-like area in Eastern Europe still has electricity, and maybe even life is being reported from the Space. What military forces find outside the Ring is shocking. There are dead corpses everywhere: in stores, in cars, on roads, in hospitals and railway stations. Who or what is destroying all life on Earth? How long will the last outpost of mankind survive?', '2020', 1, 1, 'https://previews.customer.envatousercontent.com/h264-video-previews/2fd4589d-50e7-4688-9f98-e5abdb384f7e/17113655.mp4', 'TESt', 'serie_1603561112.jpg', 'barish', '2020-10-24 23:08:31', '', 'allways', ',5,7,8', 24);

-- --------------------------------------------------------

--
-- Table structure for table `series_favorites`
--

CREATE TABLE `series_favorites` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `series_genres`
--

CREATE TABLE `series_genres` (
  `genre_id` int(11) NOT NULL,
  `serie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `series_genres`
--

INSERT INTO `series_genres` (`genre_id`, `serie_id`) VALUES
(2, 2),
(2, 1),
(2, 0),
(3, 0),
(3, 0),
(3, 0),
(2, 4),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `series_reviews`
--

CREATE TABLE `series_reviews` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `published` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `series_view`
--

CREATE TABLE `series_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `series_number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `st_sitename` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_facebook` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_twitter` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_instagram` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_youtube` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `st_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`st_sitename`, `st_facebook`, `st_twitter`, `st_instagram`, `st_youtube`, `st_keywords`, `st_description`) VALUES
('OTT', 'https://facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '', 'OTT is the most popular website to watch movies and series online for free without the need for registration, enjoy the best content in HD.');

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `st_smtphost` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_smtpemail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_smtppassword` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_smtpport` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `st_smtpencrypt` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`st_smtphost`, `st_smtpemail`, `st_smtppassword`, `st_smtpport`, `st_smtpencrypt`) VALUES
('-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `strings`
--

CREATE TABLE `strings` (
  `st_aboutus` text COLLATE utf8_unicode_ci NOT NULL,
  `st_privacypolicy` text COLLATE utf8_unicode_ci NOT NULL,
  `st_termsofservice` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strings`
--

INSERT INTO `strings` (`st_aboutus`, `st_privacypolicy`, `st_termsofservice`) VALUES
('<p>About Us</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Privacy Policy</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>Terms of Service</p><p><strong>What is Lorem Ipsum?</strong></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><strong>Why do we use it?</strong></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sub_users`
--

CREATE TABLE `sub_users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `parent_uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_users`
--

INSERT INTO `sub_users` (`id`, `username`, `parent_uid`) VALUES
(16, 'testfive', 9),
(7, 'testtwo', 9),
(13, 'testone', 9),
(12, 'userone', 9),
(17, 'testfive', 9),
(15, 'User 2', 16),
(10, 'test', 12),
(14, 'User 1', 16),
(18, 'rahul', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` tinyint(1) DEFAULT 2,
  `user_status` tinyint(1) DEFAULT 1,
  `package` int(11) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otp` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `edgeNode` int(10) DEFAULT NULL,
  `user_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_status`, `package`, `phone`, `otp`, `status`, `edgeNode`, `user_updated`, `user_created`) VALUES
(1, 'Admin', 'admin@admin.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 1, 0, NULL, NULL, NULL, 0, '2020-06-16 14:01:03', '2020-04-14 20:33:33'),
(8, 'Deepak', 'deepak.jain850@gmail.com', '66c6cecb69522c0ee9b788d64ac0bcc2fc76df64b7921d17cbf2d726753b086662ebe283687c512f26e19568265090e5411225ae47a83500ec47294c5f80e592', 2, 1, 0, NULL, NULL, NULL, 0, '2020-10-01 18:55:43', '2020-10-01 18:55:43'),
(9, 'Deepak', 'deepak@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 0, NULL, NULL, NULL, 0, '2020-10-01 19:19:34', '2020-10-01 19:19:34'),
(10, 'test', 'testmoflix@yopmail.com', '12b03226a6d8be9c6e8cd5e55dc6c7920caaa39df14aab92d5e3ea9340d1c8a4d3d0b8e4314f1f6ef131ba4bf1ceb9186ab87c801af0d5c95b1befb8cedae2b9', 2, 1, 5, NULL, NULL, NULL, 0, '2020-10-10 06:34:35', '2020-10-04 07:28:54'),
(11, 'deepak.jain850', 'deepak.jain850@gmaiil.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 4, NULL, NULL, NULL, 0, '2020-10-10 06:35:35', '2020-10-04 09:30:59'),
(12, 'ott', 'ott@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 0, NULL, NULL, NULL, 0, '2020-10-07 09:18:26', '2020-10-07 09:18:26'),
(14, 'testuser', 'testuser@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 5, NULL, NULL, NULL, 7, '2020-10-22 22:29:29', '2020-10-10 06:57:09'),
(15, 'sfvg', 'sfg@gmail.com', '4718529904dddb9ee236aa3fe5ba18d40402e40a51f4b3cc2e16162c215b6a1f8853a62d66eb7c1118c14e0ed038802f0c46baece43f4dc149452a3d633b61ca', 2, 1, 5, NULL, NULL, NULL, 3, '2020-10-10 11:22:09', '2020-10-10 11:11:55'),
(16, 'Rahul', 'rahul123@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 0, NULL, NULL, NULL, 0, '2020-10-22 21:29:47', '2020-10-22 21:29:47'),
(30, '8302121438', '7319@mailinator.com', '', 2, 1, 0, '8302121438', 7319, 1, 0, '2021-01-04 21:32:20', '2021-01-04 21:32:02'),
(32, '8290096061', '3236@mailinator.com', '', 2, 1, 0, '8290096061', 3236, 1, 0, '2021-01-04 21:51:22', '2021-01-04 21:50:52'),
(33, 'Deepak', 'jain@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 4, NULL, NULL, NULL, 5, '2021-01-11 19:34:03', '2021-01-11 18:45:31'),
(34, 'Rahul', 'sapparapu.rahul@hotmail.com', '12b03226a6d8be9c6e8cd5e55dc6c7920caaa39df14aab92d5e3ea9340d1c8a4d3d0b8e4314f1f6ef131ba4bf1ceb9186ab87c801af0d5c95b1befb8cedae2b9', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-01-11 19:03:51', '2021-01-11 19:03:51'),
(35, 'new user', 'user@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 1, 4, NULL, NULL, NULL, 4, '2021-01-11 19:09:11', '2021-01-11 19:06:46'),
(36, '9845590449', '9890@mailinator.com', '', 2, 1, 0, '9845590449', 9890, 1, 0, '2021-01-29 15:28:37', '2021-01-29 15:28:15'),
(37, 'rahultest', 'rahultest@gmail.com', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 2, 1, 7, NULL, NULL, NULL, 9, '2021-01-29 15:44:00', '2021-01-29 15:41:41'),
(38, 'dfsuunrw', 'sample@email.tst', '0c43316359274f6cd2ced549336f12f3a8fdc5f3e8a499fd722d1e5d1fff4b8618319747b0b92d2e82787781d18d6ceb20b1bc1a3924bdd2c907b46b7adb8d0c', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 05:54:01', '2021-04-12 05:53:59'),
(39, 'efkxjxib', 'f3lx51kz', '74cc208e4665a92719f340ade132d18670e7238ea50d19fbc9c5dac4b53e96d02d74462656a8670ddb5cdcb0c1100688b5540aaa6cd929f0d9e0c8e7fd36831c', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:29', '2021-04-12 06:05:29'),
(40, 'aitqtftf', 'sample@email.tst&n965603=v989231', '1748d5de4cb1528f0857bcae1105879b06cd231302a408e85e048dfe27172802eba914d55732ca113bf90337180ec33b70401ced5b27e8ab8d6f3c37768651a8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:29', '2021-04-12 06:05:29'),
(41, 'nhsofsrj', '\r\n somecustominjectedheader:injected_by_wvs', '6d93a6d569b75bd6e570dbaf91c5ad0999cf2a1c394bbc17ef0f9abefe2235d386051ce78e10f610acfc0a8530dbd1873b16c710d744f99b71a2f5210e043371', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:31', '2021-04-12 06:05:31'),
(42, 'xjgplbqk', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name', '2ed82f1252758b97ac7dc9b9255c0803de16a23bdfc432f7259db4f51fa22008d9443af3d4c7d84e6a076a666f9e5b5b961b538662e7d735c7b88c9429e3af77', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:36', '2021-04-12 06:05:36'),
(43, 'xjgplbqk', '1some_inexistent_file_with_long_name', '2ed82f1252758b97ac7dc9b9255c0803de16a23bdfc432f7259db4f51fa22008d9443af3d4c7d84e6a076a666f9e5b5b961b538662e7d735c7b88c9429e3af77', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:36', '2021-04-12 06:05:36'),
(44, 'sndaxjxu', ')', '004264b61cdda065deeea3da68c88a001a94087fa1f87d265f7ed12510462d6fdc3bed974a896be9a589fa7bd46adbfd685ec246242b714ab38b337577ddf096', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:36', '2021-04-12 06:05:36'),
(45, 'xjgplbqk', 'http://testasp.vulnweb.com/t/fit.txt?', '2ed82f1252758b97ac7dc9b9255c0803de16a23bdfc432f7259db4f51fa22008d9443af3d4c7d84e6a076a666f9e5b5b961b538662e7d735c7b88c9429e3af77', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:37', '2021-04-12 06:05:37'),
(46, 'sndaxjxu', '!(()&&!|*|*|', '004264b61cdda065deeea3da68c88a001a94087fa1f87d265f7ed12510462d6fdc3bed974a896be9a589fa7bd46adbfd685ec246242b714ab38b337577ddf096', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:37', '2021-04-12 06:05:37'),
(47, 'sndaxjxu', '^(#$!@#$)(()))******', '004264b61cdda065deeea3da68c88a001a94087fa1f87d265f7ed12510462d6fdc3bed974a896be9a589fa7bd46adbfd685ec246242b714ab38b337577ddf096', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:38', '2021-04-12 06:05:38'),
(48, 'gfwptgxx', 'print(md5(acunetix_wvs_security_test));die();/*', '32e774c400650f27f0d70e92892f44231b0a57caf5029d6a644c343fa5faefa37ef0a9b2cc9c37ec249fbf8051c6291872c8fecbaeba9ea16a0b42db02faeb56', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:40', '2021-04-12 06:05:40'),
(49, 'gfwptgxx', '${@print(md5(acunetix_wvs_security_test))}', '32e774c400650f27f0d70e92892f44231b0a57caf5029d6a644c343fa5faefa37ef0a9b2cc9c37ec249fbf8051c6291872c8fecbaeba9ea16a0b42db02faeb56', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:41', '2021-04-12 06:05:41'),
(50, 'gfwptgxx', '${@print(md5(acunetix_wvs_security_test))}\\', '32e774c400650f27f0d70e92892f44231b0a57caf5029d6a644c343fa5faefa37ef0a9b2cc9c37ec249fbf8051c6291872c8fecbaeba9ea16a0b42db02faeb56', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:41', '2021-04-12 06:05:41'),
(51, 'cqybvxkx', '&cat /etc/passwd', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:43', '2021-04-12 06:05:43'),
(52, 'bdnbditx', 'acunetix_wvs_invalid_filename', '70ef56d0105a5488b87ec791794d3298db926d405b93ea16027c0b50a7c0efa866b0bab702bc0d6bbb58c318d74719bf88c05a1d37766878eed5e3c49739ec28', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:44', '2021-04-12 06:05:44'),
(53, 'cqybvxkx', '&cat /etc/passwd&', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:44', '2021-04-12 06:05:44'),
(54, 'bdnbditx', 'signup', '70ef56d0105a5488b87ec791794d3298db926d405b93ea16027c0b50a7c0efa866b0bab702bc0d6bbb58c318d74719bf88c05a1d37766878eed5e3c49739ec28', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:44', '2021-04-12 06:05:44'),
(55, 'cqybvxkx', '\ncat /etc/passwd\n', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:44', '2021-04-12 06:05:44'),
(56, 'cqybvxkx', '`cat /etc/passwd`', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:45', '2021-04-12 06:05:45'),
(57, 'bdnbditx', 'signup/.', '70ef56d0105a5488b87ec791794d3298db926d405b93ea16027c0b50a7c0efa866b0bab702bc0d6bbb58c318d74719bf88c05a1d37766878eed5e3c49739ec28', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:45', '2021-04-12 06:05:45'),
(58, 'cqybvxkx', '|cat /etc/passwd#', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:45', '2021-04-12 06:05:45'),
(59, 'dtyfndvs', '268435455', '4f10d9f4c36d6580e5b88c98c7b0d0ae71f3491cad0e87e70e47bdf7298db0ef8eb148f968fa9498abe1f61d0f778e5a1cf4bde90467d56948d2e6b21fa706bb', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:45', '2021-04-12 06:05:45'),
(60, 'cqybvxkx', ';cat /etc/passwd;', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:46', '2021-04-12 06:05:46'),
(61, 'cqybvxkx', '||cat /etc/passwd', '9093ecf08e7e4c7ad5f7153a2734a272ad0d6a28829dbec89db9c20e53df0cad376e75f45f103f2d18defd2e263252b88dee7f5dc223a9c7293a4d1b81f290da', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:46', '2021-04-12 06:05:46'),
(62, 'dtyfndvs', '1e309', '4f10d9f4c36d6580e5b88c98c7b0d0ae71f3491cad0e87e70e47bdf7298db0ef8eb148f968fa9498abe1f61d0f778e5a1cf4bde90467d56948d2e6b21fa706bb', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:48', '2021-04-12 06:05:48'),
(63, 'dtyfndvs', '&#39;&#34;\\&#39;\\&#34;);|]*{\r\n', '4f10d9f4c36d6580e5b88c98c7b0d0ae71f3491cad0e87e70e47bdf7298db0ef8eb148f968fa9498abe1f61d0f778e5a1cf4bde90467d56948d2e6b21fa706bb', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:48', '2021-04-12 06:05:48'),
(64, 'oxlvhmey', '1&#39;&#34;', 'd566435591c8c1554f51624f5035b2dc04a87222d599d6f3578f9ac04a8baede9387c24e3360b54cb1341419b5c55c781875ddcc8099db1e33fa7f127685bbdf', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:51', '2021-04-12 06:05:51'),
(65, 'oxlvhmey', '@@lrtng', 'd566435591c8c1554f51624f5035b2dc04a87222d599d6f3578f9ac04a8baede9387c24e3360b54cb1341419b5c55c781875ddcc8099db1e33fa7f127685bbdf', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:51', '2021-04-12 06:05:51'),
(66, 'oxlvhmey', 'jyi=', 'd566435591c8c1554f51624f5035b2dc04a87222d599d6f3578f9ac04a8baede9387c24e3360b54cb1341419b5c55c781875ddcc8099db1e33fa7f127685bbdf', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:52', '2021-04-12 06:05:52'),
(67, 'dgsmbjrp', ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', '31bcd1e1c8fd51e50bd2bbca002b34a65b8fd31de39702058d49a973c16ebbbdc028f785f71e1676cb2a5489f9e9b2e619317a79f57d268d585b3e0cd94352fb', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:53', '2021-04-12 06:05:53'),
(68, 'lvhxkxwo', 'sumemgcv', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:53', '2021-04-12 06:05:53'),
(69, 'ojcpeqam', '../../../../../../../../../../etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(70, 'qetysqpt', '//www.acunetix.tst', '9fc9ce1f249641bd6a828312a62a7361c0e81dad687f1b30b41d8e4094e1b4e0da42b51312b13c8972dfd304ee813f7e82d87578c68889f7049bb78c75098a52', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(71, 'ojcpeqam', '..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2fetc%2fpasswd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(72, 'oxlvhmey', '@@upjm5', 'd566435591c8c1554f51624f5035b2dc04a87222d599d6f3578f9ac04a8baede9387c24e3360b54cb1341419b5c55c781875ddcc8099db1e33fa7f127685bbdf', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(73, 'lvhxkxwo', 'sample@email.tst&#39; and &#39;3&#39;=&#39;3', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(74, 'ojcpeqam', '../../../../../../../../../../etc/passwd.png', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:54', '2021-04-12 06:05:54'),
(75, 'lvhxkxwo', 'sample@email.tst&#39; and &#39;3&#39;=&#39;3&#39; -- ', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:55', '2021-04-12 06:05:55'),
(76, 'ojcpeqam', 'li4vli4vli4vli4vli4vli4vli4vli4vli4vli4vzxrjl3bhc3n3zaaucg5n', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:55', '2021-04-12 06:05:55'),
(77, 'lvhxkxwo', 'sample@email.tst&#34; and &#34;3&#34;=&#34;3', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:55', '2021-04-12 06:05:55'),
(78, 'ojcpeqam', '..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2fetc%2fpasswd%00.png', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:55', '2021-04-12 06:05:55'),
(79, 'lvhxkxwo', '-1&#39; or &#39;3&#39;=&#39;3', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(80, 'ojcpeqam', '/../..//../..//../..//../..//../..//etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(81, 'lvhxkxwo', '-1&#39; or &#39;3&#39;=&#39;0', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(82, 'ojcpeqam', '.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./.\\\\./etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(83, 'lvhxkxwo', '-1&#34; or &#34;3&#34;=&#34;3', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(84, 'ojcpeqam', '/etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(85, 'sctcgefl', '&#39;&#34;', 'e5720b286acfe8e14c4496bf1d39677416cfa7c09f62b5b8b66c3b7973520b06f6c072f70b4e44757ea8153b575bb98dc506ef26494ae8b973eea36f1f1b0fed', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:56', '2021-04-12 06:05:56'),
(86, 'lvhxkxwo', '-1&#34; or &#34;3&#34;=&#34;0', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:57', '2021-04-12 06:05:57'),
(87, 'ojcpeqam', '../..//../..//../..//../..//../..//../..//../..//../..//etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:57', '2021-04-12 06:05:57'),
(88, 'oxlvhmey', '@@dlsui', 'd566435591c8c1554f51624f5035b2dc04a87222d599d6f3578f9ac04a8baede9387c24e3360b54cb1341419b5c55c781875ddcc8099db1e33fa7f127685bbdf', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:57', '2021-04-12 06:05:57'),
(89, 'lvhxkxwo', 'sample@email.tst&#39; and sleep(4)=&#39;', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:57', '2021-04-12 06:05:57'),
(90, 'ojcpeqam', '../.../.././../.../.././../.../.././../.../.././../.../.././../.../.././etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:57', '2021-04-12 06:05:57'),
(91, 'lvhxkxwo', 'sample@email.tst&#39; and (sleep(4)+1) limit 1 -- ', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:58', '2021-04-12 06:05:58'),
(92, 'lvhxkxwo', 'sample@email.tst&#34; and sleep(4)=&#34;', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:58', '2021-04-12 06:05:58'),
(93, 'lvhxkxwo', 'sample@email.tst&#39; or (sleep(4)+1) limit 1 -- ', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:58', '2021-04-12 06:05:58'),
(94, 'ojcpeqam', 'file:///etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:58', '2021-04-12 06:05:58'),
(95, 'lvhxkxwo', 'sample@email.tst&#34; or (sleep(4)+1) limit 1 -- ', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:59', '2021-04-12 06:05:59'),
(96, 'ojcpeqam', '/\\../\\../\\../\\../\\../\\../\\../etc/passwd', '79ec699475bf2a3b1730ee098242aab2bf95a6dff4158f568671541bb29bbbbc9b53c874f7227f354d36a42c790664147b0aefbda291d779bb5d555e1b1d27ff', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:59', '2021-04-12 06:05:59'),
(97, 'lvhxkxwo', 'sample@email.tst&#39;=sleep(4)=&#39;', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:59', '2021-04-12 06:05:59'),
(98, 'lvhxkxwo', 'sample@email.tst&#34;=sleep(4)=&#34;', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:59', '2021-04-12 06:05:59'),
(99, 'lvhxkxwo', 'sample@email.tst&#39;; waitfor delay &#39;0:0:4&#39; -- ', 'ebb7a67a4e7f123e3649d53332b3ccfb5ce0ff0f543ed2522de088e2bc952501fc32407c6260d057a8a2ad53e504685577f07af3fbfb2923435709b8c09012c8', 2, 1, NULL, NULL, NULL, NULL, NULL, '2021-04-12 06:05:59', '2021-04-12 06:05:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edge_node`
--
ALTER TABLE `edge_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`episode_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `login_with_phone`
--
ALTER TABLE `login_with_phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_package`
--
ALTER TABLE `member_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies_favorites`
--
ALTER TABLE `movies_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_reviews`
--
ALTER TABLE `movies_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_view`
--
ALTER TABLE `movies_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`navigation_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_slug` (`page_slug`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`serie_id`);

--
-- Indexes for table `series_favorites`
--
ALTER TABLE `series_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_reviews`
--
ALTER TABLE `series_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_view`
--
ALTER TABLE `series_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_users`
--
ALTER TABLE `sub_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `edge_node`
--
ALTER TABLE `edge_node`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_with_phone`
--
ALTER TABLE `login_with_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `member_package`
--
ALTER TABLE `member_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `movies_favorites`
--
ALTER TABLE `movies_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies_genres`
--
ALTER TABLE `movies_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `movies_reviews`
--
ALTER TABLE `movies_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies_view`
--
ALTER TABLE `movies_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `navigation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `serie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `series_favorites`
--
ALTER TABLE `series_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series_reviews`
--
ALTER TABLE `series_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series_view`
--
ALTER TABLE `series_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sub_users`
--
ALTER TABLE `sub_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
