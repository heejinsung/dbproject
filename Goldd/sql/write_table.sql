CREATE TABLE `test`.`gold_wr` ( `GOLD_Wr_num` INT NULL AUTO_INCREMENT COMMENT '고유번호' ,
 `GOLD_wr_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이디' ,
  `GOLD_wr_title` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '제목' , `GOLD_wr_content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '내용' ,
  `GOLD_wr_view` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '조회수' ,
   PRIMARY KEY (`GOLD_wr_num`)
  ) ENGINE = InnoDB;   