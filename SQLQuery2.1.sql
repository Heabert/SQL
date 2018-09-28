T2, Q#1

use Task2;


create view Client as select * from Customers;
create view OrderDetails as select * from [Order Details];
create view Orders as select * from Orders;

create view Customer3 as select Client.CompanyName, Client.Address, Orders.OrderID from Client
inner join Orders on Client.CustomerID=Orders.CustomerID;

select * from Customer3;

create view Task1 as select Client.CompanyName as 'Company Name', Client.Address as 'Address', Orders.UnitPrice from Client
inner join Orders on Client.OrderID=Orders.OrderID;

select * from Task1;

select Customers.[CompanyName] as 'Company Name', Customers.Address as 'Address', count(Customers.[CompanyName]) as 'Order Count' from Customers group by Customers.[CompanyName], Customers.Address;


T2, Q#3 
use Task2

create view Customers1 as select Client.CompanyName as 'Company Name', Client.Address as 'Address', Client.city as 'City', Orders.OrderDate as 'Order Date' from Client
inner join Orders on Client.CustomerID=Orders.CustomerID;

select * from Customers1;

--T2, Q#4
select * from Customers where City='London';

--T2, Q#5
select * from Products;

create procedure ProductSearch @product_by_ID nvarchar(50) as
select * from Products where ProductID = @product_by_ID go;

exec ProductSearch @product_by_ID="12";

--T2, Q#6 Parth is the man--


--T2, Q#7
use Task2;

select * from Customers;
create nonclustered index ix_CustomerID on Customers (CustomerID asc);
select * from Customers;

select * from Customers;
create clustered index ix_CompanyName on Customers (CompanyName asc);
select * from Customers;

--T2 Q#8,
--Suitable fields you can implement full text searching as: CompanyName, ContactName, Contact Title, Address--