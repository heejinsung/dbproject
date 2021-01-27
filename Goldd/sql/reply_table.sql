CREATE TABLE `test`.`gold_reply` ( `GOLD_re_num` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호' ,
 `GOLD_re_id` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '답글 작성자' ,
 `GOLD_re_content` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '답글 내용' , 
 `GOLD_re_wr_num` INT NOT NULL COMMENT '원 글 번호' ,
 PRIMARY KEY (`GOLD_re_num`)
 ) ENGINE = InnoDB;  