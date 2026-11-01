SELECT 
CONCAT(FirstName, ' ',LastName) AS full_name,
City,
Email
FROM chinook.customer

UNION ALL 
SELECT 
CONCAT(FirstName, ' ',LastName) AS full_name,
City,
Email
FROM chinook.employee
ORDER BY full_name;
