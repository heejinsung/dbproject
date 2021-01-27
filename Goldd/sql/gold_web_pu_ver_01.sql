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
-- 테이블 구조 `gold_web`
--

CREATE TABLE `gold_web` (
  `GOLD_WEB_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_WEB_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '제목',
  `GOLD_WEB_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
  `GOLD_WEB_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
  `GOLD_WEB_img` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진',
  `GOLD_WEB_mimg` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '모바일사진',
  `GOLD_WEB_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일 사진',
  `GOLD_WEB_cli` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '납품처',
  `GOLD_WEB_reg` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '등록일',
  `GOLD_WEB_dom` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '도메인주소'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_web`
--

INSERT INTO `gold_web` (`GOLD_WEB_num`, `GOLD_WEB_tit`, `GOLD_WEB_ser`, `GOLD_WEB_des`, `GOLD_WEB_img`, `GOLD_WEB_mimg`, `GOLD_WEB_thumb`, `GOLD_WEB_cli`, `GOLD_WEB_reg`, `GOLD_WEB_dom`) VALUES
(3, 'house', 'GODEWEB210101', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. <br />\r\nRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage,<br />\r\n<br />\r\n and going through the cites of the word in classical literature, discovered the undoubtable source.', 'web_01.png', 'web_mobile_01.png', 'web_thumb_01.png', 'house company', '2021-01-13', 'http://www.home.com'),
(4, 'Angel ', 'GODEWEB210102', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.<br />\r\n<br />\r\n Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many <br />\r\nweb sites still in their infancy.', 'web_02.png', 'web_mobile_02.png', 'web_thumb_02.png', 'angel beauty', '2021-01-13', 'http://www.angel.com'),
(5, 'POVEPIA', 'GODEWEB210103', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. <br />\r\nRichard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, <br />\r\n<br />\r\nand going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" <br />\r\n(The Extremes of Good and Evil) by Cicero, written in', 'web_03.png', 'web_mobile_03.png', 'web_thumb_03.png', 'POVEPIA company', '2021-01-13', 'http://www.povelia.com'),
(7, 'Financial Bureau', 'GODEWEB210105', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. <br />\r\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,', 'web_05.png', 'web_mobile_05.png', 'web_thumb_05.png', 'Bureau', '2021-01-13', 'http://www.bureau.com'),
(8, 'INNOMERCE', 'GODEWEB210106', 'he standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced <br />\r\nin their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'web_06.png', 'web_mobile_06.png', 'web_thumb_06.png', 'innomerce company', '2021-01-13', 'http://www.innomerce.com'),
(9, 'mystudio', 'GOLDWEB210107', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. <br /><br />\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'web_04.png', 'web_mobile_04.png', 'web_thumb_04.png', 'artcompany', '2021-01-14', 'http://www.art.com');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_web`
--
ALTER TABLE `gold_web`
  ADD PRIMARY KEY (`GOLD_WEB_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_web`
--
ALTER TABLE `gold_web`
  MODIFY `GOLD_WEB_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
