DROP SCHEMA IF EXISTS ssafy_ws;
CREATE SCHEMA IF NOT EXISTS `ssafy_ws` DEFAULT CHARACTER SET utf8 ;
USE `ssafy_ws` ;

-- -----------------------------------------------------
-- Table `book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book` (
  `isbn` CHAR(12) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `author` VARCHAR(50) NOT NULL,
  `price` INT NOT NULL,
  `content` TEXT NULL,
  `img` VARCHAR(100) NULL,
  PRIMARY KEY (`isbn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user` (
  `id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(100) NOT NULL,
  `rec_id` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_user1_idx` (`rec_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_user1`
    FOREIGN KEY (`rec_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comment` (
  `isbn` CHAR(12) NOT NULL,
  `id` VARCHAR(50) NOT NULL,
  `rating` INT default 5,
  `comment` VARCHAR(1000) NULL,
  constraint check( `rating` >0 and `rating`<=5),
  PRIMARY KEY (`isbn`, `id`),
  INDEX `fk_comment_user1_idx` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_comment_book`
    FOREIGN KEY (`isbn`)
    REFERENCES `book` (`isbn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into user values('ssafy', '김싸피','1234', null);
insert into book values("111-222-1111", "안락한 싸피생활","일무국", 800,"안락한 싸피 생활 가이드","표지경로 01"),
					   ("111-222-2222", "즐거운 싸피생활","일무국", 900,"즐거운 싸피 생활 가이드","표지경로 02"),
                       ("111-222-3333", "행복한 싸피생활","일무국", 1200,"행복한 싸피 생활 지침서","표지경로 03"),
                       ("111-222-4444", "중요한 싸피생활","일무국", 9400,"중요한 싸피 생활 지침서","표지경로 04"),
                       ("111-222-5555", "유용한 싸피생활","일무국", 3520,"유용한 싸피 생활 지침서","표지경로 05"),
                       ("111-222-6666", "필요한 싸피생활","이무국",8500,"필요한 싸피 생활 지침서","표지경로 06"),
                       ("111-222-7777", "신나는 싸피생활","이무국", 450,"신나는 싸피 생활 지침서","표지경로 07"),
                       ("111-222-8888", "유익한 싸피생활","이무국", 850,"유익한 싸피 생활 지침서","표지경로 08"),
                       ("111-222-9999", "재밋는 싸피생활","이무국", 450,"재밋는 싸피 생활 지침서","표지경로 09"),
                       ("111-222-0000", "안전한 싸피생활","이무국", 780,"안전한 싸피 생활 지침서","표지경로 10"),                       
                       ("111-000-0001", "도서명 11","삼무국", 1500,"도서 내용 11","표지경로 11"),
                       ("111-000-0002", "도서명 12","삼무국", 2000,"도서 내용 12","표지경로 12"),
                       ("111-000-0003", "도서명 13","삼무국", 3000,"도서 내용 13","표지경로 13"),
                       ("111-000-0004", "도서명 14","삼무국", 3500,"도서 내용 14","표지경로 14"),
                       ("111-000-0005", "도서명 15","삼무국", 2500,"도서 내용 15","표지경로 15"),
                       ("111-000-0006", "도서명 16","사무국", 1800,"도서 내용 16","표지경로 16"),
                       ("111-000-0007", "도서명 17","사무국", 1900,"도서 내용 17","표지경로 17"),
                       ("111-000-0008", "도서명 18","사무국", 3500,"도서 내용 18","표지경로 18"),
                       ("111-000-0009", "도서명 19","사무국", 4700,"도서 내용 19","표지경로 19"),
                       ("111-000-0010", "도서명 20","사무국", 3300,"도서 내용 20","표지경로 20");  
commit;