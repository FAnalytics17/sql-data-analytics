SELECT
CONCAT(FirstName, ' ', LastName) AS fullName,
Title
FROM employee
WHERE Title LIKE '%Manager%'
UNION
SELECT
CONCAT(FirstName, ' ', LastName) AS fullName,
Title
FROM employee
WHERE Title LIKE '%IT Staff%'
ORDER BY TITLE;
