-- Use a substring function and a case conversion function to extract and format the city code
--extract first 3 characters as city code

SELECT 
	CustomerId,
	FirstName,
    LastName,
    City,
    LOWER(LEFT(City, 3)) AS City_code
FROM 
	chinook.customer;
