-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2017 at 04:41 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quizcontact`
--

CREATE TABLE `quizcontact` (
  `NAME` varchar(4000) DEFAULT NULL,
  `EMAIL` varchar(4000) DEFAULT NULL,
  `PHONE` varchar(4000) DEFAULT NULL,
  `MESSAGE` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizcontact`
--

INSERT INTO `quizcontact` (`NAME`, `EMAIL`, `PHONE`, `MESSAGE`) VALUES
('Faisal Hossain', 'faisalex35@gmail.com', '01683864835', 'jo');

-- --------------------------------------------------------

--
-- Table structure for table `quizinfo`
--

CREATE TABLE `quizinfo` (
  `SUBJECT` varchar(4000) DEFAULT NULL,
  `QUIZNAME` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizinfo`
--

INSERT INTO `quizinfo` (`SUBJECT`, `QUIZNAME`) VALUES
('CSE 101', 'Quiz 1');

-- --------------------------------------------------------

--
-- Table structure for table `quizq`
--

CREATE TABLE `quizq` (
  `NAME` varchar(4000) DEFAULT NULL,
  `EMAIL` varchar(4000) DEFAULT NULL,
  `PHONE` varchar(4000) DEFAULT NULL,
  `QUESTION` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizques`
--

CREATE TABLE `quizques` (
  `QUESTION` varchar(200) DEFAULT NULL,
  `OPTION1` varchar(200) DEFAULT NULL,
  `OPTION2` varchar(200) DEFAULT NULL,
  `OPTION3` varchar(200) DEFAULT NULL,
  `OPTION4` varchar(200) DEFAULT NULL,
  `ANSWER` varchar(200) DEFAULT NULL,
  `QUIZNAME` varchar(200) DEFAULT NULL,
  `QID` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizques`
--

INSERT INTO `quizques` (`QUESTION`, `OPTION1`, `OPTION2`, `OPTION3`, `OPTION4`, `ANSWER`, `QUIZNAME`, `QID`, `DESCRIPTION`) VALUES
('1 SELECT FROM BELOW', 'A', 'B', 'C', 'D', 'B', 'Quiz 1', '1', NULL),
('10 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '10', NULL),
('2 SELECT FROM BELOW', 'D', 'E', 'F', 'G', 'D', 'Quiz 1', '2', NULL),
('3 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '3', NULL),
('4 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '4', NULL),
('5 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '5', NULL),
('6 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '6', NULL),
('7 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '7', NULL),
('8 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '8', NULL),
('9 SELECT FROM BELOW', '1', '2', '3', '4', '2', 'Quiz 1', '9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizregister`
--

CREATE TABLE `quizregister` (
  `USERNAME` varchar(200) DEFAULT NULL,
  `USERPASS` varchar(200) DEFAULT NULL,
  `CATEGORY` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizregister`
--

INSERT INTO `quizregister` (`USERNAME`, `USERPASS`, `CATEGORY`, `EMAIL`) VALUES
('faisal', '1234', 'Teacher', 'faisalex35@gmail.com'),
('faisal.hossain', '1234', 'Student', 'faisalsaptarshi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quizques`
--
ALTER TABLE `quizques`
  ADD PRIMARY KEY (`QID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
