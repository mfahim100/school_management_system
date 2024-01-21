-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 03:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_table`
--

CREATE TABLE `attendance_table` (
  `id` int(11) NOT NULL,
  `Admission_Number` int(11) NOT NULL,
  `Admitted_Class` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Date` bigint(20) NOT NULL,
  `Month` bigint(20) NOT NULL,
  `Type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_table`
--

INSERT INTO `attendance_table` (`id`, `Admission_Number`, `Admitted_Class`, `Name`, `Date`, `Month`, `Type`) VALUES
(255, 223, '9th', 'sdfsadf', 1695106800000, 1693551600000, 'P'),
(283, 223, '9th', 'sdfsadf', 1695279600000, 1693551600000, 'L'),
(311, 223, '9th', 'sdfsadf', 1695884400000, 1693551600000, 'A'),
(321, 223, '9th', 'sdfsadf', 1695970800000, 1693551600000, 'A'),
(322, 100, '10th', 'Muhammad Fahim', 1695970800000, 1693551600000, 'P'),
(323, 200, '10th', 'Fahad Shah', 1695970800000, 1693551600000, 'P'),
(324, 300, '10th', 'Hassan Jamal', 1695970800000, 1693551600000, 'P'),
(325, 400, '10th', 'Muhammad Adil Khan', 1695970800000, 1693551600000, 'P'),
(326, 500, '10th', 'Junaid  Khan', 1695970800000, 1693551600000, 'A'),
(327, 600, '10th', 'Zeeshan Ahamad', 1695970800000, 1693551600000, 'L'),
(328, 100, '10th', 'Muhammad Fahim', 1696057200000, 1693551600000, 'P'),
(329, 200, '10th', 'Fahad Shah', 1696057200000, 1693551600000, 'P'),
(330, 300, '10th', 'Hassan Jamal', 1696057200000, 1693551600000, 'P'),
(331, 400, '10th', 'Muhammad Adil Khan', 1696057200000, 1693551600000, 'P'),
(332, 500, '10th', 'Junaid  Khan', 1696057200000, 1693551600000, 'A'),
(333, 600, '10th', 'Zeeshan Ahamad', 1696057200000, 1693551600000, 'L'),
(334, 200, '10th', 'Fahad Shah', 1696143600000, 1696143600000, 'P'),
(335, 300, '10th', 'Hassan Jamal', 1696143600000, 1696143600000, 'P'),
(336, 100, '10th', 'Muhammad Fahim', 1696143600000, 1696143600000, 'P'),
(337, 400, '10th', 'Muhammad Adil Khan', 1696143600000, 1696143600000, 'A'),
(338, 500, '10th', 'Junaid  Khan', 1696143600000, 1696143600000, 'P'),
(339, 600, '10th', 'Zeeshan Ahamad', 1696143600000, 1696143600000, 'P'),
(340, 100, '10th', 'Muhammad Fahim', 1696230000000, 1696143600000, 'P'),
(341, 200, '10th', 'Fahad Shah', 1696230000000, 1696143600000, 'P'),
(342, 300, '10th', 'Hassan Jamal', 1696230000000, 1696143600000, 'P'),
(343, 400, '10th', 'Muhammad Adil Khan', 1696230000000, 1696143600000, 'P'),
(344, 500, '10th', 'Junaid  Khan', 1696230000000, 1696143600000, 'P'),
(345, 600, '10th', 'Zeeshan Ahamad', 1696230000000, 1696143600000, 'A'),
(346, 100, '10th', 'Muhammad Fahim', 1696316400000, 1696143600000, 'P'),
(347, 200, '10th', 'Fahad Shah', 1696316400000, 1696143600000, 'P'),
(348, 300, '10th', 'Hassan Jamal', 1696316400000, 1696143600000, 'P'),
(349, 400, '10th', 'Muhammad Adil Khan', 1696316400000, 1696143600000, 'P'),
(350, 500, '10th', 'Junaid  Khan', 1696316400000, 1696143600000, 'A'),
(351, 600, '10th', 'Zeeshan Ahamad', 1696316400000, 1696143600000, 'P'),
(352, 100, '10th', 'Muhammad Fahim', 1696402800000, 1696143600000, 'P'),
(353, 200, '10th', 'Fahad Shah', 1696402800000, 1696143600000, 'P'),
(354, 300, '10th', 'Hassan Jamal', 1696402800000, 1696143600000, 'P'),
(355, 400, '10th', 'Muhammad Adil Khan', 1696402800000, 1696143600000, 'P'),
(356, 500, '10th', 'Junaid  Khan', 1696402800000, 1696143600000, 'L'),
(357, 600, '10th', 'Zeeshan Ahamad', 1696402800000, 1696143600000, 'A'),
(358, 100, '10th', 'Muhammad Fahim', 1696662000000, 1696143600000, 'P'),
(359, 200, '10th', 'Fahad Shah', 1696662000000, 1696143600000, 'P'),
(360, 300, '10th', 'Hassan Jamal', 1696662000000, 1696143600000, 'P'),
(361, 400, '10th', 'Muhammad Adil Khan', 1696662000000, 1696143600000, 'P'),
(362, 500, '10th', 'Junaid  Khan', 1696662000000, 1696143600000, 'A'),
(363, 600, '10th', 'Zeeshan Ahamad', 1696662000000, 1696143600000, 'P'),
(364, 100, '10th', 'Muhammad Fahim', 1700467200000, 1698822000000, 'P'),
(365, 200, '10th', 'Fahad Shah', 1700467200000, 1698822000000, 'P'),
(366, 300, '10th', 'Hassan Jamal', 1700467200000, 1698822000000, 'P'),
(367, 400, '10th', 'Muhammad Adil Khan', 1700467200000, 1698822000000, 'P'),
(368, 500, '10th', 'Junaid  Khan', 1700467200000, 1698822000000, 'P'),
(369, 600, '10th', 'Zeeshan Ahamad', 1700467200000, 1698822000000, 'P'),
(370, 2342, '8th', 'sdfasdf', 1700467200000, 1698822000000, 'A'),
(371, 23234, '6th', 'bjhjkjkjk', 1700467200000, 1698822000000, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `auth_table`
--

CREATE TABLE `auth_table` (
  `sno` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_table`
--

INSERT INTO `auth_table` (`sno`, `Name`, `UserName`, `Password`) VALUES
(1, 'Muhammad Fahim', 'mfahim100', 'fahim@100'),
(2, 'Fahd Shah', 'fahad100', 'fahad@100'),
(3, 'Qamar Zaman', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `dmc`
--

CREATE TABLE `dmc` (
  `id` int(11) NOT NULL,
  `Admission_Number` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father_Name` varchar(30) NOT NULL,
  `Admitted_Class` varchar(10) NOT NULL,
  `Exam_Type` varchar(10) NOT NULL,
  `English` int(3) NOT NULL,
  `Urdu` int(3) NOT NULL,
  `Maths` int(3) NOT NULL,
  `Islamiat` int(3) NOT NULL,
  `Pak_Study` int(3) NOT NULL,
  `Lughat_Arabia` int(3) NOT NULL,
  `Nazira` int(3) NOT NULL,
  `Physics` int(3) NOT NULL,
  `Chemistry` int(3) NOT NULL,
  `Biology` int(3) NOT NULL,
  `Total_Marks` int(4) NOT NULL,
  `Percentage` float NOT NULL,
  `Grade` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dmc`
--

INSERT INTO `dmc` (`id`, `Admission_Number`, `Name`, `Father_Name`, `Admitted_Class`, `Exam_Type`, `English`, `Urdu`, `Maths`, `Islamiat`, `Pak_Study`, `Lughat_Arabia`, `Nazira`, `Physics`, `Chemistry`, `Biology`, `Total_Marks`, `Percentage`, `Grade`) VALUES
(108, 2342, 'sdfasdf', 'sdfasdf', '8th', '1st', 32, 32, 22, 33, 22, 87, 55, 0, 0, 0, 283, 40.4286, 'D'),
(109, 23234, 'bjhjkjkjk', 'jkjkh', '6th', '1st', 32, 32, 22, 33, 22, 87, 55, 0, 0, 0, 283, 40.4286, 'D'),
(116, 100, 'Muhammad Fahim', 'sdfsadf', '10th', '1st', 12, 21, 12, 22, 22, 0, 0, 12, 32, 11, 144, 26.1818, 'Fail'),
(117, 200, 'Fahad Shah', 'sdfsadf', '10th', '1st', 40, 22, 22, 22, 22, 0, 0, 22, 22, 40, 212, 38.5455, 'Fai'),
(118, 600, 'Zeeshan Ahamad', 'sdfsadf', '10th', '1st', 40, 22, 22, 22, 22, 0, 0, 22, 22, 40, 212, 38.5455, 'Fai'),
(119, 300, 'Hassan Jamal', 'sdfsadf', '10th', '1st', 55, 55, 55, 48, 46, 0, 0, 22, 55, 55, 391, 71.0909, 'A'),
(120, 400, 'Muhammad Adil Khan', 'sdfsadf', '10th', '1st', 22, 22, 22, 22, 22, 0, 0, 22, 22, 22, 176, 32, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Cash_In` int(11) NOT NULL,
  `Cash_Out` int(11) NOT NULL,
  `Date` bigint(20) NOT NULL,
  `Month` bigint(20) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `Description`, `Cash_In`, `Cash_Out`, `Date`, `Month`, `Total`) VALUES
(75, 'cash IN', 1000, 0, 1696057200000, 1693551600000, 1000),
(76, 'cashi INNNN', 1000, 0, 1696057200000, 1693551600000, 2000),
(77, 'description', 0, 1000, 1696057200000, 1693551600000, 1000),
(78, 'cash out', 0, 1000, 1696057200000, 1693551600000, 2000),
(79, 'something', 0, 1000, 1696057200000, 1693551600000, 3000),
(80, 'cash out', 0, 1000, 1696057200000, 1693551600000, 4000),
(81, 'descripton', 0, 1000, 1696057200000, 1693551600000, 5000),
(82, 'dddd', 0, 1000, 1696057200000, 1693551600000, 6000),
(83, 'ssss', 0, 1000, 1696057200000, 1693551600000, 7000),
(84, 'dddd', 1000, 0, 1696057200000, 1693551600000, 3000),
(85, 'aaa', 1000, 0, 1696057200000, 1693551600000, 4000),
(86, 'sss', 1000, 0, 1696057200000, 1693551600000, 5000),
(87, 'sssss', 0, 1000, 1696057200000, 1693551600000, 8000),
(88, 'sweeeetttss', 1000, 0, 1696057200000, 1693551600000, 6000),
(89, 'aaaa', 1000, 0, 1696057200000, 1693551600000, 7000),
(90, 'qdqdqdqw', 1000, 0, 1696057200000, 1693551600000, 8000),
(91, 'sdsd', 0, 1000, 1696057200000, 1693551600000, 9000),
(92, 'dwcdw', 1000, 0, 1696057200000, 1693551600000, 9000),
(93, 'dfgsdfg', 1000, 0, 1696057200000, 1693551600000, 10000),
(94, 'dfgdsgs', 1000, 0, 1696057200000, 1693551600000, 11000),
(95, 'dasdasd', 1000, 0, 1696057200000, 1693551600000, 12000),
(96, 'dfsasfs', 1000, 0, 1696057200000, 1693551600000, 13000),
(97, 'fsdfasdf', 1000, 0, 1696057200000, 1693551600000, 14000),
(98, 'xcvxzcvxc', 0, 1000, 1696057200000, 1693551600000, 10000),
(99, 'sfsfsafsa', 0, 1000, 1696057200000, 1693551600000, 11000),
(100, 'sgsdfgsd', 1000, 0, 1696057200000, 1693551600000, 15000),
(101, 'sdfsdfsadf', 1000, 0, 1696057200000, 1693551600000, 16000),
(102, 'sdfsadfasdf', 1000, 0, 1696057200000, 1693551600000, 17000),
(103, 'sdasdfsdfs', 1000, 0, 1696057200000, 1693551600000, 18000),
(104, 'safsadfsa', 1000, 0, 1696057200000, 1693551600000, 19000),
(105, 'sadfasdfasd', 1000, 0, 1696057200000, 1693551600000, 20000),
(106, 'safasdfsdf', 0, 1000, 1696057200000, 1693551600000, 12000),
(107, 'sdasafsadf', 0, 1000, 1696057200000, 1693551600000, 13000),
(108, 'dfsdafsd', 0, 1000, 1696057200000, 1693551600000, 14000),
(109, 'sdfsf', 100, 0, 1696143600000, 1696143600000, 100),
(110, 'fgdfgd', 100, 0, 1696143600000, 1696143600000, 100),
(111, 'gdfg', 0, 100, 1696143600000, 1696143600000, 100),
(112, 'sdfsadf', 0, 1000, 1696316400000, 1696143600000, 15100),
(113, 'sdfsdf', 0, 1000, 1696316400000, 1696143600000, 16100),
(114, 'sdfasdf', 0, 1000, 1696316400000, 1696143600000, 17100),
(115, 'sdfsadf', 1000, 0, 1696316400000, 1696143600000, 21200),
(116, 'sdfsd', 1000, 0, 1696316400000, 1696143600000, 1000),
(117, 'sdfsadf', 1000, 0, 1696316400000, 1696143600000, 1000),
(118, 'sadfsad', 1000, 0, 1696316400000, 1696143600000, 24200),
(119, 'fasdfa', 1000, 0, 1696316400000, 1696143600000, 49400),
(120, 'fasfdsdf', 1000, 0, 1696316400000, 1696143600000, 26200),
(121, 'sdfsad', 1000, 0, 1696316400000, 1696143600000, 27200),
(122, 'sdfasd', 1000, 0, 1696316400000, 1696143600000, 28200),
(123, 'fsadfsadf', 0, 1000, 1696316400000, 1696143600000, 18100),
(124, 'fsadf', 0, 1000, 1696316400000, 1696143600000, 19100),
(125, 'sdfsad', 0, 1000, 1696316400000, 1696143600000, 20100),
(126, 'sdfsdf', 0, 1000, 1696316400000, 1696143600000, 21100),
(127, 'sfasdf', 1000, 0, 1696316400000, 1696143600000, 29200),
(128, 'xvczcxz', 0, 1000, 1696316400000, 1696143600000, 22100),
(129, 'sfdsdf', 1000, 0, 1696316400000, 1696143600000, 30200),
(130, 'fsdfsf', 0, 1000, 1696316400000, 1696143600000, 45200),
(131, 'sdfsadf', 0, 1000, 1696316400000, 1696143600000, 24100),
(132, 'fsdfsad', 1000, 0, 1696316400000, 1696143600000, 31200),
(133, 'sfsf', 1000, 0, 1696316400000, 1696143600000, 32200),
(134, 'sdfasfd', 0, 1000, 1696316400000, 1696143600000, 25100),
(135, 'fsdafas', 1000, 0, 1696316400000, 1696143600000, 33200),
(136, 'dfg', 1000, 0, 1696316400000, 1696143600000, 1000),
(137, 'sdfsdf', 1000, 0, 1696316400000, 1696143600000, 35200),
(138, 'dsfasdf', 0, 1000, 1696316400000, 1696143600000, 26100),
(139, 'jhghjghj', 800, 0, 1696402800000, 1696143600000, 36000),
(140, 'jghghk', 0, 900, 1696402800000, 1696143600000, 27000),
(141, 'ggdsgdsfg', 0, 1000, 1696402800000, 1696143600000, 28000),
(142, 'xvcxzcv', 1000, 0, 1696402800000, 1696143600000, 37000);

-- --------------------------------------------------------

--
-- Table structure for table `fee_table`
--

CREATE TABLE `fee_table` (
  `id` int(10) NOT NULL,
  `Admission_Number` varchar(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father_Name` varchar(30) NOT NULL,
  `Admitted_Class` varchar(10) NOT NULL,
  `Month` bigint(20) NOT NULL,
  `Monthly_Fee` int(10) NOT NULL,
  `Exam_Fee` int(11) NOT NULL,
  `Fine_Fee` int(11) NOT NULL,
  `Total_Fee` int(11) NOT NULL,
  `Monthly_Fee_Status` int(11) NOT NULL,
  `Exam_Fee_Status` int(11) NOT NULL,
  `Fine_Fee_Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_table`
--

INSERT INTO `fee_table` (`id`, `Admission_Number`, `Name`, `Father_Name`, `Admitted_Class`, `Month`, `Monthly_Fee`, `Exam_Fee`, `Fine_Fee`, `Total_Fee`, `Monthly_Fee_Status`, `Exam_Fee_Status`, `Fine_Fee_Status`) VALUES
(1079, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1080, '200', 'Fahad Shah', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1081, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1082, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1083, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1084, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1672560000000, 1000, 0, 0, 2000, 1, 0, 0),
(1085, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1086, '200', 'Fahad Shah', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1087, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1088, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1089, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1090, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1675238400000, 3000, 0, 0, 6000, 1, 0, 0),
(1091, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1092, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1093, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1094, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1095, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1096, '200', 'Fahad Shah', 'sdfsadf', '10th', 1685602800000, 1000, 0, 0, 0, 1, 0, 0),
(1097, '200', 'Fahad Shah', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 1, 0, 0),
(1098, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 1, 0, 0),
(1099, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 0, 0, 0),
(1100, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 1, 0, 0),
(1101, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 1, 0, 0),
(1102, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1680332400000, 1000, 0, 0, 0, 1, 0, 0),
(1103, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 0, 0, 0),
(1104, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 1, 0, 0),
(1105, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 1, 0, 0),
(1106, '200', 'Fahad Shah', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 1, 0, 0),
(1107, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 1, 0, 0),
(1108, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1701417600000, 1000, 0, 0, 0, 1, 0, 0),
(1109, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1110, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1111, '200', 'Fahad Shah', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1112, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1113, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1114, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1690873200000, 10000, 0, 0, 0, 1, 0, 0),
(1115, '100', 'Muhammad Fahim', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 1, 0, 0),
(1116, '200', 'Fahad Shah', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 1, 0, 0),
(1117, '300', 'Hassan Jamal', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 0, 0, 0),
(1118, '400', 'Muhammad Adil Khan', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 1, 0, 0),
(1119, '600', 'Zeeshan Ahamad', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 1, 0, 0),
(1120, '500', 'Junaid  Khan', 'sdfsadf', '10th', 1698822000000, 10000, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Admission_Number` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father_Name` varchar(30) NOT NULL,
  `Father_CNIC` bigint(13) NOT NULL,
  `Father_MOBILE` varchar(15) NOT NULL,
  `Father_Occupation` varchar(20) NOT NULL,
  `DOB` bigint(20) NOT NULL,
  `Student_Section` varchar(15) NOT NULL,
  `Student_Sub_Section` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Last_School` varchar(50) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Religion` varchar(10) NOT NULL,
  `Guardian_Name` varchar(20) NOT NULL,
  `Guardian_Relation` varchar(20) NOT NULL,
  `Guardian_CNIC` bigint(13) NOT NULL,
  `Guardian_Mobile` bigint(11) NOT NULL,
  `Admitted_Class` varchar(10) NOT NULL,
  `Admission_Fee` int(10) NOT NULL,
  `Admission_Date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Admission_Number`, `Name`, `Father_Name`, `Father_CNIC`, `Father_MOBILE`, `Father_Occupation`, `DOB`, `Student_Section`, `Student_Sub_Section`, `Address`, `Last_School`, `Gender`, `Religion`, `Guardian_Name`, `Guardian_Relation`, `Guardian_CNIC`, `Guardian_Mobile`, `Admitted_Class`, `Admission_Fee`, `Admission_Date`) VALUES
(100, 'Muhammad Fahim', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(200, 'Fahad Shah', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(223, 'sdfsadf', 'fsadfasf', 23423, '23423', 'sfsdf', 1683658800000, 'safsdf', 'sdfasdf', 'sfsdf', 'sdfasf', 'Male', 'Islam', 'sdfsadf', 'sdfasdf', 234234, 23423, '9th', 2222, 1694199600000),
(300, 'Hassan Jamal', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(400, 'Muhammad Adil Khan', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(500, 'Junaid  Khan', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(600, 'Zeeshan Ahamad', 'sdfsadf', 234234, '4234', 'fdsdsasfs', 1853218800000, 'sfaf', 'safsf', 'sfdasf', 'sfasf', 'Male', 'Islam', 'sdfsa', 'sfasf', 23423, 23423, '10th', 1000, 1695970800000),
(2342, 'sdfasdf', 'sdfasdf', 243234, '32423', 'sdfsad', 1680548400000, 'sdfsadf', 'sdfsadf', 'sdfas', 'sdfasdf', 'Male', 'Islam', 'sfasdfs', 'fsdfasdf', 234234, 234234, '8th', 2123, 1853175600000),
(23234, 'bjhjkjkjk', 'jkjkh', 8789789, '8978978', 'fsdfs', 1692259865595, 'sfsf', 'sdfsdf', 'sdfasdf', 'sdfsadf', 'Female', 'Islam', 'sdsdfdsadf', 'sdfsadfsadf', 234234, 23423, '6th', 2121, 1692259865595),
(2333332, 'sdfsdfd', 'fdssaf', 123213, '24234', 'sdfasdf', 1715713200000, 'asdafsdf', 'sfasf', 'safsaf', 'sdfsaf', 'Female', 'Islam', 'sdfasfa', 'sdfsf', 23423423, 2342424, 'Nursury', 2222, 1948215600000),
(2333333, 'fahim khan', 'gasdf', 2342, '23423', 'sfddf', 1696057200000, 'sdfas', 'sfdsadf', 'sfdsadf', 'sfdasdf', 'Male', 'Islam', 'sadfsadf', 'sdfasf', 23321, 123123, '8th', 111, 1696057200000),
(2333334, 'Muhammad ghaffae', 'gasdf', 2342, '23423', 'sfddf', 1696057200000, 'sdfas', 'sfdsadf', 'sfdsadf', 'sfdasdf', 'Male', 'Islam', 'sadfsadf', 'sdfasf', 23321, 123123, '5th', 111, 1696057200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_table`
--
ALTER TABLE `attendance_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_table`
--
ALTER TABLE `auth_table`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `dmc`
--
ALTER TABLE `dmc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_table`
--
ALTER TABLE `fee_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Admission_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_table`
--
ALTER TABLE `attendance_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `auth_table`
--
ALTER TABLE `auth_table`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dmc`
--
ALTER TABLE `dmc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `fee_table`
--
ALTER TABLE `fee_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1121;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Admission_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2333335;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
