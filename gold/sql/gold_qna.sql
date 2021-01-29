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
-- 테이블 구조 `gold_qna`
--

CREATE TABLE `gold_qna` (
  `GOLD_QNA_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_QNA_id` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '글쓴이',
  `GOLD_QNA_tit` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '글제목',
  `GOLD_QNA_con` text CHARACTER SET utf8 NOT NULL COMMENT '내용',
  `GOLD_QNA_reg` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '등록일',
  `GOLD_QNA_hit` int(11) NOT NULL COMMENT '조회수'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_qna`
--

INSERT INTO `gold_qna` (`GOLD_QNA_num`, `GOLD_QNA_id`, `GOLD_QNA_tit`, `GOLD_QNA_con`, `GOLD_QNA_reg`, `GOLD_QNA_hit`) VALUES
(1, 'marshall36', 'aa', 'bb', '2021-01-25', 0),
(2, 'marshall36', 'bb', 'bb', '2021-01-25', 0),
(3, 'marshall36', 'cc', 'cc', '2021-01-25', 0),
(4, 'marshall36', 'dd', 'dd', '2021-01-25', 0),
(5, 'marshall36', 'ee', 'ee', '2021-01-25', 0),
(6, 'marshall36', 'ff', 'ff', '2021-01-25', 0),
(7, 'marshall36', 'gg', 'gg', '2021-01-25', 0),
(8, 'marshall36', 'hh', 'hh', '2021-01-25', 0),
(9, 'marshall36', 'ii', 'ii', '2021-01-25', 2),
(10, 'marshall36', 'jj', 'jj', '2021-01-25', 0),
(11, 'marshall36', 'sdfg', 'ssdfg', '2021-01-28', 3),
(12, 'marshall36', 'as', 'as', '2021-01-28', 70),
(13, 'marshall36', '첫 번째 게시글 입니다.', '중국 외교부에 따르면 시 주석은 25일(현지시간) 세계경제포럼(WEF·다보스 포럼) 사전 화상회의에 참석해 한 연설에서 다자주의를 역설하며 강한 어조로 신냉전은 모두의 이익에 반한다고 주장했다.<br />\r\n<br />\r\n시 주석은 \"다자주의는 협의를 통해 국제 문제를 다루고 모두가 협력해 세계의 미래를 결정하는 것\"이라면서 \"작은 집단을 구축하거나 신냉전을 시작하며 다른 이들을 거부·위협하고, 고의적으로 디커플링(탈동조화)를 도입하며 와해와 제재를 추진하며, 고립과 소외를 조성한다면 세계를 분열과 대립으로 몰아갈 뿐\"이라고 말했다.', '2021-01-26', 71);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_qna`
--
ALTER TABLE `gold_qna`
  ADD PRIMARY KEY (`GOLD_QNA_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_qna`
--
ALTER TABLE `gold_qna`
  MODIFY `GOLD_QNA_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
