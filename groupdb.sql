-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2019 at 08:36 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groupdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) DEFAULT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `url` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `description`, `url`) VALUES
(1, 'IDM', 'a', 'a'),
(2, 'ISD', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `enteries`
--

CREATE TABLE `enteries` (
  `upload_id` int(11) NOT NULL,
  `showID` int(11) NOT NULL,
  `date_uploaded` date NOT NULL,
  `price` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enteries`
--

INSERT INTO `enteries` (`upload_id`, `showID`, `date_uploaded`, `price`) VALUES
(25, 1, '2019-01-29', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `date_of_show` datetime NOT NULL,
  `duration` datetime NOT NULL,
  `title` varchar(28) NOT NULL,
  `descripton` varchar(300) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `date_of_show`, `duration`, `title`, `descripton`, `image`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `uploadId` int(20) NOT NULL,
  `image` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Rating` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`uploadId`, `image`, `title`, `description`, `user_id`, `Rating`) VALUES
(25, '094.jpeg', 'ggggggggggggggg', 'adddd', 6, 5),
(26, '099.jpeg', 'aaaaaaaa', 'aaaaaaaaaaaa', 6, 3),
(29, '091.jpeg', 'sds', 'sds', 6, 2),
(30, '041.jpeg', 'ggggggggggggggg', 'asdkj', 6, 1),
(34, '091.jpeg', 'ddd', 'ddd', 9, 0),
(48, 'a.jpeg', 'a', 'a', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `AccountType` varchar(20) NOT NULL DEFAULT 'Student',
  `username` varchar(28) NOT NULL,
  `profile_pic` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `email`, `AccountType`, `username`, `profile_pic`, `password`, `bio`, `course`) VALUES
(6, 'c', 'Mc Creedd', 'd@c.cddddf', 'Student', 'd', 'profileTemp.jpg', 'd', 'llorum ipsum llorum ipsum llorum ipsum llorum ipsum', 'IDM'),
(9, 'DYLON', 'mccABE', 'd@c.c', 'Student', 'Dylon the Pylon', 'profileTemp.jpg', 'a', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ', 'IDM'),
(12, 'Admin', 'Admin', 'c@c.c', 'Admin', 'Admin', 'profileTemp.jpg', 'Admin', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ', ''),
(13, 'Joe', 'Hayes', 'YO@Yo.com', 'Student', 'JOE Champion', 'profileTemp.jpg', 'joe', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ', 'ISD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `enteries`
--
ALTER TABLE `enteries`
  ADD PRIMARY KEY (`upload_id`,`showID`),
  ADD KEY `showID` (`showID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`uploadId`),
  ADD KEY `fk_userid_uploads` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enteries`
--
ALTER TABLE `enteries`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `uploadId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enteries`
--
ALTER TABLE `enteries`
  ADD CONSTRAINT `enteries_ibfk_1` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`uploadId`),
  ADD CONSTRAINT `enteries_ibfk_2` FOREIGN KEY (`showID`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `fk_userid_uploads` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
