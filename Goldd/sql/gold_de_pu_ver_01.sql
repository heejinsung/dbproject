-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-01-15 08:08
-- 서버 버전: 10.4.16-MariaDB
-- PHP 버전: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `test`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_de`
--

CREATE TABLE `gold_de` (
  `GOLD_DE_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_DE_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '제목',
  `GOLD_DE_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '일련번호',
  `GOLD_DE_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
  `GOLD_DE_img1` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진1',
  `GOLD_DE_img2` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진2',
  `GOLD_DE_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일이미지',
  `GOLD_DE_cli` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '납품처',
  `GOLD_DE_reg` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '등록일'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_de`
--

INSERT INTO `gold_de` (`GOLD_DE_num`, `GOLD_DE_tit`, `GOLD_DE_ser`, `GOLD_DE_des`, `GOLD_DE_img1`, `GOLD_DE_img2`, `GOLD_DE_thumb`, `GOLD_DE_cli`, `GOLD_DE_reg`) VALUES
(2, 'Gold Attalli Design', 'GODE210101', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,<br />\r\n<br />\r\nbut also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the <br />\r\n<br />\r\nrelease of Letraset sheets containing Lorem Ipsum passages, and more recently with', 'design_01_01.jpg', 'design_01_02.jpg', 'design_thumb_01.jpg', 'Samsung SDS', '2021-01-06'),
(3, 'MIT Technology', 'GODE210102', 'Editorial illustrations for MIT Technology magazine on How the AI cloud could produce the richest companies ever by Peter Burrows<br />\r\n<br />\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. <br />\r\n<br />\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'design_02_01.jpg', 'design_02_02.jpg', 'design_thumb_02.jpg', 'Samsung SDS', '2021-01-06'),
(5, 'Down The Rabbit Hole', 'GODE210103', 'The 2018 Campaign for Down The Rabbit Hole festival, in close collaboration with Jurriaan Hos. Sound design by Wilco Alkema.<br />\r\n<br />\r\n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,<br />\r\n and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_03_01.jpg', 'design_03_02.jpg', 'design_thumb_03.jpg', 'Samsung SDS', '2021-01-06'),
(6, 'Diptyque', 'GODE210104', 'French perfume and candle makers Diptyque asked me to create a colorful illustration for the 50th anniversary campaign.<br />\r\n<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. <br />\r\n<br />\r\nRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', 'design_04_01.jpg', 'design_04_02.jpg', 'design_thumb_04.jpg', 'Samsung SDS', '2021-01-06'),
(7, 'Endlessness', 'GODE210105', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. <br />\r\n<br />\r\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'design_05_01.jpg', 'design_05_02.jpg', 'design_thumb_05.jpg', 'Samsung SDS', '2021-01-06'),
(8, 'Dropbox', 'GODE210106', 'I partnered with 72&Sunny to create an image paired with an Aydin Buyuktas photograph for the recent rebrand of Dropbox.<br />\r\n<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" <br />\r\n<br />\r\nby Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'design_06_01.jpg', 'design_06_02.jpg', 'design_thumb_06.jpg', 'Samsung SDS', '2021-01-06'),
(9, 'Mohawk Maker Quarter', 'GODE210107', 'Mohawk Maker Quarterly Issue #13: Disruption. Algorithm printing created 20.000 unique art prints out of my design.<br />\r\nIt uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. <br />\r\n<br />\r\nThe generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'design_07_01.png', 'design_07_02.jpg', 'design_thumb_01.png', 'Samsung SDS', '2021-01-06'),
(10, 'The Rabbit Hole 2017', 'GODE210108', 'Art Direction and Illustration for the 2017 Down The Rabbit Hole festival campaign. Animation by Jurriaan Hos.<br />\r\n<br />\r\nLorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, <br />\r\nwritten in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.', 'design_08_01.jpg', 'design_08_02jpg.jpg', 'design_thumb_08.jpg', 'Samsung SDS', '2021-01-06'),
(11, 'Sleeves', 'GODE210109', 'Illustration mix up of the sleeves of some of my favorite records, Rock and Park project, France. 2010<br />\r\n<br />\r\n All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.<br />\r\n<br />\r\n It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'design_09_01.jpg', 'design_09_02.jpg', 'design_thumb_09.jpg', 'Samsung SDS', '2021-01-06'),
(12, 'Beautiful Decay', 'GODE210110', 'Illustration for Beautiful Decay magazine, \"the underdog\". 2010<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\n<br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'design_10_01.jpg', 'design_10_02.jpg', 'design_thumb_10.jpg', 'Samsung SDS', '2021-01-06'),
(15, 'Bedford Pages', 'GODE210111', 'Pattern design for Bedford Pages.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\n<br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 'design_11_01.jpg', 'design_11_02.jpg', 'design_thumb_11.jpg', 'Samsung SDS', '2021-01-06'),
(16, 'Marker drawings', 'GODE210112', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. <br />\r\n<br />\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,<br />\r\n as opposed to using \'Content here, content here\', making it look like readable English. ', 'design_12_01.jpg', 'design_12_02.jpg', 'design_thumb_12.jpg', 'Samsung SDS', '2021-01-06'),
(18, 'text Art', 'GODE210113', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, <br />\r\nbut also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\n<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing', 'design_06_01.jpg', 'design_07_01.png', 'design_thumb_06.jpg', 'Samsung SDS', '2021-01-13');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_de`
--
ALTER TABLE `gold_de`
  ADD PRIMARY KEY (`GOLD_DE_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_de`
--
ALTER TABLE `gold_de`
  MODIFY `GOLD_DE_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
