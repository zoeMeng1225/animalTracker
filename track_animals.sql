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
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(12) NOT NULL,
  `uid` int(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `type` varchar(32) NOT NULL,
  `foodImg` varchar(128) NOT NULL,
  `favorite_food` varchar(32) NOT NULL,
  `img` varchar(128) NOT NULL,
  `backgroundImg` varchar(128) NOT NULL,
  `friendly` decimal(10,1) NOT NULL,
  `description` text NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `uid`, `name`, `age`, `gender`, `type`, `foodImg`, `favorite_food`, `img`, `backgroundImg`, `friendly`, `description`, `date_create`) VALUES
(1, 1, 'Buddy', 0, 'female', 'dog', 'https://zoeroom.com/aau/wnm617/m13/imgs/peanut-butter.svg', 'Peanut butter', 'https://zoeroom.com/aau/wnm617/m4/imgs/dog1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-dog1.png', '3.2', 'Dog-Buddy', '2019-10-29 00:00:00'),
(23, 5, 'Yurture', 6, 'female', 'dog', 'https://zoeroom.com/aau/wnm617/m13/imgs/cheese.svg', 'Cheese', 'https://zoeroom.com/aau/wnm617/m14/imgs/dog2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-dog2.png', '2.5', 'Ad non dolor incididunt mollit irure elit ea deserunt aliquip. Sint enim amet fugiat tempor elit ut sint cupidatat cupidatat ad dolore.', '2019-11-07 16:55:31'),
(21, 4, 'Stelaecor', 8, 'female', 'cow', 'https://zoeroom.com/aau/wnm617/m13/imgs/hay.svg', 'Hay', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-cow2.png', '4.1', 'Laboris adipisicing aliqua nisi labore duis. Cupidatat reprehenderit velit voluptate Lorem qui et qui Lorem.', '2019-11-07 16:55:31'),
(22, 7, 'Quailcom', 4, 'male', 'donkey', 'https://zoeroom.com/aau/wnm617/m13/imgs/hay.svg', 'Hay', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-donkey2.png', '4.0', 'Sunt excepteur laborum incididunt voluptate enim culpa labore do aliquip duis magna sunt. Irure dolor incididunt in magna dolore sit veniam.', '2019-11-07 16:55:31'),
(20, 4, 'Tsunamia', 6, 'male', 'donkey', 'https://zoeroom.com/aau/wnm617/m13/imgs/turnips.svg', 'Turnips', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-donkey1.png', '3.8', 'Esse cillum proident quis laboris nostrud deserunt mollit aute. Ex enim nostrud nulla laborum esse esse ad exercitation cupidatat nulla in veniam anim labore.', '2019-11-07 16:55:31'),
(18, 11, 'Sonique', 9, 'female', 'horse', 'https://zoeroom.com/aau/wnm617/m13/imgs/cantaloupe.svg', 'Cantaloupe', 'https://zoeroom.com/aau/wnm617/m13/imgs/horse1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-horse1.png', '3.6', 'Lorem minim in Lorem minim ipsum aliquip eiusmod cillum consequat fugiat laborum. Dolore ut mollit eu irure aliqua deserunt qui.', '2019-11-07 16:55:31'),
(19, 8, 'Tetak', 2, 'male', 'cow', 'https://zoeroom.com/aau/wnm617/m13/imgs/barley.svg', ' Barley', 'https://zoeroom.com/aau/wnm617/m14/imgs/cow2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-cow3.png', '4.2', 'Pariatur non est aute dolore culpa voluptate amet. Consectetur tempor id dolor magna nulla enim veniam aute nisi eu ea.', '2019-11-07 16:55:31'),
(17, 7, 'Bristo', 8, 'female', 'duck', 'https://zoeroom.com/aau/wnm617/m13/imgs/pear.svg', 'Pears', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-duck1.png', '4.9', 'Tempor officia ut aliquip enim non cillum anim consequat anim ex excepteur anim non Lorem. Pariatur quis dolor est elit cupidatat nulla proident id aute nisi.', '2019-11-07 16:55:31'),
(16, 4, 'Fleetmix', 1, 'female', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/pumpkins.svg', 'Pumpkins', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig1.png', '3.9', 'Proident do culpa ex Lorem et anim esse mollit aute dolore. Laboris sit duis velit sit cillum id laboris nisi tempor eiusmod.', '2019-11-07 16:55:31'),
(15, 7, 'Gushkool', 6, 'male', 'dog', 'https://zoeroom.com/aau/wnm617/m13/imgs/peanut-butter.svg', 'Peanuts Butter', 'https://zoeroom.com/aau/wnm617/m14/imgs/dog3-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-dog3.png', '4.3', 'Eu ea sint veniam sunt elit reprehenderit dolore amet id consequat tempor veniam Lorem. Consectetur sit fugiat minim tempor elit culpa eu voluptate nostrud proident ad est anim.', '2019-11-07 16:55:31'),
(14, 2, 'Uniworld', 1, 'female', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/cucumbers.svg', 'Cucumbers', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig2.png', '2.8', 'Nulla pariatur officia elit ullamco commodo nulla sunt voluptate laboris fugiat duis. Nulla qui est ut esse excepteur in nulla voluptate commodo qui ea adipisicing ullamco incididunt.', '2019-11-07 16:55:31'),
(13, 3, 'Portica', 10, 'male', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/cucumbers.svg', 'Cucumbers', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig3.png', '3.6', 'Eu exercitation sit ut labore Lorem incididunt sint est minim. Mollit tempor quis id culpa nisi aliquip qui.', '2019-11-07 16:55:31'),
(12, 3, 'Kindaloo', 8, 'male', 'cow', 'https://zoeroom.com/aau/wnm617/m13/imgs/silage.svg', 'Silage', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-cow4.png', '4.2', 'Veniam ut ex commodo culpa dolore minim minim dolore excepteur esse aliquip laboris duis. Aute et proident commodo officia labore sit Lorem adipisicing aliqua irure ipsum anim pariatur proident.', '2019-11-07 16:55:31'),
(11, 6, 'Xerex', 2, 'male', 'sheep', 'https://zoeroom.com/aau/wnm617/m13/imgs/grass.svg', 'Grass', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-sheep1.png', '4.7', 'Adipisicing velit aliquip duis esse cupidatat eiusmod. Excepteur quis in id nostrud ex est non veniam tempor nisi.', '2019-11-07 16:55:31'),
(10, 11, 'Norsul', 1, 'male', 'chicken', 'https://zoeroom.com/aau/wnm617/m13/imgs/noodles.svg', 'Noodles', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken1-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-chicken1.png', '2.9', 'Nisi irure anim tempor duis. Aliquip enim minim officia consequat eu esse aliquip non consequat laborum.', '2019-11-07 16:55:31'),
(9, 10, 'Zogak', 5, 'female', 'cow', 'https://zoeroom.com/aau/wnm617/m13/imgs/barley.svg', ' Barley', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow4-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-cow5.png', '3.3', 'Veniam ipsum nisi excepteur esse exercitation esse nisi ut dolore eiusmod ut aliquip est. Aute consequat fugiat dolore nulla ipsum non incididunt.', '2019-11-07 16:55:31'),
(8, 4, 'Vidto', 4, 'male', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/corn.svg', 'Corn', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig4.png', '3.7', 'Commodo irure excepteur est ut sit culpa officia consectetur ex pariatur duis excepteur ex. Duis pariatur irure eu minim esse veniam aliquip nostrud mollit laborum eiusmod labore nulla sint.', '2019-11-07 16:55:31'),
(7, 1, 'Uncorp', 7, 'male', 'donkey', 'https://zoeroom.com/aau/wnm617/m13/imgs/sweet-potato.svg', 'Sweet Potato', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey3-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-donkey3.png', '4.1', 'Veniam culpa sunt laboris dolor tempor consequat magna nisi tempor eu mollit. Dolor consequat ad quis duis Lorem.', '2019-11-07 16:55:31'),
(6, 7, 'Geekfarm', 10, 'female', 'sheep', 'https://zoeroom.com/aau/wnm617/m13/imgs/grass.svg', 'Plums', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-sheep2.png', '4.7', 'Excepteur nisi amet tempor deserunt ullamco nulla et minim non sint tempor. Nulla ex pariatur nulla do.', '2019-11-07 16:55:31'),
(5, 10, 'Radiantix', 10, 'female', 'sheep', 'https://zoeroom.com/aau/wnm617/m13/imgs/clover.svg', ' Clover', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep3-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-sheep3.png', '4.4', 'Aliqua non pariatur nostrud Lorem cillum duis. Ipsum ea enim voluptate magna cillum ut.', '2019-11-07 16:55:31'),
(2, 11, 'Roboid', 4, 'female', 'duck', 'https://zoeroom.com/aau/wnm617/m13/imgs/plum.svg', 'Plum', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-duck2.png', '3.5', 'Enim ipsum minim velit adipisicing. Nisi sint irure consectetur aliqua.', '2019-11-07 16:55:31'),
(3, 9, 'Pyramis', 8, '', 'cow', 'https://zoeroom.com/aau/wnm617/m13/imgs/hay.svg', 'Hay', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow5-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-cow1.png', '3.8', 'Minim id ipsum cillum elit magna cillum ullamco qui. Culpa esse deserunt duis velit culpa et adipisicing.', '2019-11-07 16:55:31'),
(4, 6, 'Ecraze', 10, 'male', 'dog', 'https://zoeroom.com/aau/wnm617/m13/imgs/meat.svg', 'Fish', 'https://zoeroom.com/aau/wnm617/m14/imgs/dog4-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-dog4.png', '2.2', 'Enim tempor ex ullamco qui ex velit proident ullamco sit ullamco sit labore irure magna. Tempor exercitation esse veniam dolore incididunt.', '2019-11-07 16:55:31'),
(24, 5, 'Futuris', 3, 'male', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/cucumbers.svg', 'Cucumbers', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig5-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig5.png', '2.5', 'Nostrud commodo duis cupidatat voluptate tempor irure ex ad adipisicing irure esse ut veniam. Eu excepteur ex exercitation deserunt aliqua dolore.', '2019-11-07 16:55:31'),
(25, 5, 'Waab', 2, 'female', 'chicken', 'https://zoeroom.com/aau/wnm617/m13/imgs/noodles.svg', 'Noodles', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken2-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-chicken2.png', '4.5', 'Commodo officia ut aliqua nostrud nisi. Id et eu tempor veniam eiusmod sunt ut id duis occaecat do consectetur excepteur.', '2019-11-07 16:55:31'),
(26, 11, 'Comtrek', 9, 'female', 'pig', 'https://zoeroom.com/aau/wnm617/m13/imgs/cucumbers.svg', 'Cucumbers', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig6-id.svg', 'https://zoeroom.com/aau/wnm617/m13/imgs/b-pig6.png', '3.0', 'Labore cillum ad reprehenderit aliquip anim amet tempor id sint veniam. Aliqua quis nulla ea amet.', '2019-11-07 16:55:31'),
(37, 8, 'sheshe', 3, 'famale', 'duck', '', '', 'uploads/1576351945.2375_bird.svg', '', '0.0', 'she she is the best duck ever', '2019-12-12 11:01:01'),
(34, 7, 'zizi', 3, 'male', 'dog', '', '', '', '', '0.0', '33', '2019-12-10 18:19:11'),
(31, 7, 'lala', 4, 'male', 'cow', '', '', 'uploads/1576023435.2513_1.jpg', '', '0.0', 'lw', '2019-12-09 01:59:23'),
(36, 5, 'gigi', 3, 'famale', 'cow', '', '', '', '', '0.0', '333', '2019-12-10 19:20:13'),
(38, 1, '22', 333, 'male', 'pig', '', '', '', '', '0.0', '2321321312', '2019-12-13 17:12:34'),
(39, 8, 'Max', 1, 'famale', 'donkey', '', '', '', '', '0.0', '333', '2019-12-14 18:15:23'),
(57, 81, 'Chouchou', 5, 'famale', 'chiken', '', '', '', '', '0.0', 'Djdjdj', '2019-12-16 23:53:44'),
(58, 81, 'nono', 0, 'select', 'select', '', '', '', '', '0.0', '', '2019-12-16 23:56:48'),
(59, 83, 'Little Zoe', 2, 'famale', 'donkey', '', '', 'uploads/1576567081.3489_121.jpg', '', '0.0', 'happy donkey ~', '2019-12-17 00:08:22'),
(46, 81, 'yoyo', 3, 'famale', 'pig', '', '', '', '', '0.0', 'yoyo is lovely girl', '2019-12-16 22:57:17'),
(70, 84, 'Mini', 3, 'famale', 'cow', '', '', 'uploads/1576617538.1822_bird.svg', '', '0.0', 'mini is very nice animal', '2019-12-17 14:13:50'),
(62, 81, '', 0, 'select', 'select', '', '', '', '', '0.0', '', '2019-12-17 00:12:42'),
(63, 81, '', 0, 'select', 'select', '', '', '', '', '0.0', '', '2019-12-17 00:12:42'),
(71, 84, 'Bella', 4, 'male', 'donkey', '', '', '', '', '0.0', 'Bella loves to eat corn and apple', '2019-12-17 14:15:26'),
(72, 84, 'Oreo', 10, 'male', 'dog', '', '', '', '', '0.0', 'Oreo was my bother\'s dog and now it belongs to me.', '2019-12-17 14:17:25'),
(68, 81, 'qiqi', 0, 'select', 'select', '', '', '', '', '0.0', '', '2019-12-17 12:42:28'),
(73, 84, 'Emma', 5, 'famale', 'sheep', '', '', '', '', '0.0', 'Emma is my best sheep since it could eat alot.', '2019-12-17 14:18:28'),
(74, 84, 'Finn', 6, 'famale', 'donkey', '', '', '', '', '0.0', 'Finn ate my banana and me really angry with it', '2019-12-17 14:21:16'),
(75, 84, 'Willow', 3, 'male', 'pig', '', '', '', '', '0.0', 'Willow loves to eat spicy food, and I gave him lot of food yesterday.', '2019-12-17 14:23:09'),
(76, 84, 'Mia', 0, 'famale', 'duck', '', '', '', '', '0.0', 'Mia is a shy duck and she always walks from me when I tried to close to her.', '2019-12-17 14:24:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
