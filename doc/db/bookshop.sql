-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema bookshop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bookshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bookshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bookshop` ;

-- -----------------------------------------------------
-- Table `bookshop`.`catalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookshop`.`catalog` (
  `catalogid` INT NOT NULL,
  `catalogname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`catalogid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookshop`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookshop`.`book` (
  `bookid` INT NOT NULL,
  `catalogid` INT NOT NULL,
  `bookname` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `picture` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`bookid`),
  INDEX `fk_book_catalog_idx` (`catalogid` ASC),
  CONSTRAINT `fk_book_catalog`
    FOREIGN KEY (`catalogid`)
    REFERENCES `bookshop`.`catalog` (`catalogid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookshop`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookshop`.`user` (
  `userid` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `sex` VARCHAR(4) NULL,
  `age` INT NULL,
  PRIMARY KEY (`userid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookshop`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookshop`.`orders` (
  `orderid` INT NOT NULL,
  `userid` INT NOT NULL,
  `orderdate` TIMESTAMP(6) NOT NULL,
  PRIMARY KEY (`orderid`),
  INDEX `fk_orders_user1_idx` (`userid` ASC),
  CONSTRAINT `fk_orders_user1`
    FOREIGN KEY (`userid`)
    REFERENCES `bookshop`.`user` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookshop`.`orderitem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookshop`.`orderitem` (
  `orderitemid` INT NOT NULL,
  `bookid` INT NOT NULL,
  `orderid` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`orderitemid`),
  INDEX `fk_orderitem_orders1_idx` (`orderid` ASC),
  INDEX `fk_orderitem_book1_idx` (`bookid` ASC),
  CONSTRAINT `fk_orderitem_orders1`
    FOREIGN KEY (`orderid`)
    REFERENCES `bookshop`.`orders` (`orderid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_book1`
    FOREIGN KEY (`bookid`)
    REFERENCES `bookshop`.`book` (`bookid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `bookshop`.`catalog`
-- -----------------------------------------------------
START TRANSACTION;
USE `bookshop`;
INSERT INTO `bookshop`.`catalog` (`catalogid`, `catalogname`) VALUES (1, 'C');
INSERT INTO `bookshop`.`catalog` (`catalogid`, `catalogname`) VALUES (2, 'Java');
INSERT INTO `bookshop`.`catalog` (`catalogid`, `catalogname`) VALUES (3, 'Database');
INSERT INTO `bookshop`.`catalog` (`catalogid`, `catalogname`) VALUES (4, 'Web Programming');

COMMIT;


-- -----------------------------------------------------
-- Data for table `bookshop`.`book`
-- -----------------------------------------------------
START TRANSACTION;
USE `bookshop`;
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (1, 4, 'ASP.NET3.5 in action', 38, 'ASP.NET3.5.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (2, 1, 'C# in action', 43, 'CSharp.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (3, 1, 'C in action', 36, 'C.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (4, 1, 'C++ in action', 40, 'C++.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (5, 4, 'Flex4 in action', 45, 'Flex4.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (6, 2, 'Java EE basics', 35, 'JavaEEBasic.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (7, 2, 'Java EE in action', 39, 'JavaEE.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (8, 2, 'Fundamental of Java', 50, 'Java.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (9, 4, 'JSP programming', 30, 'JSP.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (10, 3, 'MySQL in action', 37, 'MySQL.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (11, 3, 'Oracle in action', 29, 'Oracle.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (12, 4, 'PHP in action', 35, 'PHP.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (13, 3, 'SQL Server ', 25, 'SQLServer.jpg');
INSERT INTO `bookshop`.`book` (`bookid`, `catalogid`, `bookname`, `price`, `picture`) VALUES (14, 1, 'Visual C++', 25, 'VC++.jpg');

COMMIT;

