-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2019 at 04:47 PM
-- Server version: 5.6.46-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Brook_animal`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `greeting` varchar(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `img` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `gender`, `username`, `email`, `password`, `greeting`, `date_create`, `img`) VALUES
(1, 'Dwayne Hawkins', 'female', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Dway', '2019-11-01 00:00:00', 'https://zoeroom.com/aau/wnm617/m13/imgs/user1.svg'),
(7, 'Bridget Stewartww', 'female', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Brid', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user2.svg'),
(9, 'Mcneil Md', 'male', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Mcne', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user3.svg'),
(8, 'Puckett Hogan', 'female', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Puck', '2019-11-07 17:14:24', 'uploads/1576525216.6993_sample-user.svg'),
(6, 'Fuller James', 'male', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Full', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user5.svg'),
(5, 'Chen Pate', 'male', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Chen', '2019-11-07 17:14:24', 'uploads/1576552905.283_user6.svg'),
(4, 'Fry Stevens', 'male', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Fry ', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user7.svg'),
(2, 'Moran Sanchez', 'male', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Mora', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user8.svg'),
(3, 'Bette Dorsey', 'female', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Bett', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user9.svg'),
(10, 'Lacey Whitfield', 'female', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Lace', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user10.svg'),
(11, 'Cannon Knowles', 'male', 'user11', 'user11@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Hello, Cann', '2019-11-07 17:14:24', 'https://zoeroom.com/aau/wnm617/m13/imgs/user11.svg'),
(55, 'user16', '', 'user16', '', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-02 19:19:38', 'https://via.placeholder.com/400/829/fff/?text=user16'),
(54, 'user15', '', 'user15', 'user15@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-02 19:17:52', 'https://via.placeholder.com/400/829/fff/?text=user15'),
(53, 'user14', '', 'user14', 'user14@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-02 19:15:10', 'https://via.placeholder.com/400/829/fff/?text=user14'),
(56, 'user17', '', 'user17', 'aa', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-02 19:23:12', 'https://via.placeholder.com/400/829/fff/?text=user17'),
(57, 'ham', '', 'ham', 'ham@gmail.com', '79af0c177db2ee64b7301af6e1d53634', '', '2019-12-03 13:33:45', 'https://via.placeholder.com/400/829/fff/?text=ham'),
(58, 'ham', '', 'hamyo', 'ham@gmail.com', '79af0c177db2ee64b7301af6e1d53634', '', '2019-12-03 13:36:01', 'https://via.placeholder.com/400/829/fff/?text=hamyo'),
(59, 'ssss', '', 'sss', 'sss', '3691308f2a4c2f6983f2880d32e29c84', '', '2019-12-06 12:01:51', 'https://via.placeholder.com/400/829/fff/?text=sss'),
(60, 'zoe meng', '', 'user9', 'zoe', 'd41d8cd98f00b204e9800998ecf8427e', '', '2019-12-06 12:04:14', 'https://via.placeholder.com/400/829/fff/?text=user9'),
(61, 'zoe meng', '', 'user3', 'zoebo1225@hotmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-06 12:04:28', 'https://via.placeholder.com/400/829/fff/?text=user3'),
(62, 'Bo Li', '', 'user30', 'whoamil@hotmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-06 20:14:35', 'https://via.placeholder.com/400/829/fff/?text=user30'),
(73, 'jjiji', '', 'suer', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '2019-12-12 15:26:15', 'https://via.placeholder.com/400/829/fff/?text=suer'),
(64, 'ziyu meng', '', 'user30', 'zoebo1225@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-12 13:21:32', 'https://via.placeholder.com/400/829/fff/?text=user30'),
(81, 'user1012', 'male', 'user101', 'user101@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-16 22:36:16', 'uploads/1576616435.8161_sample2.svg'),
(80, 'didi', '', 'user100', 'didi@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-16 21:21:32', ''),
(83, 'JerryL', 'male', 'JerryL', 'whoamiljerry@gmail.com', 'JerryL', '', '2019-12-17 00:05:25', 'uploads/1576566398.151_121.jpg'),
(84, 'Mark Li', 'female', 'user0', 'user0@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '2019-12-17 14:07:50', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
