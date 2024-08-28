INSERT INTO `mydb`.`registrationdocuments`
(`idRD`,
`RegistrationDate`,
`RegistDate`,
`path`)
VALUES
(1, '2022-01-01', '2023-01-15', 'path1'),
(2, '2022-02-01', '2023-02-15', 'path2'),
(3, '2022-03-01', '2023-03-15', 'path3'),
(4, '2022-04-01', '2023-04-15', 'path4'),
(5, '2022-05-01', '2023-05-15', 'path5');

INSERT INTO `mydb`.`RegistrationDocuments` (`idRD`, `RegistrationDate`, `RegistDate`, `path`)
VALUES (259, '2023-11-26', '2023-11-26', '/path/to/document1.pdf');

INSERT INTO `mydb`.`AdminService` (`idAdminService`, `firstname`, `lastname`, `PhoneNumber`, `address`, `NationalID`)
VALUES 
    (1, 'John', 'Doe', '0891234567', '123 Main Street','1234567890123'),
    (2, 'Jane', 'Smith', '0877654321', '456 Elm Street', '2345678901234'),
    (3, 'David', 'Johnson', '0812345678', '789 Oak Street', '3456789012345'),
    (4, 'Emily', 'Williams', '0866543217', '321 Pine Street', '4567890123456'),
    (5, 'Michael', 'Brown', '0898765432', '654 Maple Street', '5678901234567'),
    (6, 'Sophia', 'Miller', '0832109876', '987 Cedar Street', '6789012345678'),
    (7, 'Daniel', 'Wilson', '0823456789', '159 Birch Street',  '7890123456789'),
    (8, 'Olivia', 'Moore', '0845678901', '357 Walnut Street','8901234567890'),
    (9, 'James', 'Taylor', '0889012345', '852 Sycamore Street', '9012345678901'),
    (10, 'Ava', 'Anderson', '0854321098', '246 Cedar Street','0123456789012');
    
INSERT INTO `mydb`.`brandowner`
(`idBrandOwner`,
`firstname`,
`lastname`,
`PhoneNumber`,
`address`,
`NationalID`)
VALUES
(1, 'Johney', 'Doeny', '0458961759', '891 Main Street', 'u249367451289'),
(258, 'John', 'Doe', '0123456789', '123 Main St', '1234567890123');


INSERT INTO `mydb`.`BrandTents` (`idBrandTents`, `BrandName`, `idBrandOwner`, `idAdminService`,`idRD`) value
(1,'Rodsing',1,1,1),
(268, 'AutoShadeHub', 258, 8,259);

INSERT INTO `mydb`.`branchtents`
(`idBranchTent`,
`name`,
`address`,
`idBrandTents`)
VALUES
(1,'Rodhair','7189 Cedar Lane',1),
(2,'Yokroar','6514 Elm Street',1),
(3,'Tuktuk','9817 Birch Avenue',1),
(258, 'Branch1', '123 Branch St', 268),
(259, 'Branch2', '456 Branch St', 268),
(260, 'Branch3', '789 Branch St', 268);

INSERT INTO `mydb`.`staff`
(`idStaff`,
`firstname`,
`lastname`,
`gender`,
`DateOfBirth`,
`NationalID`,
`PhoneNumber`,
`job`,
`salary`,
`idBranchTent`)
VALUES
(1, 'Alice', 'Johnson', 'F', '1990-03-15', 'A123456015789', '0365553412', 'Manager', 50000, 1),
(2, 'Bob', 'Smith', 'M', '1985-05-20', 'D098746546321', '0685503678', 'Salesperson', 30000, 1),
(3, 'Charlie', 'Williams', 'M', '1992-08-10', 'G655436241987', '0269555987', 'Accountant', 40000, 1),
(4, 'Diana', 'Brown', 'F', '1988-03-25', 'J123456857893', '0155032697', 'Salesperson', 35000, 2),
(5, 'Ethan', 'Miller', 'M', '1995-12-03', 'O987026654321', '0255587602', 'Accountant', 42000, 2),
(6, 'Fiona', 'Martin', 'F', '1993-02-12', 'P456789012345', '0785501496', 'Manager', 45000, 2),
(7, 'George', 'Lee', 'M', '1987-09-18', 'Q987654321234', '0655032021', 'Manager', 55000, 3),
(8, 'Hannah', 'Davis', 'F', '1991-06-30', 'R789012345678', '0975503344', 'Salesperson', 48000, 3),
(9, 'Ian', 'Taylor', 'M', '1986-12-08', 'S654321098765', '0355588777', 'Salesperson', 32000, 3),
(258, 'John', 'Doe', 'M', '1990-05-15', '1234567890123', '0812345678', 'Salesperson', 50000, 258),
(259, 'Jane', 'Smith', 'F', '1992-08-20', '2345678901234', '0823456789', 'Salesperson', 35000, 259),
(260, 'Alice', 'Johnson', 'F', '1995-03-10', '3456789012345', '0834567890', 'Salesperson', 30000, 260),
(261, 'Bob', 'Williams', 'M', '1988-11-25', '4567890123456', '0845678901', 'Salesperson', 40000, 258),
(262, 'Eva', 'Brown', 'F', '1991-07-05', '5678901234567', '0856789012', 'Salesperson', 32000, 259),
(263, 'Michael', 'Garcia', 'M', '1989-09-18', '6789012345678', '0867890123', 'Salesperson', 28000, 260),
(264, 'Sophia', 'Martinez', 'F', '1993-12-30', '7890123456789', '0878901234', 'Security', 38000, 258),
(265, 'Liam', 'Robinson', 'M', '1994-04-22', '8901234567890', '0889012345', 'Receptionist', 33000, 259),
(266, 'Olivia', 'Lee', 'F', '1996-02-14', '9012345678901', '0890123456', 'Driver', 30000, 260),
(267, 'Noah', 'Wang', 'M', '1997-10-08', '123456789012', '0901234567', 'Cleaner', 29000, 258),
(268, 'Ava', 'Gonzalez', 'F', '1998-06-29', '234567890123', '0912345678', 'Supervisor', 42000, 259),
(269, 'William', 'Liu', 'M', '1990-03-17', '345678901234', '0923456789', 'Manager', 50000, 260),
(270, 'Mia', 'Patel', 'F', '1991-01-01', '456789012345', '0934567890', 'Salesperson', 35000, 258),
(271, 'James', 'Kim', 'M', '1993-09-30', '567890123456', '0945678901', 'Technician', 40000, 259),
(272, 'Charlotte', 'Nguyen', 'F', '1995-07-20', '678901234567', '0956789012', 'Assistant', 30000, 260);

INSERT INTO `mydb`.`Buyer` (`BuyerID`, `firstname`, `lastname`, `DateOfBirth`, `address`, `PhoneNumber`, `NationalID`) 
VALUES 
(258, 'Somchai', 'Phuket', '1990-05-15', '123 Main St', '0812345678', '1234567890123'),
(259, 'Somsri', 'Bangkok', '1992-08-20', '456 Elm St', '0823456789', '2345678901234'),
(260, 'Narong', 'Pattaya', '1995-03-10', '789 Oak St', '0834567890', '3456789012345'),
(261, 'Wanida', 'Chiangmai', '1988-11-25', '101 Pine St', '0845678901', '4567890123456'),
(262, 'Chutima', 'Krabi', '1991-07-05', '222 Cedar St', '0856789012', '5678901234567'),
(263, 'Kasem', 'Nakhonratchasima', '1989-09-18', '333 Maple St', '0867890123', '6789012345678'),
(264, 'Supatra', 'Phuket', '1993-12-30', '444 Walnut St', '0878901234', '7890123456789'),
(265, 'Prasert', 'UdonThani', '1994-04-22', '555 Birch St', '0889012345', '8901234567890'),
(1456, 'Johna', 'Den', '1990-01-15', '6546 Main Street', '0425639728', 'q123123456789'),
(2463, 'Janee', 'Smoth', '1985-05-20', '4546 Oak Avenue', '0312365945', 'q123987654321'),
(3145, 'Miken', 'Johnsen', '1992-08-10', '7689 Pine Drive', '0125748639', 'q123654321987'),
(4145, 'Saran', 'Williums', '1988-03-25', '3217 Cedar Lane', '0236548935', 'J123123456789'),
(5012, 'Davidi', 'Brawn', '1995-12-03', '6254 Elm Street', '0235558765', 'M0012O9876543');

INSERT INTO `mydb`.`historyBranchStaff` (`idHBS`, `RelocateDate`, `oldJob`, `idStaff`, `OldBranchid`)
VALUES 
(1,'2020-05-16','Salesperson',6,1),
(2,'2020-03-14','Salesperson',7,1),
(3, '2023-01-15', 'Manager', 258, 258),
(4, '2023-02-20', 'Salesperson', 259, 259);

INSERT INTO `mydb`.`previousowner`
(`OwnerID`,
`firstname`,
`lastname`,
`PhoneNumber`,
`address`,
`PreviousOwnerLog`,
`NationalID`)
VALUES
(1, 'Alex', 'Johnson', '2013658964', '1232 Main Street', 'No previous owners', 'A123452678912'),
(2, 'Emily', 'Smith', '1203584935', '4526 Oak Avenue', '1 previous owner', 'D987654321356'),
(3, 'Ryan', 'Williams', '0123659785', '7289 Pine Drive', '2 previous owners', 'I654321902387'),
(4, 'Olivia', 'Brown', '0134584321', '3221 Cedar Lane', 'No previous owners', 'L123456789015'),
(5, 'Mason', 'Jones', '0123488765', '6524 Elm Street', '1 previous owner', 'O987654321036'),
(6, 'Emma', 'Davis', '0364711113', '9827 Maple Avenue', '3 previous owners', 'R123456789045'),
(7, 'Ethan', 'Miller', '0123682222', '6524 Birch Lane', 'No previous owners', 'U987654320591'),
(8, 'Ava', 'Wilson', '0563299333', '7829 Cedar Street', '2 previous owners', 'X123456780369'),
(9, 'Logan', 'Moore', '0326844444', '3221 Pine Drive', 'No previous owners', 'A987654320151'),
(10, 'Sophia', 'Lee', '0136589955', '4526 Oak Lane', '1 previous owner', 'B123456036789'),
(11, 'Jackson', 'Martin', '0136589566', '2654 Elm Street', 'No previous owners', 'G904887654321'),
(12, 'Madison', 'Hall', '0231565247', '9827 Birch Avenue', '2 previous owners', 'J123453156789'),
(13, 'Liam', 'Brown', '0395245388', '6542 Pine Lane', 'No previous owners', 'M987654306921'),
(14, 'Avery', 'Thompson', '0123653269', '7289 Cedar Drive', '1 previous owner', 'P123456036789'),
(15, 'Owen', 'White', '0136500120', '3221 Elm Street', 'No previous owners', 'Q987654320361');

INSERT INTO `mydb`.`ColorCar` (`idColorCar`, `ColorName`) 
VALUES (1, 'Black'),
       (2, 'White'),
       (3, 'Silver'),
       (4, 'Gray'),
       (5, 'Red'),
       (6, 'Blue'),
       (7, 'Green'),
       (8, 'Yellow'),
       (9, 'Orange'),
       (10, 'Purple'),
       (11, 'Brown'),
       (12, 'Beige'),
       (13, 'Gold'),
       (14, 'Bronze'),
       (15, 'Copper'),
       (16, 'Turquoise'),
       (17, 'Magenta'),
       (18, 'Lime'),
       (19, 'Teal'),
       (20, 'Olive'),
       (21, 'Maroon'),
       (22, 'Navy'),
       (23, 'Indigo'),
       (24, 'Charcoal'),
       (25, 'Ivory'),
       (26, 'Cream'),
       (27, 'Champagne'),
       (28, 'Pearl'),
       (29, 'Metallic Black'),
       (30, 'Metallic White'),
       (31, 'Metallic Silver'),
       (32, 'Metallic Gray'),
       (33, 'Metallic Red'),
       (34, 'Metallic Blue'),
       (35, 'Metallic Green'),
       (36, 'Metallic Yellow'),
       (37, 'Metallic Orange'),
       (38, 'Metallic Purple'),
       (39, 'Metallic Brown'),
       (40, 'Metallic Beige'),
       (41, 'Metallic Gold'),
       (42, 'Metallic Bronze'),
       (43, 'Metallic Copper'),
       (44, 'Metallic Turquoise'),
       (45, 'Metallic Magenta'),
       (46, 'Metallic Lime'),
       (47, 'Metallic Teal'),
       (48, 'Metallic Olive'),
       (49, 'Metallic Maroon'),
       (50, 'Metallic Navy');
    
INSERT INTO `mydb`.`car`
(`IdCar`,
`brand`,
`cost`,
`SellPrice`,
`status`,
`kilometer`,
`CrashLog`,
`OilChangePerKilometer`,
`idBranchTent`,
`OwnerID`,
`Details`,
`CarRegistration`,
`Type`,
`ChassisNumber`,
`buyDate`,
`VRB`,
`idColorCar`)
VALUES
(1,'Toyota', 25000, 30000, 'NotSold', 50000, 'No accidents', 5000, 1, 1, 'Car details 1', 'ABC123', 'Sedan', '123ABC', '2023-01-01', 'VRB123', 1),
(2,'Honda', 20000, 25000, 'NotSold', 40000, 'Minor scratches', 4000, 1, 2, 'Car details 2', 'DEF456', 'SUV', '456DEF', '2023-01-02', 'VRB456', 2),
(3,'Ford', 30000, 35000, 'InProcess', 20000, 'No accidents', 6000, 1, 3, 'Car details 3', 'GHI789', 'Truck', '789GHI', '2023-01-03', 'VRB789', 3),
(4,'Chevrolet', 18000, 20000, 'NotSold', 30000, 'Minor dents', 3000, 1, 4, 'Car details 4', 'JKL012', 'Hatchback', '012JKL', '2023-01-04', 'VRB012', 5),
(5,'Nissan', 22000, 27000, 'NotSold', 45000, 'Scratches', 4500, 1, 5, 'Car details 5', 'MNO345', 'Sedan', '345MNO', '2023-01-05', 'VRB345', 6),
(6,'BMW', 40000, 45000, 'Sold', 15000, 'No accidents', 7000, 2, 6, 'Car details 6', 'PQR678', 'Coupe', '678PQR', '2023-01-06', 'VRB678', 10),
(7,'Mercedes', 35000, 40000, 'NotSold', 25000, 'Minor scratches', 5500, 2, 7, 'Car details 7', 'STU901', 'SUV', '901STU', '2023-01-07', 'VRB901', 1),
(8,'Audi', 28000, 32000, 'NotSold', 35000, 'Minor dents', 3500, 2, 8, 'Car details 8', 'VWX234', 'Convertible', '234VWX', '2023-01-08', 'VRB234', 2),
(9,'Hyundai', 21000, 24000, 'Sold', 30000, 'Scratches', 3000, 2, 9, 'Car details 9', 'YZA567', 'Hatchback', '567YZA', '2023-01-09', 'VRB567', 3),
(10,'Kia', 26000, 30000, 'NotSold', 20000, 'No accidents', 4000, 2, 10, 'Car details 10', 'BCD890', 'Truck', '890BCD', '2023-01-10', 'VRB890', 5),
(11, 'Toyota', 25000, 30000, 'InProcess', 50000, 'No accidents', 5000, 3, 11, 'Car details 11', 'ABC456', 'SUV', '456ABC', '2023-03-25', 'VRB456', 6),
(12, 'Honda', 20000, 25000, 'NotSold', 40000, 'Minor scratches', 4000, 3, 12, 'Car details 12', 'DEF789', 'Hatchback', '789DEF', '2023-03-26', 'VRB789', 10),
(13, 'Ford', 30000, 35000, 'NotSold', 20000, 'No accidents', 6000, 3, 13, 'Car details 13', 'GHI012', 'Sedan', '012GHI', '2023-03-27', 'VRB012', 1),
(14, 'Chevrolet', 18000, 20000, 'Sold', 30000, 'Minor dents', 3000, 3, 14, 'Car details 14', 'JKL345', 'Truck', '345JKL', '2023-03-28', 'VRB345', 2),
(15, 'Nissan', 22000, 27000, 'NotSold', 45000, 'Scratches', 4500, 3, 15, 'Car details 15', 'MNO678', 'Convertible', '678MNO', '2023-03-29', 'VRB678', 3),
(16, 'Toyota', 20000, 25000, 'sold', 50000, 'No accidents', 10000, 258, 1, 'Good condition', 'ABC123', 'Sedan', '152730946', '2021-01-01', 'VRB123', 1),
(17, 'Honda', 15000, 18000, 'InProcess', 30000, 'Minor scratches on the side', 8000, 259, 2, 'Needs new tires', 'DEF456', 'SUV', '823109764', '2021-02-01', 'VRB456', 2),
(18, 'Ford', 18000, 20000, 'NotSold', 40000, 'No accidents', 9000, 260, 3, 'Low mileage', 'GHI789', 'Hatchback', '372016589', '2021-03-01', 'VRB789', 3),
(19, 'Chevrolet', 22000, 28000, 'sold', 60000, 'Minor dent on the hood', 12000, 258, 4, 'Great sound system', 'JKL012', 'Coupe', '429015763', '2021-04-01', 'VRB012', 4),
       (20, 'Nissan', 12000, 15000, 'InProcess', 25000, 'No accidents', 7000, 259, 5, 'Needs new brakes', 'MNO345', 'Sedan', '082316579', '2021-05-01', 'VRB345', 5),
       (21, 'Toyota', 19000, 23000, 'NotSold', 35000, 'Minor scratches on the side', 10000, 260, 6, 'Good condition', 'PQR678', 'SUV', '921054683', '2021-06-01', 'VRB678', 6),
       (22, 'Honda', 17000, 20000, 'sold', 45000, 'No accidents', 8000, 258, 7, 'Low mileage', 'STU901', 'Hatchback', '751092463', '2021-07-01', 'VRB901', 7),
       (23, 'Ford', 21000, 26000, 'InProcess', 55000, 'Minor dent on the hood', 11000, 259, 8, 'Great sound system', 'VWX234', 'Coupe', '263015879', '2021-08-01', 'VRB234', 8),
       (24, 'Chevrolet', 24000, 30000, 'NotSold', 65000, 'No accidents', 13000, 260, 9, 'Needs new tires', 'YZA567', 'Sedan', '410953276', '2021-09-01', 'VRB567', 9),
       (25, 'Nissan', 13000, 16000, 'sold', 30000, 'Minor scratches on the side', 9000, 258, 10, 'Good condition', 'BCD890', 'SUV', '803219765', '2021-10-01', 'VRB890', 10),
       (26, 'Toyota', 18000, 22000, 'InProcess', 40000, 'No accidents', 10000, 259, 11, 'Low mileage', 'EFG123', 'Hatchback', '621054389', '2021-11-01', 'VRB123', 11),
       (27, 'Honda', 16000, 19000, 'NotSold', 50000, 'Minor dent on the hood', 9000, 260, 12, 'Great sound system', 'HIJ456', 'Coupe', '972105463', '2021-12-01', 'VRB456', 12),
       (28, 'Ford', 20000, 25000, 'sold', 60000, 'No accidents', 12000, 258, 13, 'Needs new brakes', 'KLM789', 'Sedan', '351092468', '2022-01-01', 'VRB789', 13),
       (29, 'Chevrolet', 23000, 29000, 'InProcess', 35000, 'Minor scratches on the side', 11000, 259, 14, 'Good condition', 'NOP012', 'SUV', '420156798', '2022-02-01', 'VRB012', 14),
       (30, 'Nissan', 14000, 17000, 'NotSold', 45000, 'No accidents', 8000, 260, 15, 'Low mileage', 'QRS345', 'Hatchback', '132095764', '2022-03-01', 'VRB345', 15);
       
INSERT INTO `mydb`.`bookingcar`
(`BookingCarID`,
`earnestMoney`,
`BookingDate`,
`BuyerID`,
`IdCar`)
VALUES
(1, 5000, '2023-02-09', 4145, 3),
(2, 4000, '2023-02-10', 5012, 11),
(3,0, '2023-02-09', 4145, 6),
(4,0, '2023-02-10', 1456, 9),
(5,0, '2023-02-10', 2463, 14),
(16, 5000, '2021-01-01', 258, 16),
(17, 6000, '2021-02-01', 259, 17),
(18, 7000, '2021-03-01', 260, 18),
(19, 8000, '2021-04-01', 261, 19),
(20, 9000, '2021-05-01', 262, 20),
(21, 10000, '2021-06-01', 263, 21),
(22, 11000, '2021-07-01', 264, 22),
(23, 12000, '2021-08-01', 265, 23),
       (24, 13000, '2021-09-01', 258, 24),
       (25, 14000, '2021-10-01', 259, 25),
       (26, 15000, '2021-11-01', 260, 26),
       (27, 16000, '2021-12-01', 261, 27),
       (28, 17000, '2022-01-01', 262, 28),
       (29, 18000, '2022-02-01', 263, 29),
       (30, 19000, '2022-03-01', 264, 30);
       

INSERT INTO `mydb`.`PowerOfAttorney` (`idPOA`, `SignPOADate`, `Path`, `IdCar`)
VALUES
(1, '2023-01-01', 'path1', 1),
(2, '2023-01-02', 'path2', 2),
(3, '2023-01-03', 'path3', 3),
(4, '2023-01-04', 'path4', 4),
(5, '2023-01-05', 'path5', 5),
(6, '2023-01-06', 'path6', 6),
(7, '2023-01-07', 'path7', 7),
(8, '2023-01-08', 'path8', 8),
(9, '2023-01-09', 'path9', 9),
(10, '2023-01-10', 'path10', 10),
(11, '2023-03-25', 'path11', 11),
(12, '2023-03-26', 'path12', 12),
(13, '2023-03-27', 'path13', 13),
(14, '2023-03-28', 'path14', 14),
(15, '2023-03-29', 'path15', 15),
(16, '2023-01-10', 'path10', 16),
(17, '2023-03-25', 'path11', 17),
(18, '2023-03-26', 'path12', 18),
(19, '2023-03-27', 'path13', 19),
(20, '2023-03-28', 'path14', 20),
(21, '2023-03-29', 'path15', 21),
(22, '2023-03-29', 'path15', 22),
(23, '2023-03-28', 'path14', 23),
(24, '2023-03-29', 'path15', 24),
(25, '2023-03-28', 'path14', 25),
(26, '2023-03-29', 'path15', 26),
(27, '2023-03-29', 'path15', 27),
(28, '2023-03-29', 'path15', 28),
(29, '2023-03-29', 'path15', 29),
(30, '2023-03-29', 'path15', 30);




INSERT INTO `mydb`.`Order` (`idOrder`, `PurchaseDate`, `PaymentMethod`, `PaymentAmount`, `LoanNumber`, `idStaff`, `IDBuyer`, `IdCar`, `BookingCarID`) 
VALUES 	
(1, '2023-02-09', 'Installment', 45000, 'L123456789', 2, 4145, 6, 3),
(2, '2023-02-10', 'Installment', 24000, 'K136987265', 2, 1456, 9, 4),
(3, '2023-02-10', 'Installment', 20000, 'M987654321', 4, 2463, 14, 5),
(4, '2023-02-15', 'Installment', 35000, 'N123456789', 4, 4145, 3, 1),
(5, '2023-02-19', 'Installment', 30000, 'G048935417', 9, 5012, 11, 2),
		(16, '2021-01-01', 'CashTranfer', 50000, NULL, 258, 258, 16, 16),
       (17, '2021-02-01', 'PayCash', 60000, NULL, 259, 259, 17, 17),
       (18, '2021-03-01', 'Installment', 70000, '123456', 260, 260, 18, 18),
       (19, '2021-04-01', 'CashTranfer', 80000, NULL, 261, 261, 19, 19),
       (20, '2021-05-01', 'PayCash', 90000, NULL, 262, 262, 20, 20),
       (21, '2021-06-01', 'Installment', 100000, '234567', 263, 263, 21, 21),
       (22, '2021-07-01', 'CashTranfer', 110000, NULL, 264, 264, 22, 22),
       (23, '2021-08-01', 'PayCash', 120000, NULL, 265, 265, 23, 23),
       (24, '2021-09-01', 'Installment', 130000, '345678', 258, 258, 24, 24),
       (25, '2021-10-01', 'CashTranfer', 140000, NULL, 259, 259, 25, 25),
       (26, '2021-11-01', 'PayCash', 150000, NULL, 260, 260, 26, 26),
       (27, '2021-12-01', 'Installment', 160000, '456789', 261, 261, 27, 27),
       (28, '2022-01-01', 'CashTranfer', 170000, NULL, 262, 262, 28, 28),
       (29, '2022-02-01', 'PayCash', 180000, NULL, 263, 263, 29, 29),
       (30, '2022-03-01', 'Installment', 190000, '567890', 264, 264, 30, 30);
       
INSERT INTO `mydb`.`reviewstaff`
(`idReviewStaff`,
`Date`,
`Score`,
`Detail`,
`BuyerID`,
`idOrder`)
VALUES
(1, '2023-03-01', 4, 'Excellent service!',  4145,1),
(2, '2023-03-02', 4, 'Good job overall.', 1456,2),
(258, '2021-01-01', '5', 'Excellent service',  258, 16),
(259, '2021-02-01', '4', 'Good communication',  259, 17),
(260, '2021-03-01', '3', 'Average assistance',  260, 18),
(261, '2021-04-01', '2', 'Needs improvement',  261, 19),
(262, '2021-05-01', '1', 'Poor service', 262,  20),
(263, '2021-06-01', '0', 'Terrible experience',  263, 21);

INSERT INTO `mydb`.`carsalecontract`
(`idCSC`,
`Path`,
`SignDate`,
`idOrder`)
VALUES
(1, 'path1', '2023-02-09', 1),
(2, 'path2', '2023-02-10', 2),
(3, 'path3', '2023-02-10', 3),
(4, 'path4', '2023-02-15', 4),
(5, 'path5', '2023-02-19', 5),
(6, 'path6', '2023-02-20', 16),
(7, 'path7', '2023-02-21', 17),
(8, 'path8', '2023-02-21', 18),
(9, 'path9', '2023-02-26', 19),
(10, 'path10', '2023-03-02', 20),
(11, 'path11', '2023-03-05', 21),
(12, 'path12', '2023-03-05', 22),
(13, 'path13', '2023-03-10', 23),
(14, 'path14', '2023-03-13', 24),
(15, 'path15', '2023-03-16', 25),
(16, 'path16', '2023-03-20', 26),
(17, 'path17', '2023-03-21', 27),
(18, 'path18', '2023-03-21', 28),
(19, 'path19', '2023-03-26', 29),
(20, 'path20', '2023-03-30', 30);
 

INSERT INTO `mydb`.`InsuranceCompany` (`idCompany`, `name`)
VALUES 
    (1, 'Muang Thai Insurance'),
    (2, 'Dhipaya Insurance'),
    (3, 'Thanachart Insurance'),
    (4, 'Bangkok Insurance'),
    (5, 'Krungthai Panich Insurance');
   


INSERT INTO `mydb`.`insurance`
(`idInsurance`,
`Path`,
`SignDate`,
`IdCar`,
`idCompany`)
VALUES
(1, 'path1', '2022-11-14', 1, 1),
(2, 'path2', '2022-10-15', 2, 2),
(3, 'path3', '2022-07-16', 3, 3),
(4, 'path4', '2022-09-17', 4, 4),
(5, 'path5', '2022-08-18', 5, 5),
(16, '/documents/insurance_1.pdf', '2021-01-01', 16, 1),
       (17, '/documents/insurance_2.pdf', '2021-02-01', 17, 2),
       (18, '/documents/insurance_3.pdf', '2021-03-01', 18, 3),
       (19, '/documents/insurance_4.pdf', '2021-04-01', 19, 4),
       (20, '/documents/insurance_5.pdf', '2021-05-01', 20, 5),
       (21, '/documents/insurance_6.pdf', '2021-06-01', 21, 1),
       (22, '/documents/insurance_7.pdf', '2021-07-01', 22, 2),
       (23, '/documents/insurance_8.pdf', '2021-08-01', 23, 3),
       (24, '/documents/insurance_9.pdf', '2021-09-01', 24, 4),
       (25, '/documents/insurance_10.pdf', '2021-10-01', 25, 5),
       (26, '/documents/insurance_11.pdf', '2021-11-01', 26, 1),
       (27, '/documents/insurance_12.pdf', '2021-12-01', 27, 2),
       (28, '/documents/insurance_13.pdf', '2022-01-01', 28, 3),
       (29, '/documents/insurance_14.pdf', '2022-02-01', 29, 4),
       (30, '/documents/insurance_15.pdf', '2022-03-01', 30, 5);


INSERT INTO `mydb`.`vehicletransferrequestdocument`
(`idVTRD`,
`Path`,
`SignDate`,
`idOrder`)
VALUES
(1, 'path1', '2023-02-09', 16),
(2, 'path2', '2023-02-10', 17),
(3, 'path3', '2023-02-10', 18),
(4, 'path4', '2023-02-15', 19),
(5, 'path5', '2023-02-19', 20),
(6, 'path5', '2023-02-19', 21),
(7, 'path5', '2023-02-19', 22),
(8, 'path5', '2023-02-19', 23),
(9, 'path5', '2023-02-19', 24),
(10, 'path5', '2023-02-19', 25),
(11, 'path5', '2023-02-19', 26),
(12, 'path5', '2023-02-19', 27),
(13, 'path5', '2023-02-19', 28),
(14, 'path5', '2023-02-19', 29),
(15, 'path5', '2023-02-19', 30),
  (16, '/vtrd/vtrd_1.pdf', '2023-08-15', 1),
  (17, '/vtrd/vtrd_2.pdf', '2023-08-30', 2),
  (18, '/vtrd/vtrd_3.pdf', '2023-09-15', 3),
  (29, '/vtrd/vtrd_4.pdf', '2023-09-30', 4),
  (20, '/vtrd/vtrd_5.pdf', '2023-10-15', 5);

