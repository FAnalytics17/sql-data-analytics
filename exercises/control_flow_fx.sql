-- used control flow function CASE to find skill levels of employees based on their age


SELECT 
EmployeeID,
LastName,
CAST(HireDate AS DATE) AS Dob,
ABS(DATEDIFF(HireDate, NOW())) AS days_alive,
ABS(DATEDIFF(HireDate, NOW()))/365 AS years_alive,

CAST((ABS(DATEDIFF(HireDate, NOW()))/365) AS DECIMAL(5,0)) AS age,
CASE
	WHEN (CAST((ABS(DATEDIFF(HireDate, NOW()))/365) AS DECIMAL(5,0))) = 35 THEN 'Senior Analyst'
    WHEN (CAST((ABS(DATEDIFF(HireDate, NOW()))/365) AS DECIMAL(5,0))) = 33 THEN 'Junior Analyst'
    ELSE 'Entry Level'
    END 
		AS skill_level


 FROM northwind.employees;
