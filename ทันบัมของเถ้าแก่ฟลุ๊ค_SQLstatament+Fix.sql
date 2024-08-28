-- ข้อมูลของลูกค้าที่มีการจองรถและข้อมูลของแบรนด์รถ:
SELECT b.firstname, b.lastname,c.brand, bc.BookingDate, bc.earnestMoney,c.idcar
FROM Buyer b
JOIN BookingCar bc ON b.BuyerID = bc.BuyerID join Car c on c.IdCar = bc.IdCar;

-- รายการการสั่งซื้อรถทั้งหมดที่มีการชำระเป็นเงินสด:
SELECT o.idOrder, o.PurchaseDate, o.PaymentMethod, o.PaymentAmount
FROM `Order` o
WHERE o.PaymentMethod = 'PayCash';

-- ข้อมูลของพนักงานและสาขาที่ทำงานอยู่:
SELECT s.firstname, s.lastname, s.job, bt.name AS branch_name
FROM Staff s
JOIN BranchTents bt ON s.idBranchTent = bt.idBranchTent;

-- ข้อมูลค่าเฉลี่ยคะแนนของ staff ที่ถูกรีวิว:
SELECT s.idStaff,s.firstname,s.lastname,s.job,avg(rs.Score) AS AVGreview
FROM ReviewStaff rs
JOIN mydb.Order o ON o.idOrder = rs.idOrder 
join Staff s on s.idStaff = o.idStaff
GROUP BY o.idStaff;

-- ข้อมูลของรถและบริษัทประกันที่เกี่ยวข้อง:
SELECT c.brand, i.name AS insurance_company
FROM Car c
JOIN Insurance ins ON c.IdCar = ins.IdCar
JOIN InsuranceCompany i ON ins.idCompany = i.idCompany;

-- รายการประวัติการโอนรถทั้งหมด:
SELECT vtrd.idVTRD, vtrd.SignDate, o.PurchaseDate, b.firstname, b.lastname
FROM VehicleTransferRequestDocument vtrd
JOIN `Order` o ON vtrd.idOrder = o.idOrder
JOIN Buyer b ON o.IDBuyer = b.BuyerID;

-- ข้อมูลของรถและสัญญาการขายรถที่เกี่ยวข้อง:
SELECT c.brand, c.SellPrice, c.Type, c.ChassisNumber, c.buyDate, c.VRB, csc.Path AS sale_contract
FROM Car c
JOIN CarSaleContract csc ON c.idCar = csc.idOrder;

-- รายการที่มีการเปลี่ยนแปลงตำแหน่งงานของพนักงาน:
SELECT hbs.RelocateDate, s.firstname, s.lastname, s.job, bt.name AS old_branch
FROM historyBranchStaff hbs
JOIN Staff s ON hbs.idStaff = s.idStaff
JOIN BranchTents bt ON hbs.OldBranchID = bt.idBranchTent;



-- querry ราคาขายรวม order สำหรับรถในแต่ละแบรนด์ที่ขายได้
SELECT c.brand,bt.name, SUM(o.PaymentAmount) AS total_sales_price
FROM BranchTents bt
JOIN Staff s ON bt.idBranchTent = s.idBranchTent
JOIN `Order` o ON s.idStaff = o.idStaff
join car c on c.IdCar = o.idcar
GROUP BY c.brand,bt.name with rollup;

-- ชุดลบรถที่ยังไม่ถูกขาย
delete insurance
from insurance
where IdCar = 5;
delete powerofattorney
from powerofattorney
where IdCar = 5;
delete car
from car 
where status = 'NotSold' and IdCar = 5;


-- ชุดเพิ่มรถลงไปใน order
UPDATE Car
SET status = 'sold'
WHERE IdCar = 7 && status = 'NotSold';
INSERT INTO `mydb`.`Order` (`idOrder`, `PurchaseDate`, `PaymentMethod`, `PaymentAmount`, `LoanNumber`, `idStaff`, `IDBuyer`, `IdCar`, `BookingCarID`) 
VALUES (32, '2021-01-01', 'CashTranfer', 50000, NULL, 258, 258, 7, null);