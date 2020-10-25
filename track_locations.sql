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
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(12) NOT NULL,
  `aid` int(12) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `description` text NOT NULL,
  `date_create` datetime NOT NULL,
  `img` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `aid`, `lat`, `lng`, `description`, `date_create`, `img`) VALUES
(1, 1, '37.79788900', '-121.75665000', 'Buddy-dog always be here', '2019-10-29 10:33:36', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(42, 17, '37.81027060', '-121.82119370', 'Elit excepteur quis laboris do mollit non sint ea sit officia eiusmod irure. Lorem aliqua qui sint laborum voluptate adipisicing sint labore eu enim sit id.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg'),
(41, 13, '37.81009460', '-121.82364890', 'Deserunt ut do sit sit ex sint nostrud anim in cupidatat sint Lorem exercitation. Incididunt ut eiusmod veniam aute magna voluptate adipisicing minim laborum reprehenderit id.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg'),
(40, 10, '37.80869560', '-121.82138470', 'Et cillum laborum nostrud nulla proident laboris excepteur aute magna elit do. Nisi aliqua est minim eiusmod anim.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken1-id.svg'),
(39, 12, '37.81039380', '-121.82260170', 'Ipsum in officia elit dolore in labore veniam nostrud pariatur officia ex laboris Lorem laborum. Occaecat laborum ullamco ex qui mollit sunt amet.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg'),
(38, 8, '37.81049290', '-121.82469740', 'Laborum velit aliquip sit laborum aliquip cupidatat laborum Lorem labore quis fugiat ex. Ex quis ex enim et excepteur nostrud consequat aliquip sit laboris exercitation adipisicing eiusmod reprehenderit.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.png'),
(37, 1, '37.80860100', '-121.82157610', 'Culpa minim eu ipsum aliqua ex qui consequat id est cupidatat veniam nisi. Sit et veniam velit laborum pariatur irure elit fugiat nulla.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(36, 24, '37.81048960', '-121.82471300', 'Eiusmod quis enim enim deserunt cupidatat consequat magna consequat id. Minim duis dolor reprehenderit cupidatat eiusmod velit officia.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig5-id.svg'),
(35, 12, '37.80861020', '-121.82380710', 'Reprehenderit aute ut ad mollit ut officia aute esse reprehenderit. Eiusmod nisi anim exercitation commodo elit consequat ad consectetur officia.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg'),
(34, 19, '37.80908870', '-121.82332450', 'Nostrud dolor nisi minim Lorem pariatur Lorem aliquip commodo amet. Reprehenderit duis mollit culpa labore incididunt reprehenderit incididunt labore est.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(33, 1, '37.81222100', '-121.82259300', 'Eu esse eiusmod ullamco esse. Tempor labore cillum velit ipsum culpa.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(136, 30, '37.91286043', '-121.84901772', 'www', '2019-12-10 00:04:22', ''),
(32, 8, '37.81045560', '-121.82107620', 'Minim labore sunt proident sunt id exercitation do eiusmod nisi. Tempor nostrud aliquip aliquip anim tempor mollit proident.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(31, 16, '37.80978590', '-121.82210920', 'Excepteur tempor nisi exercitation amet nulla laborum esse aute reprehenderit qui qui dolor aliquip. Dolor magna incididunt ipsum ut aliqua voluptate laboris aliquip aliquip id mollit dolore officia.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.png'),
(30, 19, '37.80926310', '-121.82283040', 'Ut fugiat sunt labore dolor exercitation sit dolore voluptate magna eu. Aliquip sit tempor sit sint amet quis ipsum est nulla tempor id ea laborum amet.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.png'),
(29, 14, '37.80983300', '-121.82218900', 'Sunt id fugiat magna mollit elit sit qui. Veniam ipsum quis velit dolor irure duis commodo ex aute excepteur ullamco.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(28, 4, '37.81088940', '-121.82367100', 'Cillum commodo enim consectetur enim anim aliqua id mollit ex consequat velit exercitation cillum ullamco. Ea ut ut deserunt deserunt adipisicing cupidatat cillum culpa sit aliqua.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(27, 12, '37.81209370', '-121.82199900', 'Eiusmod proident in velit commodo irure eu ut eiusmod deserunt. Irure ipsum elit minim esse nostrud culpa ipsum et aute aliquip.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg'),
(26, 17, '37.81070630', '-121.82128060', 'Cillum elit mollit exercitation ullamco nisi ullamco ex. Voluptate quis ex culpa minim tempor fugiat deserunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg'),
(25, 16, '37.85767100', '-121.68240700', 'Velit incididunt id sit ex qui labore sunt dolor proident. Deserunt id ea eu dolore non duis et nostrud nostrud ex irure ex consequat.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg'),
(24, 19, '37.80125900', '-121.73574000', 'Irure nulla excepteur ullamco enim id occaecat qui sint culpa tempor dolore. Commodo nostrud enim quis officia sit proident.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(23, 13, '37.82339400', '-121.77963600', 'Proident et nisi commodo exercitation ex eu labore pariatur sit elit velit. Minim Lorem reprehenderit do consequat consequat labore ea et anim exercitation proident laborum.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg'),
(22, 26, '37.80721700', '-122.01034000', 'Incididunt qui voluptate ad aute pariatur. Minim officia amet eu cupidatat excepteur voluptate voluptate in ullamco.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig6-id.svg'),
(21, 5, '37.83488300', '-122.03881000', 'Ex cillum et Lorem Lorem incididunt dolore dolor ut deserunt ea magna eiusmod pariatur ex. Aliqua cillum officia voluptate id deserunt aliqua ex proident esse tempor excepteur dolore voluptate.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep3-id.svg'),
(20, 14, '37.93738400', '-121.99062600', 'Cupidatat nulla Lorem voluptate elit consectetur anim ex amet velit elit quis in ipsum eiusmod. Nostrud magna fugiat cupidatat nostrud nulla occaecat nostrud officia ex pariatur veniam excepteur sunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(19, 13, '37.80991900', '-121.82111270', 'Excepteur et magna consectetur laboris velit occaecat et id sit in aute eu. Nulla id Lorem aliquip laboris exercitation irure non cupidatat sunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(18, 6, '37.90122300', '-121.94391600', 'Ad tempor aliquip proident incididunt officia aliqua et nostrud est. Officia culpa adipisicing eu et ut aliqua incididunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep2-id.svg'),
(137, 15, '37.86387291', '-121.82469276', 'laal', '2019-12-10 00:06:48', ''),
(17, 22, '37.80873100', '-121.82182540', 'Duis ut excepteur non dolor sint voluptate enim duis voluptate Lorem. Duis dolore occaecat ut ut ipsum esse quis et deserunt nisi ullamco adipisicing.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg'),
(16, 7, '37.80913300', '-121.82396820', 'Veniam culpa proident eiusmod tempor est nisi occaecat. Voluptate excepteur sit nostrud reprehenderit sunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey3-id.svg'),
(15, 19, '37.85661300', '-121.86963100', 'Nulla ea nulla proident sint sint consequat fugiat tempor nostrud. Culpa ad est voluptate occaecat anim quis officia dolore ad.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(134, 17, '37.89995203', '-121.82734279', '3', '2019-12-08 00:17:50', 'https://via.placeholder.com/400/807/fff/?text=ICON'),
(14, 4, '37.85264900', '-121.95202400', 'Excepteur nulla adipisicing in velit ut nisi ut ex. Ex incididunt exercitation consequat consequat ex eu dolore cillum laborum deserunt et enim.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(135, 22, '37.90901469', '-121.83097683', 'wawa', '2019-12-08 23:10:47', ''),
(12, 4, '37.79185100', '-121.76857500', 'Ut proident id dolore non labore dolore eu labore laboris. Ut velit eu mollit ad.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(11, 12, '37.85197100', '121.85243800', 'Nostrud pariatur ea officia aute esse ullamco aliqua ex proident consequat labore minim mollit. Voluptate mollit mollit elit ullamco cillum in.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg'),
(10, 11, '37.81838000', '-121.80296800', 'Nulla consectetur duis elit proident cillum dolor eu deserunt in reprehenderit. Laborum dolor non velit cillum ut cupidatat id laborum laboris id pariatur.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep1-id.svg'),
(9, 19, '37.86214700', '-121.75591900', 'Ullamco dolore incididunt mollit consectetur aliqua laborum commodo magna commodo. Ad quis ut quis consectetur ut in in et Lorem.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(8, 19, '37.85136800', '-121.79424000', 'Ex commodo ea ea labore veniam sint excepteur consequat. Cillum tempor laborum pariatur irure enim excepteur culpa id.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(6, 15, '37.73536900', '-121.70036300', 'Non est pariatur velit nisi consequat ex ut. Quis ad cillum elit duis irure magna.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(7, 15, '37.84745400', '-121.85069700', 'Tempor voluptate exercitation amet minim exercitation veniam do veniam commodo magna amet tempor labore. In labore voluptate id ipsum cupidatat adipisicing exercitation magna fugiat cillum ex occaecat enim incididunt.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(5, 7, '37.76726300', '-121.70195800', 'Sint ad excepteur Lorem amet dolore excepteur. Enim amet sunt Lorem minim culpa aliquip qui.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey3-id.svg'),
(4, 13, '37.79188900', '-121.72658500', 'Deserunt cillum incididunt commodo incididunt excepteur Lorem enim nostrud sit aliqua enim incididunt enim. Nisi enim pariatur anim pariatur ullamco Lorem laboris nostrud et ex dolore cupidatat Lorem in.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(3, 23, '37.78119000', '-121.73850800', 'Incididunt pariatur nulla excepteur nisi officia eiusmod et cupidatat nisi enim do occaecat tempor commodo. Deserunt quis non consectetur pariatur enim quis amet reprehenderit est.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(2, 20, '37.78975100', '-121.73715000', 'Et deserunt dolore commodo laborum amet excepteur voluptate magna veniam do magna cupidatat magna velit. Ex consequat labore quis labore.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey2-id.svg'),
(50, 19, '37.83566800', '-121.78544300', 'Labore quis fugiat ullamco veniam qui esse qui. Ea adipisicing ipsum aliqua reprehenderit veniam occaecat est amet.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(51, 8, '37.83290700', '-121.92762100', 'Qui non ut cillum labore irure tempor non consectetur sit. Eu nulla non excepteur id veniam veniam minim esse.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(52, 5, '37.86320200', '-121.96644500', 'Duis velit mollit laborum dolor dolore sunt. Qui minim laboris eu esse dolore dolore ea cupidatat do exercitation anim eiusmod dolore incididunt.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep3-id.svg'),
(53, 9, '37.85179300', '-121.89647100', 'Quis cupidatat occaecat ad amet nostrud tempor. Officia dolor dolor elit sit reprehenderit velit commodo id do dolor Lorem in et ea.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow4-id.svg'),
(54, 1, '37.86106500', '-121.91452500', 'Sit non enim fugiat aliqua enim ullamco labore velit ipsum excepteur cillum magna et. Et incididunt sit nulla velit nulla esse minim.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(55, 1, '37.84288100', '-121.89421900', 'Pariatur quis ipsum qui exercitation ad amet laboris irure dolor. Eu consectetur mollit Lorem esse quis.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(56, 9, '37.83574400', '-121.87481600', 'Occaecat sint dolor consectetur cillum amet quis mollit nostrud est ipsum. Elit do non ad tempor nulla dolore id.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow4-id.svg'),
(57, 5, '37.83217200', '-121.86082900', 'Consectetur enim deserunt ut cillum exercitation labore laboris elit. Ex eiusmod nisi minim aute eiusmod commodo nulla elit consequat exercitation quis adipisicing enim occaecat.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep3-id.svg'),
(58, 13, '37.83607600', '-121.83690300', 'Anim ipsum non culpa sint ex labore duis laboris. Ea laboris ea commodo non quis ipsum laboris aute laborum commodo.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg'),
(59, 11, '37.84920800', '-121.78044800', 'Ipsum magna pariatur aliquip sit exercitation veniam in commodo tempor id do culpa nulla. Lorem consequat pariatur est nulla incididunt dolore anim sit amet.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep1-id.svg'),
(60, 17, '37.85958800', '-121.81880900', 'Sit dolore est labore magna qui irure. Ullamco eiusmod voluptate culpa laborum irure incididunt ullamco.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg'),
(132, 7, '37.91390366', '-121.82362390', 'df', '2019-12-03 03:45:36', 'https://via.placeholder.com/400/807/fff/?text=ICON'),
(133, 22, '37.90439335', '-121.81803016', '2', '2019-12-08 00:10:36', 'https://via.placeholder.com/400/807/fff/?text=ICON'),
(62, 23, '37.86380100', '-121.76234900', 'Ullamco consequat commodo fugiat duis enim occaecat qui voluptate qui velit aute officia non non. Qui quis aliquip consequat culpa reprehenderit laboris proident officia do.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(63, 15, '37.85875100', '-121.72351700', 'Consectetur minim proident elit elit officia consectetur do consequat nisi aute id minim proident. Esse enim consequat amet ut nisi esse magna elit commodo.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(64, 23, '37.81675600', '-121.77018100', 'Ipsum voluptate velit velit eu duis dolor duis dolore in. Ea laborum nisi velit eiusmod.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(65, 25, '37.80820100', '-121.78352500', 'Excepteur adipisicing ea nulla ipsum elit voluptate irure commodo. Id consectetur veniam ea voluptate esse labore.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken2-id.svg'),
(66, 19, '37.76390000', '-121.70887400', 'Excepteur dolor magna exercitation qui in mollit eiusmod officia sit do cupidatat labore. Id sunt sunt id culpa.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(67, 2, '37.77632700', '-121.75889300', 'Cillum duis quis nulla laboris. Est amet elit nulla reprehenderit voluptate.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck2-id.svg'),
(68, 22, '37.81978500', '-121.71938300', 'Nisi pariatur sit irure sunt est irure fugiat nostrud tempor ad Lorem magna. Ipsum ipsum voluptate nulla laborum ipsum deserunt.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg'),
(69, 22, '37.80401000', '-121.75571700', 'Quis laborum consequat et magna ullamco. Non cillum cupidatat cillum sit.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg'),
(70, 8, '37.80643600', '-121.72003900', 'Consequat esse occaecat ex ut incididunt est aliquip enim. Duis aliqua Lorem ea est qui ex commodo aute aliquip qui incididunt id occaecat.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(71, 17, '37.82681500', '-121.84080200', 'Pariatur irure velit incididunt laboris enim tempor commodo Lorem. Ipsum nulla aliquip est Lorem pariatur in sunt ipsum.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg'),
(72, 11, '37.82278300', '-121.74379000', 'Sint nostrud sit ex nisi reprehenderit reprehenderit sit nostrud sint ipsum ex quis aliqua ut. Fugiat deserunt commodo est Lorem.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep1-id.svg'),
(73, 26, '37.83522400', '-121.85832400', 'Pariatur veniam officia duis non ex. Id sunt laboris nisi ut ad adipisicing fugiat.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig6-id.svg'),
(74, 13, '37.90260700', '-121.83940500', 'Irure nisi cillum ea aliqua sit ut in consectetur ad consectetur. Quis non cillum cupidatat sint tempor magna proident commodo esse velit culpa commodo proident.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig1-id.svg'),
(75, 3, '37.93474600', '-121.93791300', 'Laborum nisi commodo enim Lorem laborum laborum nisi elit ipsum enim sint ipsum esse cupidatat. Esse in nulla cupidatat deserunt ex voluptate officia amet do anim.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow5-id.svg'),
(77, 8, '37.92343400', '-121.89265600', 'Sint esse fugiat esse culpa. Aute deserunt ullamco aliquip quis enim ad amet nostrud.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(78, 18, '37.94150100', '-121.87430200', 'Commodo deserunt commodo tempor irure nostrud aliquip voluptate anim do consectetur deserunt proident reprehenderit duis. Aliquip sint incididunt aute consequat ipsum sunt proident ea anim incididunt.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/horse1-id.svg'),
(79, 17, '37.92704700', '-121.88749600', 'Id laborum nostrud irure esse dolor id exercitation. Voluptate ea excepteur officia veniam elit anim in culpa non aliqua reprehenderit id aliquip.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg'),
(80, 25, '37.89360700', '-122.01408500', 'Enim enim ipsum occaecat mollit anim reprehenderit esse labore esse laboris sint eiusmod duis veniam. Dolor do laboris mollit sint in quis.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken2-id.svg'),
(81, 7, '37.93067700', '-121.92817300', 'Qui magna commodo et nisi eu consequat. Anim minim veniam mollit qui consectetur proident pariatur consequat Lorem in culpa aliquip commodo.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey3-id.png'),
(82, 19, '37.87972000', '-121.91342400', 'Fugiat proident sit nisi et exercitation eiusmod ipsum. Incididunt aliqua est incididunt incididunt do dolore.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(83, 14, '37.90343000', '-121.96669200', 'Sit et culpa velit aliqua occaecat in veniam ea adipisicing laborum ipsum elit. In pariatur ullamco exercitation laborum amet pariatur sunt ad consectetur laboris est nulla sunt.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(84, 22, '37.88412600', '-121.99486000', 'Ea sunt qui qui dolore magna non enim Lorem. Ullamco irure velit anim commodo ullamco nisi ea sint.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg'),
(85, 20, '37.86288900', '-121.92762400', 'Mollit et tempor culpa ad. Cillum culpa tempor do enim laboris nulla sit quis in sint nisi commodo.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey2-id.svg'),
(86, 12, '37.86889600', '-121.90464500', 'Aute anim sunt officia fugiat ea reprehenderit. Est amet ullamco dolore magna incididunt esse laboris ullamco sit excepteur ullamco excepteur velit eiusmod.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow3-id.svg'),
(87, 4, '37.81940700', '-121.87397600', 'Consectetur exercitation eiusmod velit nisi cupidatat sit adipisicing ad esse labore. Dolore non officia duis exercitation duis cillum enim do do ea qui consequat laboris.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(88, 22, '37.90338500', '-122.02058200', 'Ipsum ipsum irure do eu eu aliquip proident proident mollit Lorem pariatur et quis. Ut cupidatat adipisicing ipsum ex nulla do reprehenderit aliquip consequat exercitation velit ad incididunt.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey1-id.svg'),
(89, 8, '37.88908000', '-121.98359100', 'Esse officia aute eiusmod dolor fugiat tempor eu ea magna incididunt enim cillum magna. Ex minim proident minim amet.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(90, 4, '37.90739900', '-121.94037900', 'Adipisicing amet nostrud occaecat adipisicing est sit consectetur consequat proident commodo excepteur. Quis esse ut et et aliqua cillum aute nulla anim aute consectetur nisi.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(91, 25, '37.85052800', '-121.80885600', 'Dolore ut amet proident in ad eiusmod. Amet elit mollit enim qui nulla ipsum ipsum do irure laboris duis Lorem ad.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken2-id.svg'),
(92, 15, '37.85103500', '-121.83202100', 'Ipsum magna ad esse officia. Sint labore voluptate dolor in.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(93, 6, '37.82731800', '-121.88837000', 'Ea enim amet mollit ut consequat aute excepteur. Irure esse aute esse officia ex velit pariatur ex.', '2019-11-01 12:33:54', '	\r\nhttps://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(94, 14, '37.81248700', '-121.88836900', 'Laborum laboris in occaecat sit sunt nisi consequat. Lorem quis minim cillum incididunt non officia sunt ullamco non qui voluptate exercitation.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(95, 8, '37.83473300', '-121.87209500', 'Laboris in cillum esse veniam ullamco tempor ipsum mollit laborum aute amet laboris. Mollit nostrud qui et esse sint fugiat magna esse non nulla eiusmod.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(96, 1, '37.83918300', '-121.88524000', 'Pariatur anim sint esse consectetur velit aute aliquip. Irure elit consequat veniam duis ea duis cupidatat officia ipsum consequat et.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog1-id.svg'),
(97, 21, '37.84807600', '-121.85143200', 'Et laborum deserunt nulla Lorem adipisicing ullamco fugiat eiusmod eu aute deserunt nulla culpa ex. Mollit esse consequat fugiat eu Lorem incididunt aute excepteur ea consectetur.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow1-id.svg'),
(98, 15, '37.82977900', '-121.83579300', 'Ad eu nostrud consequat elit minim labore reprehenderit ea cupidatat sit laboris ad sint. Aute est aute officia nostrud commodo sint tempor velit.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog3-id.svg'),
(99, 4, '37.82530600', '-121.79636500', 'Mollit non labore amet ex quis sunt eu cupidatat reprehenderit eiusmod cupidatat sit magna non. Ex aliquip ut incididunt aliquip enim consectetur qui elit labore dolor laborum.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/dog4-id.svg'),
(100, 25, '37.87277900', '-121.83945200', 'Pariatur excepteur cillum duis occaecat id do sint occaecat cillum ut ea. Id aliqua incididunt id est voluptate est exercitation non reprehenderit minim nostrud.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/chicken2-id.svg'),
(101, 8, '37.85472700', '-121.86867200', 'Excepteur nostrud dolor mollit sunt elit id sint in cupidatat nisi esse sint adipisicing. Ex id excepteur enim proident officia esse ea in tempor eiusmod reprehenderit magna ullamco id.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig4-id.svg'),
(103, 19, '37.85153600', '-121.83719400', 'Duis sunt nostrud ea sunt dolor irure ullamco quis commodo. Officia fugiat aliquip ut sint in reprehenderit qui officia laborum ut amet magna enim do.', '2019-11-01 12:33:54', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(160, 76, '37.96743807', '-121.87878442', 'mia', '2019-12-17 14:24:51', ''),
(161, 75, '37.85313637', '-121.84409200', '', '2019-12-17 14:26:01', ''),
(162, 74, '37.96265642', '-121.79367702', '', '2019-12-17 14:32:42', ''),
(163, 74, '37.92089912', '-121.82439906', '', '2019-12-17 16:46:11', ''),
(155, 57, '37.89929062', '-121.81006936', '', '2019-12-16 23:59:10', ''),
(156, 59, '0.00000000', '0.00000000', '', '2019-12-17 00:32:12', ''),
(157, 70, '37.92133002', '-121.83237316', '', '2019-12-17 14:14:06', ''),
(158, 71, '37.97141164', '-121.78499752', '', '2019-12-17 14:15:39', ''),
(159, 73, '37.97465093', '-121.89170122', '', '2019-12-17 14:19:43', ''),
(151, 44, '37.91165211', '-121.82077942', '1', '2019-12-16 22:43:52', ''),
(152, 46, '37.90279654', '-121.81535197', '333', '2019-12-16 23:19:49', ''),
(153, 46, '37.91926166', '-121.82300050', 'aa', '2019-12-16 23:43:01', ''),
(154, 14, '37.92565232', '-121.84756489', 'New', '2019-12-16 23:45:58', ''),
(146, 36, '37.91644927', '-121.82460961', 'gigi\'s location 01', '2019-12-13 16:48:13', ''),
(147, 39, '37.95803203', '-121.81275157', 'cool location', '2019-12-14 18:19:18', ''),
(148, 43, '37.92058279', '-121.82719258', 'lili-wi', '2019-12-14 20:24:25', ''),
(149, 43, '37.94554190', '-121.81371985', 'location3', '2019-12-14 20:31:19', ''),
(150, 13, '37.89371460', '-121.85517557', 'aaa', '2019-12-15 23:05:13', ''),
(142, 34, '37.93387136', '-121.84654377', '2', '2019-12-10 18:38:00', ''),
(141, 33, '37.93978099', '-121.81487588', 'paw', '2019-12-10 02:50:16', ''),
(144, 36, '37.83848642', '-121.83206391', 'gigi', '2019-12-10 19:20:39', ''),
(145, 37, '37.89629749', '-121.82515383', 'sheshe', '2019-12-12 11:07:01', ''),
(138, 15, '37.86387291', '-121.82469276', 'uuu', '2019-12-10 00:07:48', ''),
(139, 28, '37.93699650', '-121.82860803', 'aldd', '2019-12-10 02:32:16', ''),
(143, 35, '37.93929670', '-121.83751367', '', '2019-12-10 19:16:18', ''),
(43, 5, '37.80971070', '-121.82126750', 'Cillum do officia laborum deserunt mollit nostrud irure duis id qui irure consectetur. Laboris veniam esse aliquip irure mollit cupidatat commodo amet excepteur velit ea laborum.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep3-id.svg'),
(44, 20, '37.81141710', '-121.82424350', 'Aliqua duis occaecat amet nulla deserunt officia. Sunt aliqua enim veniam culpa adipisicing excepteur consectetur qui sint cillum eu consectetur.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/donkey2-id.svg'),
(45, 14, '37.81164970', '-121.82370750', 'Sit pariatur ut velit est exercitation aute aliqua cillum. Quis non sunt labore reprehenderit adipisicing laborum officia dolore esse fugiat voluptate sint non.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(46, 11, '37.81116980', '-121.82123590', 'Et ad nostrud veniam anim aute nisi quis. Eu labore incididunt sunt enim.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/sheep1-id.svg'),
(47, 14, '37.80887970', '-121.82430000', 'Do nostrud incididunt velit aliqua proident non exercitation ipsum non deserunt duis excepteur. Reprehenderit ex consectetur dolore nulla et.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/pig2-id.svg'),
(48, 19, '37.80863490', '-121.82197870', 'Exercitation duis cillum adipisicing nisi eiusmod fugiat minim ex incididunt. Mollit nulla excepteur veniam cillum nisi ad.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/cow2-id.svg'),
(49, 17, '37.80986830', '-121.82311440', 'Ut adipisicing deserunt minim excepteur esse elit fugiat in laborum veniam nostrud. Dolor aliquip cupidatat velit fugiat eu enim incididunt dolore.', '2019-11-17 19:35:39', 'https://zoeroom.com/aau/wnm617/m13/imgs/duck1-id.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
