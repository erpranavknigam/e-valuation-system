-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 12:46 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(4, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `studentid` varchar(20) COLLATE utf8_bin NOT NULL,
  `teacherid` varchar(20) COLLATE utf8_bin NOT NULL,
  `filename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`studentid`, `teacherid`, `filename`) VALUES
('1c713632', '19a8508803', '11CS10055.pdf'),
('4496e824', '2259d4a59a', 'a.pdf'),
('4496e824', '2115fda257', 'aa.pdf'),
('4496e824', '4aa6e60e77', 'ab.pdf'),
('4496e824', '0acb65cc66', 'ac.pdf'),
('4496e824', '5f2306baae', 'ad.pdf'),
('59cfcdc4', '20d67cc20c', 'c.pdf'),
('6b84a8a0', '4988665771', '_8fed662f50428a0b9efa89236eeb0974_Lesson-3.pdf'),
('6b84a8a0', '93aa3f4660', '_b2583e6195502e9349150098b5fa7b0a_geometry.pdf'),
('98c2781a', '2259d4a59a', 'adb.pdf'),
('98c2781a', '2115fda257', 'ae.pdf'),
('98c2781a', '4aa6e60e77', 'af.pdf'),
('98c2781a', '0acb65cc66', 'b.pdf'),
('98c2781a', '5f2306baae', 'c.pdf'),
('9a93ffb9', '2259d4a59a', 'u.pdf'),
('9a93ffb9', '2115fda257', 'v.pdf'),
('9a93ffb9', '4aa6e60e77', 'w.pdf'),
('9a93ffb9', '0acb65cc66', 'x.pdf'),
('9a93ffb9', '5f2306baae', 'y.pdf'),
('b441f2f4', '2259d4a59a', 'rec21-sol.pdf'),
('b441f2f4', '2115fda257', 's.pdf'),
('b441f2f4', '4aa6e60e77', 't.pdf'),
('b441f2f4', '0acb65cc66', 'tcs-prepinfo_1.pdf'),
('b441f2f4', '5f2306baae', 'u.pdf'),
('b67f244c', '2259d4a59a', 'B. Sc. (Honours)- Physics.pdf'),
('b67f244c', '19a8508803', 'CHSLE_2019_Notice 19.03.2020.pdf'),
('c8ce61d9', '4988665771', 'i.pdf'),
('c8ce61d9', '8ba4b3c6bf', 'j.pdf'),
('c8ce61d9', '503753a481', 'k.pdf'),
('c8ce61d9', '8fae822153', 'l.pdf'),
('c8ce61d9', 'd97b8d46c0', 'm.pdf'),
('cbc90563', '4988665771', 'd.pdf'),
('cbc90563', '8ba4b3c6bf', 'e.pdf'),
('cbc90563', '503753a481', 'f.pdf'),
('cbc90563', '8fae822153', 'g.pdf'),
('cbc90563', 'd97b8d46c0', 'h.pdf'),
('e9c518dd', '4988665771', 'n.pdf'),
('e9c518dd', '8ba4b3c6bf', 'o.pdf'),
('e9c518dd', '503753a481', 'p.pdf'),
('e9c518dd', '8fae822153', 'q.pdf'),
('e9c518dd', 'd97b8d46c0', 'r.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `studentid` varchar(30) COLLATE utf8_bin NOT NULL,
  `Hindi` int(3) DEFAULT NULL,
  `English` int(3) DEFAULT NULL,
  `Physics` int(3) DEFAULT NULL,
  `Math` int(3) DEFAULT NULL,
  `Chemistry` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`studentid`, `Hindi`, `English`, `Physics`, `Math`, `Chemistry`) VALUES
('1c713632', NULL, NULL, NULL, 84, NULL),
('4496e824', 90, 78, 92, 95, 89),
('59cfcdc4', NULL, NULL, NULL, 89, NULL),
('6b84a8a0', 80, NULL, NULL, 99, NULL),
('98c2781a', NULL, 81, 85, NULL, NULL),
('9a93ffb9', NULL, 90, 78, NULL, NULL),
('b441f2f4', NULL, 96, 61, NULL, NULL),
('b67f244c', NULL, NULL, NULL, 92, NULL),
('c8ce61d9', NULL, NULL, 86, NULL, NULL),
('cbc90563', NULL, NULL, 89, NULL, NULL),
('e9c518dd', NULL, NULL, 73, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `class` int(10) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL,
  `contact` varchar(20) COLLATE utf8_bin NOT NULL,
  `rollno` int(20) NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `hindi` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `english` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `math` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `physics` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `chemistry` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `name`, `class`, `image`, `city`, `contact`, `rollno`, `password`, `hindi`, `english`, `math`, `physics`, `chemistry`) VALUES
('1c713632', 'shivam', 12, 'three.jfif', 'sitapur', '7931648251', 55662, 'da141', '1298028938Final-Advt_7211.pdf', '5eaa906a9713e.pdf', '11CS10055.pdf', '2015-AM-Rajbhasha.pdf', '202000044_001.pdf'),
('4496e824', 'aditi', 12, 'eigth.jfif', 'sitapur', '7894561230', 12345, 'fd14c', 'a.pdf', 'aa.pdf', 'ab.pdf', 'ac.pdf', 'ad.pdf'),
('59cfcdc4', 'raj kishor', 12, 'seven.jfif', 'sitapur', '6263045230', 80800, '3e979', 'a.pdf', 'b.pdf', 'c.pdf', 'd.pdf', 'e.pdf'),
('6b84a8a0', 'pranavkant nigam', 12, 'Its me.jpeg', 'sitapur', '9632585566', 59111, 'a058e', '_8fed662f50428a0b9efa89236eeb0974_Lesson-3.pdf', '_42_ ULB WISE BPL FAMILIES IN CHHATTISGARH _AS PER 2007-08 B.pdf', '_b2583e6195502e9349150098b5fa7b0a_geometry.pdf', '1a76589db599fbc594b0542a35d99615.pdf', '2015-AM-Rajbhasha.pdf'),
('98c2781a', 'ramesh', 12, 'eleven.jfif', 'ambikapur', '7894625632', 88945, 'a4aca', 'adb.pdf', 'ae.pdf', 'af.pdf', 'b.pdf', 'c.pdf'),
('9a93ffb9', 'john', 12, 'nine.jfif', 'pendra', '7539518526', 63014, 'd8b2b', 'u.pdf', 'v.pdf', 'w.pdf', 'x.pdf', 'y.pdf'),
('b441f2f4', 'aarti', 12, 'fourteen.jfif', 'rajnandgaon', '8574120325', 23145, '02935', 'rec21-sol.pdf', 's.pdf', 't.pdf', 'tcs-prepinfo_1.pdf', 'u.pdf'),
('b67f244c', 'avinash', 12, 'siz.jfif', 'bilaspur', '9137468255', 453321, '36b05', 'B. Sc. (Honours)- Physics.pdf', 'Chhattishgarh Figures at a glance.pdf', 'CHSLE_2019_Notice 19.03.2020.pdf', '202000044_001.pdf', 'MTech-lower-higher-SCORE-2018.pdf'),
('c8ce61d9', 'jay', 12, 'five.jfif', 'durg', '8541256321', 85236, 'bdc38', 'i.pdf', 'j.pdf', 'k.pdf', 'l.pdf', 'm.pdf'),
('cbc90563', 'shakshi', 12, 'fifteen.jfif', 'bilaspur', '8523697410', 89562, 'c2080', 'd.pdf', 'e.pdf', 'f.pdf', 'g.pdf', 'h.pdf'),
('e9c518dd', 'yashika', 12, 'four.jfif', 'sitapur', '7895236521', 78945, '9fd07', 'n.pdf', 'o.pdf', 'p.pdf', 'q.pdf', 'r.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` varchar(20) COLLATE utf8_bin NOT NULL,
  `teachername` varchar(50) COLLATE utf8_bin NOT NULL,
  `subject` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(13) COLLATE utf8_bin NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherid`, `teachername`, `subject`, `password`, `mobile`, `city`, `image`) VALUES
('0acb65cc66', 'imtijaay', 'physics', '8f180', '8956475845', 'ambikapur', 'fifth.jfif'),
('19a8508803', 'jay shankar gupta', 'math', 'ed21e', '8513946752', 'sitapur', 'two.jfif'),
('20d67cc20c', 'ramkumar', 'math', '67ec0', '7023659002', 'lakhanpur', 'twelve.jfif'),
('2115fda257', 'sushil', 'english', 'd22c9', '5623985615', 'pendra', 'nine.jfif'),
('2259d4a59a', 'ashish gupta', 'hindi', 'b957f', '7896541526', 'bilaspur', 'ten.jfif'),
('4988665771', 'prabhat', 'hindi', 'f0720', '7852364521', 'bilaspur', 'fourth.jfif'),
('4aa6e60e77', 'om prakash', 'math', '831aa', '8956233265', 'sitapur', 'eight.jfif'),
('503753a481', 'mukesh', 'math', '46e34', '7896541230', 'durg', 'second.jfif'),
('5f2306baae', 'hari om', 'chemistry', '61813', '7896541230', 'sitapur', 'seventh.jfif'),
('8ba4b3c6bf', 'uma shankar', 'english', '224a5', '8523697410', 'bhilai', 'third.jfif'),
('8fae822153', 'wasim akhtar', 'physics', '34ee6', '8956233265', 'ambikapur', 'sixth.jfif'),
('93aa3f4660', 'pranavkant nigam', 'math', 'd22f3', '8731652965', 'hydarabad', 'pp.jpg'),
('d97b8d46c0', 'rajkumar', 'chemistry', 'cf904', '7896541236', 'raipur', 'first.jfif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`studentid`,`filename`),
  ADD UNIQUE KEY `studentid` (`studentid`,`filename`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `UC_Person` (`rollno`),
  ADD UNIQUE KEY `studentid` (`studentid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherid`),
  ADD UNIQUE KEY `teacherid` (`teacherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
