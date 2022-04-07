--                  PURPOSE OF THIS PROJECT
--CREATE DATABASE
--CREATE TABLES
--POPULATE THE TABLES WITH VALUES
--SET THE RELATIONSHIP BETWEEN THE TABLES (PRIMARY KEYS AND FOREIGN KEYS) USING SSMS


create database TemiyatoStores;
use TemiyatoStores;

create table Customers(
 customerID int not null,
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 phone_number varchar(20) not null,
 email varchar (50) null
 );

 create table Orders( 
 orderID int not null,
 order_date date not null,
 customerID int not null
 );

 create table Products( 
 productID int not null, 
 description varchar(50) not null, 
 product_price decimal(10,2) not null
 );


 create table Orders_Bought( 
 orderID int not null, 
 productID int not null,
 quantity int not null
 );

 
 insert into Customers( customerID, first_name,last_name,phone_number,email) 
 values (1,'Bola','Tito',09011345945,'BolaTito@gmail.com');
 insert into Customers( customerID, first_name,last_name,phone_number) 
 values (2,'Buhari','Musa',08051356241);
 insert into Customers( customerID, first_name,last_name,phone_number,email) 
 values (3,'Tunji','Hammid',07051545568,'TunjiHamid@ymail.com');
 insert into Customers( customerID, first_name,last_name,phone_number,email) 
 values (4,'Chima','Donatus',090575436000,'Chido@hotmail.com');


 insert into Orders(orderID,order_date,customerID) 
 values (1,'2020/11/05',2);
 insert into Orders(orderID,order_date,customerID) 
 values (2,'2020/11/06',1);
 insert into Orders(orderID,order_date,customerID) 
 values (3,'2020/11/07',2);
 insert into Orders(orderID,order_date,customerID) 
 values (4,'2020/11/08',3);


 insert into Products(productID,description,product_price) 
 values (10456,'Lux beauty soap',45.00);
 insert into Products(productID,description,product_price) 
 values (10478,'Closeup toothpaste',450.00);
 insert into Products(productID,description,product_price) 
 values (10572,'Royco seasoning cube',250.00);
 insert into Products(productID,description,product_price) 
 values (12468,'Omo detergent 2kg',1250.00);


 insert into Orders_Bought(orderID,productID,quantity) 
 values (1,10456,4);
 insert into Orders_Bought(orderID,productID,quantity) 
 values (2,10572,3);
 insert into Orders_Bought(orderID,productID,quantity) 
 values (3,10478,2);
 insert into Orders_Bought(orderID,productID,quantity) 
 values (1,10478,4);


 select * from Customers;
 select * from Orders;
 select * from Orders_Bought;
 select * from Products;

 select concat(first_name,' ',last_name) as fullnames, phone_number from Customers;

 select concat(first_name,' ',last_name) as fullnames,quantity,description,product_price 
 from Customers C 
 JOIN Orders O on c.customerID=O.customerID
 JOIN Orders_Bought B on O.orderID=B.orderID
 join Products P on B.productID=P.productID 
 where product_price >200 
 order by quantity;


 -----THANKS AND GOD BLESS

