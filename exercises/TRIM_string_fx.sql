--LTRIM eliminates leading spaces
--RTRIM eliminates trailing spaces
--TRIM eliminates leading and trailing spaces


SELECT 
	CustomerId,
	FirstName,
    LastName,
    Email,
    TRIM(Email) AS Trimmed_emails
    
FROM chinook.customer;
