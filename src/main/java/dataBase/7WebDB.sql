
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee` (
  `Person ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Active` TINYINT NULL DEFAULT 0,
  `Email` VARCHAR(60) NULL,
  `Phone` INT NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`Person ID`),
  UNIQUE INDEX `ID_UNIQUE` (`Person ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Project` (
  `Project_ID` INT NOT NULL,
  `Project_Name` VARCHAR(45) NULL,
  `Project_Status` VARCHAR(45) NULL DEFAULT 'OPEN',
  `Start_Date` DATE NULL,
  `End_Date` DATE NULL,
  PRIMARY KEY (`Project_ID`),
  UNIQUE INDEX `Project ID_UNIQUE` (`Project_ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Employee_on_Project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_on_Project` (
  `People_Person ID` INT NOT NULL,
  `Project_Project ID` INT NOT NULL,
  `Assignment_Start` DATE NULL,
  `Assignment_End` DATE NULL,
  `Is_Project_Manager` TINYINT NULL DEFAULT 0,
  `Role` VARCHAR(45) NULL,
  PRIMARY KEY (`People_Person ID`, `Project_Project ID`),
  INDEX `fk_People_has_Project_Project1_idx` (`Project_Project ID` ASC) VISIBLE,
  INDEX `fk_People_has_Project_People_idx` (`People_Person ID` ASC) VISIBLE,
  CONSTRAINT `fk_People_has_Project_People`
    FOREIGN KEY (`People_Person ID`)
    REFERENCES `mydb`.`Employee` (`Person ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_People_has_Project_Project1`
    FOREIGN KEY (`Project_Project ID`)
    REFERENCES `mydb`.`Project` (`Project_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Skillset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Skillset` (
  `Skillset_ID` INT NOT NULL,
  `Skillset_Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Skillset_ID`),
  UNIQUE INDEX `Skillset ID_UNIQUE` (`Skillset_ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Employee_has_Skillset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee_has_Skillset` (
  `People_Person ID` INT NOT NULL,
  `Skillset_Skillset ID` INT NOT NULL,
  PRIMARY KEY (`People_Person ID`, `Skillset_Skillset ID`),
  INDEX `fk_People_has_Skillset_Skillset1_idx` (`Skillset_Skillset ID` ASC) VISIBLE,
  INDEX `fk_People_has_Skillset_People1_idx` (`People_Person ID` ASC) VISIBLE,
  CONSTRAINT `fk_People_has_Skillset_People1`
    FOREIGN KEY (`People_Person ID`)
    REFERENCES `mydb`.`Employee` (`Person ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_People_has_Skillset_Skillset1`
    FOREIGN KEY (`Skillset_Skillset ID`)
    REFERENCES `mydb`.`Skillset` (`Skillset_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
