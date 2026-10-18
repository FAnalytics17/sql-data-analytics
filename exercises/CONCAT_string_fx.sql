-- merge last name and first name
--new column in uppercase

SELECT 
	CustomerId,
	FirstName,
    LastName,
    UPPER(CONCAT(LastName,' ',FirstName)) AS customer_fullName
    
FROM chinook.customer;
