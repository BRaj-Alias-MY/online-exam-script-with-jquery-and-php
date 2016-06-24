-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2016 at 05:09 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE `login_users` (
  `uid` int(11) NOT NULL,
  `login_name` varchar(100) NOT NULL,
  `login_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`uid`, `login_name`, `login_date`) VALUES
(1, '1466732349', '2016-06-24'),
(2, '1466732376', '2016-06-24'),
(3, '1466732430', '2016-06-24'),
(4, '1466733442', '2016-06-24'),
(5, '1466735576', '2016-06-24'),
(6, '1466736730', '2016-06-24'),
(7, '1466737119', '2016-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `sno` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`sno`, `q_id`, `answer`) VALUES
(1, 1, 'Server-side scripting language'),
(2, 1, 'Client-side scripting language\r\n'),
(3, 1, 'Database Technology'),
(4, 2, 'Server-side scripting language'),
(5, 2, 'Client-side scripting language'),
(6, 3, 'None of the above'),
(7, 3, 'Database'),
(8, 3, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions_main`
--

CREATE TABLE `tbl_questions_main` (
  `q_id` int(10) NOT NULL,
  `q_title` text NOT NULL,
  `right_ans` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions_main`
--

INSERT INTO `tbl_questions_main` (`q_id`, `q_title`, `right_ans`) VALUES
(1, 'What is PHP?', 'Server-side scripting language'),
(2, 'What is jQuery', 'Client-side scripting language'),
(3, 'What is ASP.NET?', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions_main2`
--

CREATE TABLE `tbl_questions_main2` (
  `sno` int(10) NOT NULL,
  `test_id` int(10) NOT NULL,
  `q_id` int(10) NOT NULL,
  `q_title` text NOT NULL,
  `right_ans` varchar(200) NOT NULL,
  `your_ans` varchar(200) NOT NULL,
  `ans_status` char(2) NOT NULL,
  `test_date` date NOT NULL,
  `login_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions_main2`
--

INSERT INTO `tbl_questions_main2` (`sno`, `test_id`, `q_id`, `q_title`, `right_ans`, `your_ans`, `ans_status`, `test_date`, `login_name`) VALUES
(1, 1466735576, 1, 'What is PHP?', 'Server-side scripting language', 'Server-side scripting language', 'y', '2016-06-24', '1466735576'),
(2, 1466735576, 2, 'What is jQuery', 'Client-side scripting language', 'Client-side scripting language', 'y', '2016-06-24', '1466735576'),
(3, 1466735576, 3, 'What is ASP.NET?', 'Technology', 'Technology', 'y', '2016-06-24', '1466735576'),
(4, 1466736730, 1, 'What is PHP?', 'Server-side scripting language', 'n', 'n', '2016-06-24', '1466736730'),
(5, 1466736730, 2, 'What is jQuery', 'Client-side scripting language', 'n', 'n', '2016-06-24', '1466736730'),
(6, 1466736730, 3, 'What is ASP.NET?', 'Technology', 'n', 'n', '2016-06-24', '1466736730'),
(7, 1466737119, 1, 'What is PHP?', 'Server-side scripting language', 'Server-side scripting language', 'y', '2016-06-24', '1466737119'),
(8, 1466737119, 2, 'What is jQuery', 'Client-side scripting language', 'Client-side scripting language', 'y', '2016-06-24', '1466737119'),
(9, 1466737119, 3, 'What is ASP.NET?', 'Technology', 'Technology', 'y', '2016-06-24', '1466737119');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tbl_questions_main`
--
ALTER TABLE `tbl_questions_main`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `tbl_questions_main2`
--
ALTER TABLE `tbl_questions_main2`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_questions_main`
--
ALTER TABLE `tbl_questions_main`
  MODIFY `q_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_questions_main2`
--
ALTER TABLE `tbl_questions_main2`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
