-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-01-29 02:17
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
-- 테이블 구조 `gold_app`
--

CREATE TABLE `gold_app` (
  `GOLD_APP_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_APP_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '상품이름',
  `GOLD_APP_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
  `GOLD_APP_des` text CHARACTER SET utf8 NOT NULL COMMENT '상품설명',
  `GOLD_APP_img` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '상세페이지 이미지',
  `GOLD_APP_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일 이미지',
  `GOLD_APP_cli` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '고객사 정보',
  `GOLD_APP_reg` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '등록일'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_app`
--

INSERT INTO `gold_app` (`GOLD_APP_num`, `GOLD_APP_tit`, `GOLD_APP_ser`, `GOLD_APP_des`, `GOLD_APP_img`, `GOLD_APP_thumb`, `GOLD_APP_cli`, `GOLD_APP_reg`) VALUES
(2, 'Tesla Model X', '20210301', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\n<br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap <br />\r\n<br />\r\ninto electronic typesetting, remaining essentially unchanged.', 'app_main_001.png', 'app_001.png', 'Tesla', '2021-01-19'),
(3, 'Portfolio', '20210302', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. <br />\r\n<br />\r\nRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, <br />\r\n<br />\r\nand going through the cites of the word in classical literature, discovered the undoubtable source.', 'app_main_002.jpg', 'app_002.jpg', 'Unknown', '2021-01-19'),
(8, 'Plant Store', '20210303', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a <br />\r\n<br />\r\nmore-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop <br />\r\n<br />\r\npublishing packages and web page editors', 'app_main_003.png', 'app_003.png', 'Florida', '2021-01-19'),
(9, 'Beranda', '20210304', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words <br />\r\n<br />\r\nwhich don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing <br />\r\n<br />\r\nhidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_004.png', 'app_004.png', 'Mitchell', '2021-01-20'),
(10, 'Jenny Mazursky', '20210305', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<br />\r\n<br />\r\n when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, <br />\r\n<br />\r\nbut also the leap into electronic typesetting, remaining essentially unchanged.', 'app_main_005.png', 'app_005.png', 'Jenny', '2021-01-20'),
(11, 'Plants App', '20210306', 'ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, <br />\r\n<br />\r\nmaking it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the <br />\r\n<br />\r\nmore obscure Latin words, consectetur, ', 'app_main_006.png', 'app_006.png', 'Kaily Corp.', '2021-01-20'),
(12, 'Dimest', '20210307', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from <br />\r\n<br />\r\n\"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, <br />\r\n<br />\r\naccompanied by English', 'app_main_007.png', 'app_007.png', 'Dimest Company', '2021-01-20'),
(13, 'Medicine Reminder', '20210308', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words <br />\r\n<br />\r\nwhich don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing <br />\r\n<br />\r\nhidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,', 'app_main_008.jpg', 'app_008.jpg', 'Hanyang Hosp.', '2021-01-20');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_app`
--
ALTER TABLE `gold_app`
  ADD PRIMARY KEY (`GOLD_APP_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_app`
--
ALTER TABLE `gold_app`
  MODIFY `GOLD_APP_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
