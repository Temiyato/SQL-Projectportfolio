

-- THIS PROJECT IS TO DEMONSTRATE MY COMPETENCY IN SQL CODING AS AN ENTRY LEVEL USER USING THE CHINOOK DATASET


-- (1) WHAT IS THE TOTAL NUMBERS OF CUSTOMERS IN ALL STATES

select country,count (*) as counts from Customer 
group by Country 
order by country ;


-- (2) FIND ALL THE INVOICE FROM THE BILLING CITY OF BANGALORE,BERLIN,LONDON,PARIS AND PRAGUE

select * from invoice 
where BillingCity in ('Bangalore','Berlin','London','paris','Prague');


-- (3) FIND THE UNIQUE NAMES OF ALL COMPOSERS WITHOUT RETURNING THE NULL VALUES

select distinct Composer from  Track where Composer is not null;


-- (4) WHAT IS THE TOTAL NUMBERS OF INVOICES AND THE SUM GENERATED WHERE TOTAL IS BETWEEN 2 AND 8

select count(*) as counted_invoice, SUM(Total) as totalinvoice  from Invoice where Total between 2 and 8;


--- (5) Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

select CONCAT(firstname, ' ', lastname) as fullnames, CustomerID, country from Customer WHERE  NOT COUNTRY = 'US'; 


--- (6) Provide a query only showing the Customers from Brazil.

select * from Customer where country = 'Brazil';

--- (7) Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select CONCAT(firstname, ' ', lastname) as fullname, I.InvoiceId, InvoiceDate, BillingCountry from Customer C join Invoice I 
on C.CustomerId = I.CustomerId;


--- (8) 