-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2022 at 02:35 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `honer_db`
--

CREATE TABLE `honer_db` (
  `id` int(12) NOT NULL,
  `pet` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pname` varchar(64) NOT NULL,
  `sex` varchar(64) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `sp` varchar(64) NOT NULL,
  `mhistory` text,
  `hospital` varchar(64) DEFAULT NULL,
  `comment` text,
  `image` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `honer_db`
--

INSERT INTO `honer_db` (`id`, `pet`, `name`, `address`, `email`, `pname`, `sex`, `birth`, `sp`, `mhistory`, `hospital`, `comment`, `image`) VALUES
(2, NULL, 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'ケン', NULL, NULL, 'チワワ', NULL, '', 'あああ', NULL),
(3, NULL, 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'ケン', NULL, NULL, 'チワワ', NULL, '', 'あああ', NULL),
(4, NULL, 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'かい', NULL, NULL, '柴', NULL, '', 'リンゴ好き', NULL),
(5, '猫', 'あまだ', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'ken', 'オス', '2000-03-03', '柴', '子宮蓄膿症', '北海道大学動物病院', 'リンゴ', NULL),
(6, '猫', 'あまだ', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'アン', 'メス', '2010-02-02', 'ゴールデン', '子宮蓄膿症', '北海道大学動物病院', '好き', NULL),
(7, '犬', 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'アン', NULL, '2011-10-11', 'チワワ', '子宮蓄膿症', '北海道大学動物病院', '落ち着きがない。', NULL),
(8, '猫', 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'an', 'メス', '2022-02-01', 'チワワ', '子宮蓄膿症', '北海道大学動物病院', 'aa', NULL),
(9, '犬', 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'ken', 'オス', '2022-02-08', '柴', '肥満細胞腫', '北海道大学動物病院', 'ああ', NULL),
(10, '犬', 'amada', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'ken', 'オス', '2022-02-08', '柴', '肥満細胞腫', '北海道大学動物病院', 'ああ', NULL),
(11, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-02', '柴', '肥満細胞腫', '北海道大学動物病院', 'ｚ', NULL),
(12, NULL, 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-01', 'ゴールデン', '肥満細胞腫', '北海道大学動物病院', 'アップ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870393635352e746d70),
(13, NULL, 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-01', 'ゴールデン', '肥満細胞腫', '北海道大学動物病院', 'アップ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870334239412e746d70),
(14, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-01', 'ゴールデン', '肥満細胞腫', '北海道大学動物病院', 'アップ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870443433322e746d70),
(15, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-02', '柴', '肥満細胞腫', '北海道大学動物病院', 'ｘ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870463342432e746d70),
(16, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-02', '柴', '肥満細胞腫', '北海道大学動物病院', 'ｘ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870344234342e746d70),
(17, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-02', '柴', '肥満細胞腫', '北海道大学動物病院', 'ｘ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870313638302e746d70),
(18, '犬', 'Y.A', '北海道', 'hokudai-vet-29-02@eis.hokudai.ac.jp', 'けん', 'オス', '2022-02-02', '柴', '肥満細胞腫', '北海道大学動物病院', 'ｘ', 0x433a5c55736572735ce58c97e5a4a75c417070446174615c4c6f63616c5c54656d705c706870393234342e746d70);

-- --------------------------------------------------------

--
-- Table structure for table `pets_db`
--

CREATE TABLE `pets_db` (
  `id` int(12) NOT NULL,
  `content` varchar(64) NOT NULL,
  `hung` varchar(64) NOT NULL,
  `act` varchar(64) NOT NULL,
  `freq` varchar(64) NOT NULL,
  `pcomment` text,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pets_db`
--

INSERT INTO `pets_db` (`id`, `content`, `hung`, `act`, `freq`, `pcomment`, `indate`) VALUES
(1, 'ペットフート１', '少しある', '普通', '２回', 'aa', '2022-02-01 03:07:14'),
(2, 'a', '少しある', '普通', '２回', 'aa', '2022-02-01 03:07:52'),
(3, 'ペットフート１', '少しある', '普通', '２回', '食べても吐いてしまう', '2022-02-03 01:35:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `honer_db`
--
ALTER TABLE `honer_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets_db`
--
ALTER TABLE `pets_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `honer_db`
--
ALTER TABLE `honer_db`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pets_db`
--
ALTER TABLE `pets_db`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
