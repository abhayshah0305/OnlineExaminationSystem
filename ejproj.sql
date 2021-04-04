-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2020 at 07:06 AM
-- Server version: 5.5.62
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ejproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int(3) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `email`, `password`) VALUES
(1, 'wilsonrao@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `django`
--

DROP TABLE IF EXISTS `django`;
CREATE TABLE IF NOT EXISTS `django` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `qno` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `a1` varchar(255) NOT NULL,
  `a2` varchar(255) NOT NULL,
  `a3` varchar(255) NOT NULL,
  `a4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django`
--

INSERT INTO `django` (`id`, `qno`, `question`, `a1`, `a2`, `a3`, `a4`, `ans`) VALUES
(001, '1', 'What is Django?', 'Movie', 'Song', 'Python Framework', 'Programming Language', 'Python Framework'),
(002, '2', 'What is MVT?', 'Model View Template', 'Sport', 'Car Brand', 'TV Show', 'Model View Template');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `marks` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`, `marks`) VALUES
(001, 'abhayshah', 'abhay@gmail.com', '1234', 3),
(002, 'akshayshah', 'akshay@gmail.com', '4567', 2),
(003, 'ajay', 'ajay@gmail.com', '12345', 2),
(004, 'aamir', 'aamir@gmail.com', '0000', NULL),
(005, 'ansh', 'ansh@gmail.com', '12345', NULL),
(006, 'jimhalpert', 'jim@gmail.com', '1234', 2),
(007, 'rahul', 'rahul@gmail.com', 'password1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `python`
--

DROP TABLE IF EXISTS `python`;
CREATE TABLE IF NOT EXISTS `python` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `qno` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `a1` varchar(255) DEFAULT NULL,
  `a2` varchar(255) DEFAULT NULL,
  `a3` varchar(255) DEFAULT NULL,
  `a4` varchar(255) DEFAULT NULL,
  `ans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `python`
--

INSERT INTO `python` (`id`, `qno`, `question`, `a1`, `a2`, `a3`, `a4`, `ans`) VALUES
(001, '1', 'What is Python?', 'Programming Language', 'Snake', 'TV Show', 'Compiled Language', 'Programming Language'),
(002, '2', 'Python is the most popular for?', 'AI', 'Game Development', 'App Development', 'Desktop App Development', 'AI'),
(003, '3', 'Variables in Python?', '_var', '3myname', '2var', 'name', 'name'),
(004, '4', 'Which option is not a Python Web Framework?', 'Django', 'Flask', 'Pyramid', 'Laravel', 'Laravel'),
(005, '5', 'Which python library provides the user with dataframes?', 'Pandas', 'Numpy', 'Matplotlib', 'Seaborn', 'Pandas'),
(006, '6', 'Which option is a python framework for creating mobile applications?', 'Kivy', 'Laravel', 'ReactJS', 'VueJS', 'Kivy'),
(007, '7', 'Python is ......?', 'Programming Language', 'Framework', 'Protocol', 'Hardware Componetn', 'Programming Language');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
