-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2022 at 11:51 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` varchar(255) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`) VALUES
(1, 'Harry Potter', 'Fantasy', 'he novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.', 'JK Rowling', '5\r\n        ', '9780050', 250, 400, 'harry_potter.jpeg '),
(2, 'Sherlock Holmes', 'Detective and Mystery', 'A brilliant London-based detective, Holmes is famous for his prowess at using logic and astute observation to solve cases.', 'Arthur Conan Doyle', '3\r\n        ', '978019', 278, 250, 'detective_genre.jpg '),
(3, 'Becoming', 'Motivational', 'Becoming is the memoir of former first lady of the United States Michelle Obama, published in 2018. Described by the author as a deeply personal experience, the book talks about her roots and how she found her voice, as well as her time in the White House', 'Michelle Obama', '1\r\n        ', '978152', 150, 350, 'self_care_genre.jpg '),
(4, 'The Da Vinci Code', 'Detective and Mystery', 'The Da Vinci Code follows \"symbologist\" Robert Langdon and cryptologist Sophie Neveu after a murder in the Louvre Museum in Paris causes them to become involved in a battle between the Priory of Sion and Opus Dei.', 'Dan Brown', '1\r\n        ', '9783838', 450, 500, 'da_vinci_code.jpg '),
(5, 'Atomic Habits', 'Motivational', 'Atomic Habits is the definitive guide to breaking bad behaviors and adopting good ones in four steps, showing you how small, incremental, everyday routines compound into massive, positive change over time.', 'James Clear', '2', '97801250', 125, 340, 'atomic_habits.jpg'),
(6, 'To Kill a Mockingbird', 'Classics', 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. ', 'Harper Lee', '1\r\n        ', '9783228', 150, 250, 'mockingbird.jpg '),
(7, 'The Gold Bug', 'Fantasy', '\"The Gold-Bug\" is a short story by American writer Edgar Allan Poe published in 1843. The plot follows William Legrand, who was bitten by a gold-colored bug. ', 'Edgar Allan Poe', '1\r\n        ', '9783228', 180, 300, 'gold_bug.jpg ');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Classics'),
(2, 'Detective and Mystery'),
(3, 'Fantasy'),
(4, 'Motivational'),
(5, 'Mythology'),
(6, 'Short Stories'),
(7, 'Comic'),
(8, ' Regional '),
(9, 'self care'),
(10, ' Comedy ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_name` varchar(50) NOT NULL,
  `con_email` varchar(50) NOT NULL,
  `con_query` varchar(50) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_name`, `con_email`, `con_query`) VALUES
(1, 'ritika', 'ritika.joshi21@vit.edu', 'Hello'),
(2, 'chetna', 'chetna.khandagale21@vit.edu', 'Hello is the book The da vinci code available'),
(3, 'deepak', 'deepak.kamble21@vit.edu', 'For how long will i have access to the books?'),
(4, 'mayuri', 'mayuri.kulkarni21@vit.edu', 'Can i download the books on my system?'),
(5, 'Kushagra', 'kushagra.mishra21@vit.edu', 'Hello, Are all editions of Harry Potter available'),
(6, 'Sample', 'sample.1@gmail.com', 'Hello'),
(7, 'sampleperson', 'sample2.2@gmail.com', 'hello admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone_number` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `full_name`, `phone_number`, `address`, `mode`) VALUES
(1, '2022-02-27 23:05:57', 'ritika_joshi', 91587105, 'Gujarat', 'upi'),
(2, '2022-03-01 21:48:14', 'sample', 1234567890, 'india', 'upi'),
(3, '2022-03-01 21:48:45', 'sample 2', 987654321, 'Maharashtra', 'upi'),
(10, '2022-03-01 22:17:48', 'Chetna Khandagale', 987654321, 'Maharashtra', 'upi'),
(9, '2022-03-01 22:13:31', 'Ritika Joshi', 1234567890, 'Maharashtra', 'upi'),
(8, '2022-03-01 21:52:44', 'sample 5', 1234567890, 'Maharashtra', 'upi'),
(11, '2022-03-03 12:08:06', 'Ritika Joshi', 1234567890, 'Maharashtra', 'upi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'ritika_joshi', 'ritika.joshi21@vit.edu', 'pass'),
(2, 'deepak_kamble', 'deepak.kamble21@vit.edu', 'deepak'),
(3, 'chetna_khandagale', 'chetna.khandagale21@vit.edu', 'chetna'),
(4, 'mayuri_kulkarni', 'mayuri.kulkarni21@vit.edu', 'mayuri'),
(5, 'kushagra_mishra', 'kushagra.mishra21@vit.edu', 'kushagra'),
(6, 'abc_xyz', 'sample@gmail.com', 'password'),
(7, 'xyz_pqr', 'sample1@gmail.com', 'pass'),
(8, 'dummy', 'sample@gmail.com', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
CREATE TABLE IF NOT EXISTS `user_orders` (
  `order_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `book_name`, `price`, `quantity`, `user_name`) VALUES
(9, 'Sherlock Holmes', 250, 1, 'ritika_joshi'),
(9, 'Harry Potter', 400, 1, 'ritika_joshi'),
(9, 'Atomic Habits', 340, 1, 'ritika_joshi'),
(10, 'The Da Vinci Code', 500, 1, 'chetna_khandagale'),
(10, 'Atomic Habits', 340, 1, 'chetna_khandagale'),
(10, 'Becoming', 350, 1, 'chetna_khandagale'),
(11, 'Harry Potter', 400, 1, 'ritika_joshi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
