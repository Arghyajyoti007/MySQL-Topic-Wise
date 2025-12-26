-- create database customer --

-- TO CREATE TABLE --
/*
create table CustomerDetails 
(
	FirstName varchar(50), 
    LastName varchar(50), 
    Age int
);
*/

-- TO INSERT --
/*
insert into customerdetails (FirstName, LastName, Age)
values ('Arghya',"Samui",20);
insert into customerdetails (FirstName, LastName, Age)
values ('Sayak',"Ghosh",21);
insert into customerdetails (FirstName, LastName, Age)
values ('Michel',"Jordon",30);
insert into customerdetails (FirstName, LastName, Age)
values ('Arpita',"Kundu",40);
*/

-- TO SELECT --
-- SELECT * FROM customer.customerdetails; --
-- select FirstName from customerdetails; --

-- where CLAUSE 
-- select FirstName, LastName, Age from customerdetails where FirstName= "Michel"; 

-- and CLAUSE
-- select FirstName, LastName, Age from customerdetails where FirstName="Michel"  and LastName like "Jordon1";
-- select FirstName, LastName, Age from customerdetails where FirstName="Michel"  and LastName like "Jordon%";
-- select FirstName, LastName, Age from customerdetails where FirstName="Michel"  and LastName like "Jordon_";

-- UPDATE
-- update customerdetails set Age = 20 where FirstName = "Michel" and LastName = "Jordon2";

-- DELETE
-- delete customer.customerdetails from customerdetails; 
-- drop table  customerdetails ;
-- delete from customer.customerdetails where Age = 30;

-- CHANGE TABLE 
/*
alter table customerdetails
add City varchar(50);
update customerdetails 
set City="Noida";
*/
/*alter customerdetails 
set City="Noida"
where FirstName = "Arghya";
update customerdetails 
set City="Kolkata"
where FirstName = "Arpita";
update customerdetails 
set City="Delhi"
where FirstName = "Sayak";
*/

-- ADDING PRIMERY KEY COLUMN
-- Equivalent of Microsoft SQL Server IDENTITY column in MySQL is AUTO_INCREMENT. The IDENTITY in SQL Server acts like AUTO_INCREMENT in MySQL.
/*
create table CustomerDetails 
(
	Id int primary key not null AUTO_INCREMENT, 
	FirstName varchar(50), 
    LastName varchar(50), 
    Age int,
    City varchar (50)
);

insert into CustomerDetails (FirstName, LastName, Age, City)
values ("Arghya","Samui",20,"Noida");
insert into CustomerDetails (FirstName, LastName, Age, City)
values ("Sayak","Ghosh",21,"Delhi");
insert into CustomerDetails (FirstName, LastName, Age, City)
values ("Michel","Jordon",30, "Noida");
insert into CustomerDetails (FirstName, LastName, Age, City)
values ("Arpita","Kundu",40,"Kolkata");
*/

-- PRODUCT TABLE
/*
create table Product
(
	id int primary key Not Null auto_increment,
    ProductName varchar(40)
);

alter table Product
add price float;

insert into product (ProductName, Price) 
values('Base Ball',850.2);
insert into product (ProductName, Price) 
values('Helmet',755.2);
*/

-- ORDER TABLE
/*
create table Orders 
(
OrderId int primary key not null auto_increment,
OrderDate datetime,
CutomerId int,
ProductId int
);

select * from Orders;

select * from product;

select * from customerdetails;

insert into Orders (OrderDate, CutomerId,ProductId) values (current_date(),2,2);
insert into Orders (OrderDate, CutomerId,ProductId) values (current_timestamp(),1,2);
insert into Orders (OrderDate, CutomerId,ProductId) values (current_timestamp(),3,1);
insert into Orders (OrderDate, CutomerId,ProductId) values (current_timestamp(),2,1);
insert into Orders (OrderDate, CutomerId,ProductId) values (current_timestamp(),4,1);
*/


-- FOREIGN KEYS
/*
alter table orders
add foreign key (CutomerId) references customerdetails(Id);

alter table orders
add foreign key (ProductId) references product(Id);
*/

-- JOIN TABLE
/*
SELECT * FROM orders
inner join product on orders.ProductId = product.Id;
*/

-- ALIASING
/*
SELECT * FROM orders as o
inner join product as p on o.ProductId = p.Id;
*/
-- as is a optional word
/*
SELECT * FROM orders o
inner join product p on o.ProductId = p.Id; 
*/
/*
SELECT o.*, p.*, c.*
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id;
*/
/*
SELECT o.OrderDate, p.ProductName, p.price, c.*
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id;
*/

-- FUNCTION AND GROUP BY
/*
SELECT sum(p.price)
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id;
*/
/*
SELECT sum(p.price) as Total
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id;
*/
/*
SELECT sum(p.price) Total
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id;
*/
/*
SELECT c.FirstName, c.LastName, sum(p.price) Total
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id
group by c.FirstName, c.LastName;
*/

/*
SELECT c.City, sum(p.price) Total, avg(p.price) Avarage
FROM orders o
inner join product p on o.ProductId = p.Id
inner join customerdetails c on o.CutomerId = c.Id
group by c.City;
*/






 








