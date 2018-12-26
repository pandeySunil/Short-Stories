Create Table Sunil_Pandey_Customer 
(Id int primary key identity(1,1),
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
 Phone nvarchar(20));


Create Table Sunil_Pandey_Order 
(Id int identity(1,1) Primary Key,
Orderdate DateTime,
OrderNumber nvarchar(10),
CustomerId int ,
FOREIGN KEY (CustomerId ) REFERENCES Sunil_Pandey_Customer(Id),TotalAmount decimal(12,2));

Create Table Sunil_Pandey_Supplier 
(Id int primary Key identity(1,1), 
CompanyName nvarchar(40),
ContactName nvarchar(50),
ContactTitle nvarchar(50),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(30),
Fax nvarchar(30));

Create Table sunil_Pandey_Product 
(Id int identity(1,1) primary key ,
ProductName nvarchar(50),
supplierId int FOREIGN KEY(supplierId ) 
REFERENCES Sunil_Pandey_Supplier (Id),
UnitPrice decimal(12,2),Package nvarchar(30),
IsDiscontinued bit );

Create Table Sunil_Pandey_OrderItem 
(Id int identity(1,1) primary key,
OrderId int FOREIGN Key(OrderId)
 REFERENCES Sunil_Pandey_Order(Id),
ProductId int FOREIGN Key(ProductId)
REFERENCES sunil_Pandey_Product(Id),
UnitPrice decimal(12,2),Quantity int);

