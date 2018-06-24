-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 12:12 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `filetracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `archieve`
--

CREATE TABLE IF NOT EXISTS `archieve` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fid` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `closedate` varchar(200) NOT NULL,
  `closetime` varchar(200) NOT NULL,
  `closenn` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `archieve`
--

INSERT INTO `archieve` (`id`, `fid`, `filename`, `closedate`, `closetime`, `closenn`) VALUES
(6, '7', 'keshri', '09/05/2018', '22:11', 'shubham'),
(7, '8', 'srccode', '10/05/2018', '14:35', 'shubham'),
(8, '5', 'l', '10/05/2018', '14:47', 'shubham'),
(9, '3', 'b', '10/05/2018', '15:06', 'rahul');

-- --------------------------------------------------------

--
-- Table structure for table `clerk`
--

CREATE TABLE IF NOT EXISTS `clerk` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `middlname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clerk`
--

INSERT INTO `clerk` (`id`, `username`, `middlname`, `lastname`, `email`, `mobno`, `password`) VALUES
(1, 'clerk', 'mm', 'll', 'rahul@gmail.com', '9999', 'clerk');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `filestatus` varchar(20) NOT NULL DEFAULT '0',
  `createdate` varchar(200) NOT NULL,
  `createtime` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `filename`, `subject`, `status`, `description`, `document`, `filestatus`, `createdate`, `createtime`) VALUES
(2, 'a', 'jmmmm', 'non-Actionable', 'nmkk ', '', '1', '', ''),
(3, 'b', 'resume', 'Actionable', 'fkfdskjkfdskds ', 'Adhar-card', '1', '2018/05/09', '18:26:40'),
(5, 'l', 'll', 'Actionable', ' kmmkk', 'Adhar-card', '1', '2018/05/09', '18:26:40'),
(6, 'kk', 'mm', 'Actionable', ' mmm', '', '1', '', ''),
(7, 'keshri', 'keshri', 'Actionable', 'mkzcdskdsk', 'Adhar-Card', '1', '2018/05/09', '18:26:40'),
(8, 'srccode', 'mmmmm', 'Actionable', 'lllllllllllllll', 'Pan-card', '1', '2018/05/10', '14:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `filestatus`
--

CREATE TABLE IF NOT EXISTS `filestatus` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fid` varchar(20) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `indate` varchar(200) NOT NULL DEFAULT '0',
  `intime` varchar(200) NOT NULL DEFAULT '0',
  `exitdate` varchar(200) NOT NULL DEFAULT '0',
  `exittime` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `filestatus`
--

INSERT INTO `filestatus` (`id`, `fid`, `uid`, `filename`, `status`, `comment`, `indate`, `intime`, `exitdate`, `exittime`) VALUES
(1, '5', '3', 'l', 'Actionable', 'mckcxmkcxk', '2018/05/09', '21:25:22', '24/04/2018', '14:25'),
(2, '5', '3', 'l', 'Actionable', 'mckcxmkcxk', '2018/05/09', '21:25:22', '0', '0'),
(3, '3', '3', 'kk', 'Actionable', 'nkkkmm', '24/04/2018', '14:25', '10/05/2018', '14:59'),
(8, '7', '3', 'keshri', 'Actionable', 'ooororor', '2018/05/09', '21:02:35', '09/05/2018', '21:03'),
(10, '7', '4', 'keshri', 'Actionable', 'ooororormkk', '2018/05/09', '22:01:39', '09/05/2018', '22:11'),
(11, '8', '3', 'srccode', 'Actionable', 'ooorororvmcmvmcv', '2018/05/10', '14:35:08', '10/05/2018', '14:35'),
(12, '8', '4', 'srccode', 'Actionable', 'ooorororvmcmvmcvmmmmmm', '2018/05/10', '14:35:40', '10/05/2018', '14:35'),
(13, '5', '4', 'l', 'Actionable', 'mkmkmkk', '2018/05/10', '14:47:42', '10/05/2018', '14:47'),
(14, '3', '4', 'b', 'Actionable', 'nkkkmmbcbc', '2018/05/10', '14:59:53', '10/05/2018', '15:03'),
(15, '3', '4', 'b', 'Actionable', 'nkkkmmbcbcmkmkmk', '2018/05/10', '15:05:06', '10/05/2018', '15:05'),
(16, '3', '3', 'b', 'Actionable', 'nkkkmmbcbmcxmcxc', '2018/05/10', '15:05:58', '10/05/2018', '15:06');

-- --------------------------------------------------------

--
-- Table structure for table `filestatus1`
--

CREATE TABLE IF NOT EXISTS `filestatus1` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fid` varchar(20) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `exitdate` varchar(200) NOT NULL,
  `exittime` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `middlname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `middlname`, `lastname`, `email`, `department`, `mobno`, `password`) VALUES
(3, 'rahul', 'sopanv', 'biradaraa', 'rahul.srccode@gmail.com', 'B', '9665234874', '123'),
(4, 'shubham', 'kk', 'mm', 'shub@gmail.com', 'B', '9665234874d', '123');

-- --------------------------------------------------------

--
-- Table structure for table `scaninfo`
--

CREATE TABLE IF NOT EXISTS `scaninfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `filestatus` varchar(200) NOT NULL,
  `cdate` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `scaninfo`
--

INSERT INTO `scaninfo` (`id`, `uid`, `uname`, `filename`, `status`, `filestatus`, `cdate`) VALUES
(1, '1', 'rahul', 'a', 'Actionable', '', '26/02/18 16:12:29'),
(2, '1', 'rahul', 'a', 'Non-Actionable', '', '26/02/18 16:26:00'),
(3, '1', 'rahul', 'b', 'Non-Actionable', '', '26/02/18 17:26:32'),
(4, '1', 'rahul', 'a', 'Actionable', 'complete', '26/02/18 19:01:57'),
(5, '1', 'rahul', 'gauri', 'Actionable', 'pending', '03/03/18 12:30:42');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
