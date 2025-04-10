select * from CUSTOMER,INVOICE,INVOICE_ITEM; 
select LastName,FirstName,Phone from Customer;
select LastName,FirstName,Phone from Customer where FirstName = 'Nikki'; 
select LastName,FirstName,Phone,DateIn,DateOut from customer,invoice where TotalAmount > 100.00;
select LastName, FirstName, Phone from Customer where FirstName like 'B%';
select lastName, FirstName, Phone from Customer where LastName like '%cat%';