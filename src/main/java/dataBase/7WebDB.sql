-- MySQL Script generated by MySQL Workbench
-- Mon Nov 28 14:02:03 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee` (
  `PersonID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Active` TINYINT NULL DEFAULT '0',
  `Email` VARCHAR(60) NULL DEFAULT NULL,
  `Phone` INT NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`PersonID`),
  UNIQUE INDEX `ID_UNIQUE` (`PersonID` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Skillset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Skillset` (
  `Skillset_ID` INT NOT NULL,
  `Skillset_Name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Skillset_ID`),
  UNIQUE INDEX `Skillset ID_UNIQUE` (`Skillset_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Employee_has_Skillset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_has_Skillset` (
  `People_PersonID` INT NOT NULL,
  `Skillset_Skillset ID` INT NOT NULL,
  PRIMARY KEY (`People_PersonID`, `Skillset_Skillset ID`),
  INDEX `fk_People_has_Skillset_Skillset1_idx` (`Skillset_Skillset ID` ASC) VISIBLE,
  INDEX `fk_People_has_Skillset_People1_idx` (`People_PersonID` ASC) VISIBLE,
  CONSTRAINT `fk_People_has_Skillset_People1`
    FOREIGN KEY (`People_PersonID`)
    REFERENCES `mydb`.`Employee` (`PersonID`),
  CONSTRAINT `fk_People_has_Skillset_Skillset1`
    FOREIGN KEY (`Skillset_Skillset ID`)
    REFERENCES `mydb`.`Skillset` (`Skillset_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Project` (
  `Project_ID` INT NOT NULL AUTO_INCREMENT,
  `Project_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Project_Status` VARCHAR(45) NULL DEFAULT 'OPEN',
  `Start_Date` DATE NULL DEFAULT NULL,
  `End_Date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Project_ID`),
  UNIQUE INDEX `Project ID_UNIQUE` (`Project_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Employee_on_Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_on_Project` (
  `People_PersonID` INT NOT NULL,
  `Project_Project_ID` INT NOT NULL,
  `Assignment_Start` DATE NULL DEFAULT NULL,
  `Assignment_End` DATE NULL DEFAULT NULL,
  `Is_Project_Manager` TINYINT NULL DEFAULT '0',
  `Role` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`People_PersonID`, `Project_Project_ID`),
  INDEX `fk_People_has_Project_Project1_idx` (`Project_Project_ID` ASC) VISIBLE,
  INDEX `fk_People_has_Project_People_idx` (`People_PersonID` ASC) VISIBLE,
  CONSTRAINT `fk_People_has_Project_People`
    FOREIGN KEY (`People_PersonID`)
    REFERENCES `mydb`.`Employee` (`PersonID`),
  CONSTRAINT `fk_People_has_Project_Project1`
    FOREIGN KEY (`Project_Project_ID`)
    REFERENCES `mydb`.`Project` (`Project_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
