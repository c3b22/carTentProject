-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hr
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`AdminService`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AdminService` (
  `idAdminService` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `PhoneNumber` VARCHAR(10) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `NationalID` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`idAdminService`),
  UNIQUE INDEX `NationalID_UNIQUE` (`NationalID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Buyer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Buyer` (
  `BuyerID` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `DateOfBirth` DATE NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `PhoneNumber` VARCHAR(10) NOT NULL,
  `NationalID` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`BuyerID`),
  UNIQUE INDEX `NationalID_UNIQUE` (`NationalID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`ColorCar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ColorCar` (
  `idColorCar` INT NOT NULL,
  `ColorName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColorCar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`PreviousOwner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PreviousOwner` (
  `OwnerID` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `PhoneNumber` VARCHAR(10) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `PreviousOwnerLog` VARCHAR(45) NOT NULL,
  `NationalID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`OwnerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`BrandOwner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BrandOwner` (
  `idBrandOwner` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `PhoneNumber` VARCHAR(10) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `NationalID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idBrandOwner`),
  UNIQUE INDEX `NationalID_UNIQUE` (`NationalID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`RegistrationDocuments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RegistrationDocuments` (
  `idRD` INT NOT NULL,
  `RegistrationDate` DATE NOT NULL,
  `RegistDate` DATE NOT NULL,
  `path` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRD`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`BrandTents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BrandTents` (
  `idBrandTents` INT NOT NULL,
  `BrandName` VARCHAR(45) NOT NULL,
  `idBrandOwner` INT NOT NULL,
  `idAdminService` INT NOT NULL,
  `idRD` INT NOT NULL,
  PRIMARY KEY (`idBrandTents`),
  INDEX `fk_BrandTents_BrandOwner1_idx` (`idBrandOwner` ASC) VISIBLE,
  INDEX `fk_BrandTents_AdminService1_idx` (`idAdminService` ASC) VISIBLE,
  INDEX `fk_BrandTents_RegistrationDocuments1_idx` (`idRD` ASC) VISIBLE,
  CONSTRAINT `fk_BrandTents_AdminService1`
    FOREIGN KEY (`idAdminService`)
    REFERENCES `mydb`.`AdminService` (`idAdminService`),
  CONSTRAINT `fk_BrandTents_BrandOwner1`
    FOREIGN KEY (`idBrandOwner`)
    REFERENCES `mydb`.`BrandOwner` (`idBrandOwner`),
  CONSTRAINT `fk_BrandTents_RegistrationDocuments1`
    FOREIGN KEY (`idRD`)
    REFERENCES `mydb`.`RegistrationDocuments` (`idRD`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`BranchTents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BranchTents` (
  `idBranchTent` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `idBrandTents` INT NOT NULL,
  PRIMARY KEY (`idBranchTent`),
  INDEX `fk_BranchTents_BrandTents1_idx` (`idBrandTents` ASC) VISIBLE,
  CONSTRAINT `fk_BranchTents_BrandTents1`
    FOREIGN KEY (`idBrandTents`)
    REFERENCES `mydb`.`BrandTents` (`idBrandTents`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Car` (
  `IdCar` INT NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  `cost` INT NOT NULL,
  `SellPrice` INT NOT NULL,
  `status` ENUM('sold', 'InProcess', 'NotSold') NOT NULL,
  `kilometer` INT NOT NULL,
  `CrashLog` VARCHAR(100) NOT NULL,
  `OilChangePerKilometer` INT NOT NULL,
  `idBranchTent` INT NOT NULL,
  `OwnerID` INT NOT NULL,
  `Details` VARCHAR(200) NOT NULL,
  `CarRegistration` VARCHAR(15) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `ChassisNumber` VARCHAR(45) NOT NULL,
  `buyDate` DATE NOT NULL,
  `VRB` VARCHAR(45) NOT NULL,
  `idColorCar` INT NOT NULL,
  PRIMARY KEY (`IdCar`),
  UNIQUE INDEX `ChassisNumber_UNIQUE` (`ChassisNumber` ASC) VISIBLE,
  INDEX `fk_Car_VehicleTents1_idx` (`idBranchTent` ASC) VISIBLE,
  INDEX `fk_Car_PreviousOwner1_idx` (`OwnerID` ASC) VISIBLE,
  INDEX `fk_Car_ColorCar1_idx` (`idColorCar` ASC) VISIBLE,
  CONSTRAINT `fk_Car_ColorCar1`
    FOREIGN KEY (`idColorCar`)
    REFERENCES `mydb`.`ColorCar` (`idColorCar`),
  CONSTRAINT `fk_Car_PreviousOwner1`
    FOREIGN KEY (`OwnerID`)
    REFERENCES `mydb`.`PreviousOwner` (`OwnerID`),
  CONSTRAINT `fk_Car_VehicleTents1`
    FOREIGN KEY (`idBranchTent`)
    REFERENCES `mydb`.`BranchTents` (`idBranchTent`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`BookingCar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BookingCar` (
  `BookingCarID` INT NOT NULL,
  `earnestMoney` INT NOT NULL,
  `BookingDate` DATE NOT NULL,
  `BuyerID` INT NOT NULL,
  `IdCar` INT NOT NULL,
  PRIMARY KEY (`BookingCarID`),
  INDEX `fk_BookingCar_Buyer1_idx` (`BuyerID` ASC) VISIBLE,
  INDEX `fk_BookingCar_Car1_idx` (`IdCar` ASC) VISIBLE,
  CONSTRAINT `fk_BookingCar_Buyer1`
    FOREIGN KEY (`BuyerID`)
    REFERENCES `mydb`.`Buyer` (`BuyerID`),
  CONSTRAINT `fk_BookingCar_Car1`
    FOREIGN KEY (`IdCar`)
    REFERENCES `mydb`.`Car` (`IdCar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Staff` (
  `idStaff` INT NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `gender` ENUM('F', 'M', 'O') NOT NULL,
  `DateOfBirth` DATE NOT NULL,
  `NationalID` VARCHAR(13) NOT NULL,
  `PhoneNumber` VARCHAR(10) NOT NULL,
  `job` VARCHAR(45) NOT NULL,
  `salary` INT NOT NULL,
  `idBranchTent` INT NOT NULL,
  PRIMARY KEY (`idStaff`),
  UNIQUE INDEX `NationalID_UNIQUE` (`NationalID` ASC) VISIBLE,
  INDEX `fk_Staff_VehicleTents1_idx` (`idBranchTent` ASC) VISIBLE,
  CONSTRAINT `fk_Staff_VehicleTents1`
    FOREIGN KEY (`idBranchTent`)
    REFERENCES `mydb`.`BranchTents` (`idBranchTent`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `idOrder` INT NOT NULL,
  `PurchaseDate` DATE NOT NULL,
  `PaymentMethod` ENUM('CashTranfer', 'PayCash', 'Installment') NOT NULL,
  `PaymentAmount` INT NOT NULL,
  `LoanNumber` VARCHAR(15) NULL DEFAULT NULL,
  `idStaff` INT NOT NULL,
  `IDBuyer` INT NOT NULL,
  `IdCar` INT NOT NULL,
  `BookingCarID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  UNIQUE INDEX `LoanNumber_UNIQUE` (`LoanNumber` ASC) VISIBLE,
  INDEX `fk_Order_Staff1_idx` (`idStaff` ASC) VISIBLE,
  INDEX `fk_Order_Buyer1_idx` (`IDBuyer` ASC) VISIBLE,
  INDEX `fk_Order_Car1_idx` (`IdCar` ASC) VISIBLE,
  INDEX `fk_Order_BookingCar1_idx` (`BookingCarID` ASC) VISIBLE,
  CONSTRAINT `fk_Order_BookingCar1`
    FOREIGN KEY (`BookingCarID`)
    REFERENCES `mydb`.`BookingCar` (`BookingCarID`),
  CONSTRAINT `fk_Order_Buyer1`
    FOREIGN KEY (`IDBuyer`)
    REFERENCES `mydb`.`Buyer` (`BuyerID`),
  CONSTRAINT `fk_Order_Car1`
    FOREIGN KEY (`IdCar`)
    REFERENCES `mydb`.`Car` (`IdCar`),
  CONSTRAINT `fk_Order_Staff1`
    FOREIGN KEY (`idStaff`)
    REFERENCES `mydb`.`Staff` (`idStaff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`CarSaleContract`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CarSaleContract` (
  `idCSC` INT NOT NULL,
  `Path` VARCHAR(45) NOT NULL,
  `SignDate` DATE NOT NULL,
  `idOrder` INT NOT NULL,
  PRIMARY KEY (`idCSC`),
  INDEX `fk_CarSaleContract_Order1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_CarSaleContract_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `mydb`.`Order` (`idOrder`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`InsuranceCompany`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`InsuranceCompany` (
  `idCompany` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCompany`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`Insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Insurance` (
  `idInsurance` INT NOT NULL,
  `Path` VARCHAR(45) NOT NULL,
  `SignDate` DATE NOT NULL,
  `IdCar` INT NOT NULL,
  `idCompany` INT NOT NULL,
  PRIMARY KEY (`idInsurance`),
  INDEX `fk_Insurance_Car1_idx` (`IdCar` ASC) VISIBLE,
  INDEX `fk_Insurance_InsuranceCompany1_idx` (`idCompany` ASC) VISIBLE,
  CONSTRAINT `fk_Insurance_Car1`
    FOREIGN KEY (`IdCar`)
    REFERENCES `mydb`.`Car` (`IdCar`),
  CONSTRAINT `fk_Insurance_InsuranceCompany1`
    FOREIGN KEY (`idCompany`)
    REFERENCES `mydb`.`InsuranceCompany` (`idCompany`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`PowerOfAttorney`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PowerOfAttorney` (
  `idPOA` INT NOT NULL,
  `SignPOADate` DATE NOT NULL,
  `Path` VARCHAR(45) NOT NULL,
  `IdCar` INT NOT NULL,
  PRIMARY KEY (`idPOA`),
  INDEX `fk_PowerOfAttorney_Car1_idx` (`IdCar` ASC) VISIBLE,
  CONSTRAINT `fk_PowerOfAttorney_Car1`
    FOREIGN KEY (`IdCar`)
    REFERENCES `mydb`.`Car` (`IdCar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`ReviewStaff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ReviewStaff` (
  `idReviewStaff` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Score` ENUM('0', '1', '2', '3', '4', '5') NOT NULL,
  `Detail` VARCHAR(100) NULL DEFAULT NULL,
  `staffReviewed` INT NOT NULL,
  `BuyerID` INT NOT NULL,
  `idOrder` INT NOT NULL,
  PRIMARY KEY (`idReviewStaff`),
  INDEX `fk_ReviewStaff_Staff1_idx` (`staffReviewed` ASC) VISIBLE,
  INDEX `fk_ReviewStaff_Buyer1_idx` (`BuyerID` ASC) VISIBLE,
  INDEX `fk_ReviewStaff_Order1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_ReviewStaff_Buyer1`
    FOREIGN KEY (`BuyerID`)
    REFERENCES `mydb`.`Buyer` (`BuyerID`),
  CONSTRAINT `fk_ReviewStaff_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `mydb`.`Order` (`idOrder`),
  CONSTRAINT `fk_ReviewStaff_Staff1`
    FOREIGN KEY (`staffReviewed`)
    REFERENCES `mydb`.`Staff` (`idStaff`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`VehicleTransferRequestDocument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VehicleTransferRequestDocument` (
  `idVTRD` INT NOT NULL,
  `Path` VARCHAR(45) NOT NULL,
  `SignDate` DATE NOT NULL,
  `idOrder` INT NOT NULL,
  PRIMARY KEY (`idVTRD`),
  INDEX `fk_VTRD_Order1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_VTRD_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `mydb`.`Order` (`idOrder`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`historyBranchStaff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`historyBranchStaff` (
  `idHBS` INT NOT NULL,
  `RelocateDate` DATE NOT NULL,
  `oldJob` VARCHAR(45) NOT NULL,
  `idStaff` INT NOT NULL,
  `oldBranchid` INT NOT NULL,
  PRIMARY KEY (`idHBS`),
  INDEX `fk_OlderBranch_Staff1_idx` (`idStaff` ASC) VISIBLE,
  INDEX `fk_historyBranchStaff_BranchTents1_idx` (`oldBranchid` ASC) VISIBLE,
  CONSTRAINT `fk_OlderBranch_Staff1`
    FOREIGN KEY (`idStaff`)
    REFERENCES `mydb`.`Staff` (`idStaff`),
  CONSTRAINT `fk_historyBranchStaff_BranchTents1`
    FOREIGN KEY (`oldBranchid`)
    REFERENCES `mydb`.`BranchTents` (`idBranchTent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
