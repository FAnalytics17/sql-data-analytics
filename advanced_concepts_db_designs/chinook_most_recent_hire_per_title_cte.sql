--Add CTE with RANK to find most recently hired employee per title

/*Build a CTE that ranks Chinook employees within each Title by HireDate
descending, using RANK() OVER (PARTITION BY Title). Select the rows
ranked 1 to return the most recently hired employee for each job title.*/

WITH
	first_tenure AS (
						SELECT 
						CONCAT(FirstName, ' ', LastName) AS fullName,
						Title,
						CAST(HireDate AS DATE) AS startDate,
						RANK() OVER (
									PARTITION BY Title 
									ORDER BY HireDate DESC) AS Rank_
						FROM chinook.employee)
SELECT 
	fullName,
	Title,	
    Rank_ 
FROM first_tenure
WHERE  Rank_ = 1;
