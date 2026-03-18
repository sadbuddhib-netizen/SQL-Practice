
Create database Sales_DW;
Create table DimCustomer
(
CustomerID int primary key ,
CustomerAltID varchar(10),
CustomerName varchar(50),
Gender varchar(20)
);
Insert into DimCustomer values ( 1 , 'IMI-001' ,'Henry Ford','M');
Insert into DimCustomer values	( 2, 'IMI-002','Bill Gates','M'),
( 3, 'IMI-003','Muskan Shaikh','F');
Insert into DimCustomer values ( 4, 'IMI-004','Richard Thrubin','M');
Insert into DimCustomer values( 5, 'IMI-005','Emma Wattson','F');
Create table DimProduct
(
ProductKey int primary key ,
ProductAltKey varchar(10),
ProductName varchar(100),
ProductActualCost  real ,
ProductSalesCost  real
);
Insert into DimProduct( ProductKey, ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values
(10, 'ITM-001','Wheat Floor 1kg',5.50,6.50),
(11, 'ITM-002','Rice Grains 1kg',22.50,24),
(12, 'ITM-003','SunFlower Oil 1 ltr',42,43.5),
(13, 'ITM-004','Nirma Soap',18,20),
(14, 'ITM-005','Arial Washing Powder 1kg',135,139);
Create table DimStores
(
StoreID int primary key,
StoreAltID varchar(10),
StoreName varchar(100),
StoreLocation varchar(100),
City varchar(100),
State varchar(100),
Country varchar(100)
); 
Insert into DimStores( storeID, StoreAltID,StoreName,StoreLocation,City,State,Country )values
( 23, 'LOC-A1','X-Mart','S.P. RingRoad','Ahmedabad','Guj','India'),
(24, 'LOC-A2','X-Mart','Maninagar','Ahmedabad','Guj','India'),
( 25, 'LOC-A3','X-Mart','Sivranjani','Ahmedabad','Guj','India');
Create table DimSalesPerson
(
SalesPersonAltID varchar(10),
SalesPersonName varchar(100),
StoreID int,
City varchar(100),
State varchar(100),
Country varchar(100)
);
Insert into DimSalesPerson(SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values
('SP-DMSPR1','Ashish',1,'Ahmedabad','Guj','India'),
('SP-DMSPR2','Ketan',1,'Ahmedabad','Guj','India'),
('SP-DMNGR1','Srinivas',2,'Ahmedabad','Guj','India'),
('SP-DMNGR2','Saad',2,'Ahmedabad','Guj','India'),
('SP-DMSVR1','Jasmin',3,'Ahmedabad','Guj','India'),
('SP-DMSVR2','Jacob',3,'Ahmedabad','Guj','India');
select * from DimSalesPerson;
select * from DimStores;
select * from  DimCustomer;
select customerID from DimCustomer;
select ProductActualCost from DimProduct where ProductActualCost > 30;
select StoreID from DimSalesPerson where StoreID >= 1;
select Gender,CustomerName  from DimCustomer where Gender = 'F';
select ProductName, ProductSalesCost from  DimProduct order by  ProductSalesCost  DESC ;
select ProductName, ProductSalesCost from  DimProduct order by  ProductSalesCost  ASC ;
select CustomerName from DimCustomer order by CustomerName ASC ;
select StoreName,City from DimStores where City = 'Ahmedabad';
 




